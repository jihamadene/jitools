
import maya.cmds as cmds
import pymel.core as pm
import maya.mel as mel
from pprint import pprint
import os
import re

#if jTools in jFiles

"""from pathlib import Path

mypath = Path().absolute()
print(mypath)"""


prefixlist=['jnt_','sk_','fk_','clu_','ctrl_','geo_','geom_','jnr_','pasted__','fol_']

####increment
lastNum = re.compile(r'(?:[^\d]*(\d+)[^\d]*)+')

def increment(s):
    """ look for the last sequence of number(s) in a string and increment """
    m = lastNum.search(s)
    if m:
        next = str(int(m.group(1))+1)
        start, end = m.span(1)
        s = s[:max(end-len(next), start)] + next + s[end:]
    return s



def GetHistoryByType(_oObj, _sType):
    aHistory = pm.listHistory(_oObj)
    for pCurHistory in aHistory:
        pCurType = pm.nodeType(pCurHistory)
        if pCurType == _sType:
            return pCurHistory
    return None

def GetSkinCluster(_oObj):
    if _oObj.type() == 'skinCluster':
        return _oObj
    return GetHistoryByType(_oObj, 'skinCluster')



def transfertSkinCluster():
    oOldSelection = pm.selected()
    _oSource=[oOldSelection[0]]
    _oTarget=oOldSelection[1:]
    oJoints = []
    #Check if there a source mesh
    if len(_oSource) < 1:
        pm.displayWarning('You need to have a source mesh')
    elif len(_oTarget) < 1:
        pm.displayWarning('You need to have a target mesh')
    else:
        #Check if there a skinCluster on the mesh. And add joints of the skinCluster to the lists
        try:
            oJoints.extend(pm.skinCluster(_oSource, query=True, influence=True))
        except:
            print "Exception: it doesn't appear to have a skinCluster."
        #Warnings : check if in the lists oJoints there's objects that are not joints
        oJointSkin = []
        for o in oJoints:
            if pm.nodeType(o) == 'joint':
                oJointSkin.append(o)
            else:
                pm.warning("removed the influence of {0} beacuse it's not a joint type object".format(o))

        #Getting skinCluster from the source mesh
        oSkinClusterSource = GetSkinCluster(_oSource[0])

        #Skin the new mesh and copy weight from the source mesh
        for each in _oTarget:
            print each
            pm.select(clear = True)
            pm.select(oJointSkin)
            pm.select(each, add=True)
            oNewSkinCluster = pm.skinCluster(toSelectedBones = True)
            print 'Transfert DONE'
            pm.copySkinWeights(sourceSkin = oSkinClusterSource, destinationSkin = oNewSkinCluster, influenceAssociation = 'oneToOne', noMirror=True)
            print 'copy weight DONE'

    pm.select(oOldSelection)


########### controler for each sel  ##########
def fkThis():
    jntlist=cmds.ls(sl=1)
    for each in jntlist:
        neach='ctrl_'+each
        for prfx in prefixlist:
            if prfx in each:
                neach='ctrl_'+each.replace(prfx,'')
        cmds.circle(n=neach,r=5,nry=0,nrz=0,nrx=1)
        cmds.parent(neach,each,r=1)
        offgroup= neach+'_offset'
        pm.group(em=True,name=(offgroup))
        cmds.parent(offgroup, neach, r=1)
        cmds.parent(offgroup,w=True,a=1)
        cmds.parent(neach,offgroup)
        cmds.parentConstraint(neach,each,mo=1)
        try:
            cmds.parentConstraint(cmds.listRelatives(each,p=1),offgroup,mo=1)
        except Exception:
            pass
        #if cmds.objectType('ikHandle1')==
def offsetgrp():
    selection=cmds.ls(sl=1)
    for each in selection:
        cmds.select(cl=1)
        eachparent=cmds.listRelatives(each,p=1)
        offgrp=cmds.group(em=1, n=each+'_offset2')
        cmds.parent(offgrp,each,r=1)
        cmds.parent(offgrp,eachparent,a=1)
        cmds.parent(each,offgrp,a=1)
####offset
def offset():
    selection = pm.selected()
    for selectedItem in selection:
        offgroup= pm.group(em=True,name=(selectedItem.name()+'_offset'))
        offgroup.setParent(selectedItem, r=True)
        offgroup.setParent(w=True)
        selectedItem.setParent(offgroup)
#####ikThis
def ikThis():
    ikjnts=cmds.ls(sl=1)
    if cmds.objExists('rig')==0:
        cmds.group(em=1,n='rig')
        cmds.setAttr('rig.template',1)
    iksj=ikjnts[0]
    ikee=ikjnts[-1]
    ikgrp=iksj.replace('jnt:','ctrls_ik_')
    if cmds.objExists(ikgrp)==0:
        cmds.group(em=1,n=ikgrp)
    ikh=cmds.ikHandle(sj=iksj,ee=ikee,n=iksj.replace('jnt:','ik_'),sol='ikRPsolver')[0]
    cmds.setAttr(ikh+'.ikBlend',0)
    cmds.parent(ikh,'rig')
    ikjoints=cmds.ikHandle(ikh,q=1, jl=1)
    pvdist=cmds.getAttr(ikjoints[1]+'.tx')
    pvloc=cmds.spaceLocator(n=iksj.replace('jnt:','pv_'),r=1)[0]
    cmds.move(pvdist,pvdist,0)
    cmds.parent(pvloc,iksj,r=1)
    cmds.select(pvloc)
    offset()
    cmds.parentConstraint(iksj,pvloc+'_offset',mo=1)
    cmds.parent(pvloc+'_offset','rig',a=1)
    cmds.setAttr(pvloc+'.template',1)
    cmds.select(pvloc,ikh)
    fkThis()
    #cmds.rotate(0,0,0,'ctrl_'+ikh)
    hikloc=cmds.spaceLocator(n=iksj.replace('jnt:','hikloc_'),r=1)[0]
    cmds.setAttr(hikloc+'.template',1)
    cmds.select(hikloc)
    offset()
    cmds.parent(hikloc+'_offset',ikh,r=1)
    cmds.parent(hikloc+'_offset','rig',a=1)
    cmds.parentConstraint(ikee,hikloc+'_offset',mo=1)
    cmds.delete(pvloc+'_parentConstraint1','ctrl_'+pvloc+'_offset_parentConstraint1','ctrl_'+ikh+'_offset_parentConstraint1')
    cmds.parent('ctrl_'+pvloc+'_offset', ikgrp)
    cmds.parent('ctrl_'+ikh+'_offset', ikgrp)
    cmds.poleVectorConstraint('ctrl_'+pvloc,ikh)
    cmds.connectAttr(ikh+'.ikBlend',ikgrp+'.visibility')
    remap=cmds.shadingNode ('remapValue',au=1,n=ikh+'_remap')
    cmds.connectAttr(ikh+'.ikBlend',remap+'.inputValue')
    cmds.setAttr(remap+'.outputMin', 1)
    cmds.setAttr(remap+'.outputMax', 0)
    mikjoints=ikjoints
    mikjoints.append(ikee)
    for each in mikjoints:
        try:
            cstweight=cmds.listConnections(each+'_parentConstraint1.target[0].targetWeight',d=0,s=1,p=1)
            cmds.connectAttr(remap+'.outValue',cstweight[0])
        except Exception:
            pass
    cmds.setAttr(ikh+'.ikBlend',1)
    if len(ikjoints)>=2:
        fkgrp=iksj.replace('jnt:','ctrls_fk_')
        if cmds.objExists(fkgrp)==0:
            cmds.group(em=1,n=fkgrp)
        cmds.connectAttr(remap+'.outValue',fkgrp+'.visibility')
        for each in ikjoints:
            try:
                cmds.parent(each.replace('jnt:','ctrl_')+'_offset',fkgrp)
            except Exception:
                pass
    endikcste=cmds.parentConstraint('ctrl_'+ikh,ikee,st=['x','y','z'],mo=1,n=ikee+'_parentConstraint1')
    print endikcste
    try:
        ikeecst=cmds.listConnections(ikee+'_parentConstraint1.target[1].targetWeight',d=0,s=1,p=1)
        cmds.connectAttr(ikh+'.ikBlend',ikeecst[0])
    except Exception:
        ikeecst=cmds.listConnections(ikee+'_parentConstraint1.target[0].targetWeight',d=0,s=1,p=1)
        cmds.connectAttr(ikh+'.ikBlend',ikeecst[0])
    cmds.setAttr(ikh+'.ikBlend',1)
    frame=cmds.circle(n=iksj.replace('jnt:','')+'_switch_offset',r=.2,s=4,d=1)[0]
    cmds.setAttr(frame+'Shape.template',1)
    cmds.rotate(0,0,45,frame+'.cv[0:4]' ,r=1,ocp=1,os=1)
    cmds.move(1.15,frame+'.cv[2:3]' ,ws=1,x=1)
    circle=cmds.circle(n=iksj.replace('jnt:','')+'_switch',s=6,d=1,r=.15)[0]
    text=cmds.textCurves(ch=0,t=iksj.replace('jnt:',''))[0]
    cmds.move(-.05,-0.15 ,0 )
    cmds.scale(.5 ,.5 ,.5)
    cmds.parent(circle,text,frame)
    cmds.setAttr(text+'.template',1)
    cmds.parent(frame,iksj,r=1)
    cmds.move(pvdist/2,pvdist/2,0,os=1)
    cmds.parent(frame,w=1)
    cmds.rotate(0,0,0)
    cmds.scale(2,2,2)
    cmds.parentConstraint(iksj,frame,mo=1)
    cmds.transformLimits(circle,tx=(0,1),etx=(1,1),ty=(0,0),ety=(1,1),tz=(0,0),etz=(1,1))
    cmds.addAttr(circle,at='byte',sn='ik_fk',k=0)
    cmds.setAttr(circle+'.ik_fk',cb=1)
    cmds.connectAttr(circle+'.tx', circle+'.ik_fk',f=1)

def flipik():
    for each in cmds.ls(sl=1):
        each=each.replace('ctrl_ik_','')
        each=each.replace('ctrl_pv_','')
        tloc=cmds.xform('pv_'+each,t=1,q=1,ws=1)
        rloc=cmds.xform('pv_'+each,ro=1,q=1,ws=1)
        cmds.xform('ctrl_pv_'+each+'_offset',t=tloc)
        cmds.xform('ctrl_pv_'+each+'_offset',ro=rloc)
        cmds.xform('pv_'+each+'_offset',t=tloc)
        cmds.xform('pv_'+each+'_offset',ro=rloc)
        cmds.parentConstraint('jnt:'+each,'pv_'+each+'_offset',e=1 ,mo=1)

# #### create switch attributs:
# control=cmds.ls(sl=1)[0]
# iklist=cmds.ls(cmds.ls(type='ikHandle'))
# for each in iklist:
#     if cmds.listRelatives(each,p=1)[0]=='rig':
#         attname=each.replace('ik_','')+'switch'
#         cmds.addAttr(control,ln=attname ,at='long' ,min=0,max=1,dv=0)
#         cmds.setAttr(control+'.'+attname,e=1,k=1)
#     #addAttr -ln "spine_ik_fk"  -at long  -min 0 -max 1 -dv 0 |ctrl_hip_offset|ctrl_hip;
#     #setAttr -e-keyable true |ctrl_hip_offset|ctrl_hip.spine_ik_fk;

######make ribbon####
def makeribbon():
    spans=2
    pointlist=[(0,0,0),(.30,0,0)]
    knotlist=[0,0,0]
    clusterlist=[]
    offsetgrpfklist=[]
    circlefklist=[]
    for each in range (1,spans):
        pointlist+=(each-.30,0,0),(each,0,0),(each+.30,0,0)
        knotlist+=[each,each,each]
    pointlist+=(spans-.30,0,0),(spans,0,0)
    knotlist+=[spans,spans,spans]
    curvename=cmds.curve(bezier=1,d=3,p=pointlist,k=knotlist)
    curvename2=cmds.duplicate(curvename, rr=1,ic=1)
    cmds.move(0,0,.5,curvename)
    cmds.move(0,0,-.5,curvename2[0])
    cmds.loft(curvename,curvename2[0])
    newcluster=cmds.cluster(str(curvename)+'.cv[0]',
                            str(curvename)+'.cv[1]',
                            str(curvename2[0])+'.cv[0]',
                            str(curvename2[0])+'.cv[1]')
    clusterlist.append(newcluster[1])
    for each in range (1,spans):
        newcluster=cmds.cluster(str(curvename)+'.cv['+str(3*each-1)+']',
                                str(curvename)+'.cv['+str(3*each)+']',
                                str(curvename)+'.cv['+str(3*each+1)+']',
                                str(curvename2[0])+'.cv['+str(3*each-1)+']',
                                str(curvename2[0])+'.cv['+str(3*each)+']',
                                str(curvename2[0])+'.cv['+str(3*each+1)+']')
        clusterlist.append(newcluster[1])
    newcluster=cmds.cluster(str(curvename)+'.cv['+str(3*spans-1)+']',
                            str(curvename)+'.cv['+str(3*spans)+']',
                            str(curvename2[0])+'.cv['+str(3*spans-1)+']',
                            str(curvename2[0])+'.cv['+str(3*spans)+']')
    clusterlist.append(newcluster[1])
    cmds.move(0,0,0,clusterlist[0]+'.scalePivot' ,clusterlist[0]+'.rotatePivot')
    cmds.setAttr(clusterlist[0]+'Shape.originX',0)
    cmds.move(spans, 0, 0,clusterlist[-1]+'.scalePivot' ,clusterlist[-1]+'.rotatePivot')
    cmds.setAttr(clusterlist[-1]+'Shape.originX',spans)
    for each in clusterlist:
        circle=cmds.circle(n='ctrl_'+each,nrx=1,nrz=0,r=.5)
        circlefk=cmds.circle(n='ctrl_FK_'+each,nrx=1,nrz=0,r=1)
        circlefklist.append(circlefk[0])
        offsetgrp=cmds.group(circle[0],n='ctrl_'+each+'_offset')
        offsetgrpfk=cmds.group(circlefk[0],n='ctrl_FK_'+each+'_offset')
        offsetgrpfklist.append(offsetgrpfk)
        clustcoord=cmds.getAttr(each+'Shape.origin')
        cmds.move(clustcoord[0][0],clustcoord[0][1],clustcoord[0][2],offsetgrp)
        cmds.move(clustcoord[0][0]-0.5,clustcoord[0][1],clustcoord[0][2],offsetgrpfk)
        prtcst=cmds.parentConstraint(circle[0], each,mo=1)
        prtcstfk=cmds.parentConstraint(circlefk[0], offsetgrp,mo=1)
        cmds.scaleConstraint(circle[0], each)
        cmds.disconnectAttr(circle[0]+'.scale' ,prtcst[0]+'.target[0].targetScale')
        cmds.disconnectAttr(circlefk[0]+'.scale' ,prtcstfk[0]+'.target[0].targetScale')
    for each in range (1,len(offsetgrpfklist)):
        parentcst_fk=cmds.parentConstraint(circlefklist[each-1], offsetgrpfklist[each],mo=1)
        cmds.disconnectAttr(circlefklist[each-1]+'.scale' ,parentcst_fk[0]+'.target[0].targetScale')


####colors
def red():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideColor',13)
        cmds.setAttr(each+'.overrideEnabled',1)
def blue():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideColor',6)
        cmds.setAttr(each+'.overrideEnabled',1)

def yellow():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideColor',22)
        cmds.setAttr(each+'.overrideEnabled',1)

def lblue():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideColor',28)
        cmds.setAttr(each+'.overrideEnabled',1)

def pink():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideColor',31)
        cmds.setAttr(each+'.overrideEnabled',1)

def orange():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideColor',10)
        cmds.setAttr(each+'.overrideEnabled',1)


def green():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideColor',14)
        cmds.setAttr(each+'.overrideEnabled',1)
def reset():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.overrideEnabled',0)

####cb_orients
def cb_orients():
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.jointOrientX',cb=1)
        cmds.setAttr(each+'.jointOrientY',cb=1)
        cmds.setAttr(each+'.jointOrientZ',cb=1)
####tgl_axis()
def tgl_axis():
    if cmds.getAttr(cmds.ls(sl=1)[0]+'.displayLocalAxis')==1:
        tglaxis=0
    else:
        tglaxis=1
    for each in cmds.ls(sl=1):
        cmds.setAttr(each+'.displayLocalAxis', tglaxis)
####clean_prefix

def clean_prefix():
    for each in cmds.ls(sl=1):
        for prfx in prefixlist:
            if prfx in each:
                newname=each.replace(prfx,'')
                cmds.rename(each,newname)

####jnt
def mir_jnt():
    mirlist=cmds.ls(sl=1)
    for each in mirlist:
        print each
        if '_l' in each:
            cmds.mirrorJoint(each, myz=1,mb=1 ,sr=("_L","_R"))
        else:
            if '_r' in each:
                cmds.mirrorJoint(each, myz=1,mb=1 ,sr=("_R","_L"))
            else:
                cmds.mirrorJoint(each, myz=1,mb=1)

############# FixEuler #########################
def fixEuler():
    print( 'fixEuler')
    animCurves=cmds.ls(type='animCurve')
    for each in animCurves:
        try:
            cmds.rotationInterpolation(each,c='none')
        except Exception:
            pass
################ #show joints ###################
def showJnts():
    selection=cmds.ls(type='joint')
    for each in selection:
        try:
            cmds.setAttr(each+'.drawStyle',0)
        except Exception:
            pass
########### hide joints #########
def hideJnts():
    selection=cmds.ls(type='joint')
    for each in selection:
        try:
            cmds.setAttr(each+'.drawStyle',2)
        except Exception:
            pass
########### unlock jnts #############
def unlockjnts():
    selection=cmds.ls(type='joint')
    for each in selection:
        try:
            cmds.setAttr(each+'.liw',0)
        except Exception:
            pass

############joint for each sel ############
def jntForEach():
    geolist=cmds.ls(sl=1)
    for each in geolist:
        jntname=''
        for prfx in prefixlist:
            if prfx in each:
                jntname=each.replace(prfx,'')
                print jntname
                break
            else:
                jntname=each
        if 'jnt_'+jntname==each:
            jntname=increment(jntname)
            print jntname
        if 'geo_' in each or 'geom_' in each:
            cmds.select(cl=1)
            boxarray=cmds.exactWorldBoundingBox(each)
            jnt=cmds.joint(name='jnt_'+jntname,p=((boxarray[0]+boxarray[3])/2,(boxarray[1]+boxarray[4])/2,(boxarray[2]+boxarray[5])/2))
        else:
            cmds.select(each)
            jnt=cmds.joint(name='jnt_'+jntname)
        try:
            cmds.skinCluster(each,jnt,tsb=1)
        except Exception:
            pass


####resetSkin

def ResetSkin(_oObj):
    oSkinCluster = GetSkinCluster(_oObj)
    if oSkinCluster == None:
        pm.warning("Can't find skinCluster in {0}".format(_oObj))
    else:
        aJoints = oSkinCluster.influenceObjects()
        pm.delete(pm.ls('bindPose*'))
        pm.skinCluster(oSkinCluster, edit=True, unbindKeepHistory=True)
        pm.skinCluster(aJoints, _oObj, toSelectedBones=True)

def MenuItem_ResetSkin():
    for oCurObj in pm.selected():
        oSkinCluster = GetSkinCluster(oCurObj)
        if oSkinCluster != None:
            ResetSkin(oCurObj)

def clusterIt():
    for each in cmds.ls(sl=1):
        cmds.select(each)
        cmds.cluster(each,n='clu_')

def resetTransform():
    axislist=[('.tx',0),('.ty',0),('.tz',0),('.rx',0),('.ry',0),('.rz',0),('.sx',1),('.sy',1),('.sz',1)]
    for each in cmds.ls(sl=1):
        for axis in axislist:
            try:
                cmds.setAttr(each+axis[0],axis[1])
            except Exception:
                pass
###jAutorig():

    
root=[
('root',(0,0,0)),
('fly',(0,9,0)),
('cog',(0,0,0),(0,0,90)),
]
spine=[
('hips',(0,0,0)),
('spine01',(1,0,0)),
('spine02',(1,0,0)),
('spine03',(1,0,0)),
('chest',(1,0,0)),
]
head=[
('neck',(2,0,0)),
('head',(1.5,0,.2)),
]
arm=[
('shoulder',(2,-1,1),(0,0,-90)),
('arm',(2,0,-1)),
# ('arm_roll',(2,0,0)),
('forearm',(4,0,0)),
# ('forearm_roll',(2,0,0)),
('hand',(4,0,0)),
]
thumb=[
('thumb_00',(.4,-.2,.4)),
('thumb_01',(.3,0,0)),
('thumb_02',(.2,0,0)),
('thumb_03',(.1,0,0)),
]
index=[
('index_00',(.5,0,.2)),
('index_01',(.4,0,0)),
('index_02',(.3,0,0)),
('index_03',(.2,0,0)),
('index_04',(.1,0,0)),
]
middle=[
('middle_00',(.5,0,0)),
('middle_01',(.4,0,0)),
('middle_02',(.3,0,0)),
('middle_03',(.2,0,0)),
('middle_04',(.1,0,0)),
]
ring=[
('ring_00',(.5,0,-.2)),
('ring_01',(.4,0,0)),
('ring_02',(.3,0,0)),
('ring_03',(.2,0,0)),
('ring_04',(.1,0,0)),
]
pinky=[
('pinky_00',(.5,0,-.4)),
('pinky_01',(.4,0,0)),
('pinky_02',(.3,0,0)),
('pinky_03',(.2,0,0)),
('pinky_04',(.1,0,0)),
]
leg=[
('leg',(0,-2,0),(90,-2.5,180)),
# ('leg_roll',(0,2,0)),
('foreleg',(4,0,0),(0,0,-5)),
# ('foreleg_roll',(0,-2,0)),
('foot',(4,0,0),(0,0,47.5)),
('ball',(1,0,0),(0,0,45)),
('foottip',(1,0,0)),
]
    
def unlockndelete():
    for each in cmds.ls(sl=1):
        cmds.lockNode(each,l=0)
        cmds.delete(each)
    
def skeleton(part,suff=None,p=None):
    if p!=None:
        cmds.select(p)
    for each in part:
        jntname='jnt_'+each[0]
        if suff!=None:
            jntname+=str(suff)
        pos=each[1]
        try:
            ori=each[2]
        except Exception:
            ori=(0,0,0)
        if suff== '_r':
            pos=(pos[0],pos[1]*-1,pos[2])
            ori=(ori[0]*-1,ori[1],ori[2]*-1)
        cmds.joint(n=jntname,p=pos,r=1,o=ori)
        cmds.setAttr(jntname+'.jointOrientX',k=1)
        cmds.setAttr(jntname+'.jointOrientY',k=1)
        cmds.setAttr(jntname+'.jointOrientZ',k=1)

def offset(selectedItem):

    offgroup= group(em=1,name=selectedItem+'_offset')
    parent(offgroup,selectedItem, r=1)
    parent(offgroup,w=1)
    parent(selectedItem,offgroup)
    return offgroup

        
    # dupList=duplicate(po=1)
    
    # for each in dupList:
    #     print each
    #     reach=each.replace('jnt_','rig_')
    #     cmds.rename(each,reach)
    #     if '_l1' in reach:
    #         cmds.rename(reach,reach.replace('_l1','_l'))
    #     if '_r1' in reach:
    #         cmds.rename(reach,rach.replace('_r1','_r'))
def      buildSkeleton():
            
    skeleton(root)
    skeleton(spine,p='jnt_cog')
    skeleton(head,p='jnt_chest')
    skeleton(arm,'_l',p='jnt_chest')
    skeleton(thumb,'_l',p='jnt_hand_l')
    skeleton(index,'_l',p='jnt_hand_l')
    skeleton(middle,'_l',p='jnt_hand_l')
    skeleton(ring,'_l',p='jnt_hand_l')
    skeleton(pinky,'_l',p='jnt_hand_l')
    skeleton(arm,'_r',p='jnt_chest')
    skeleton(thumb,'_r',p='jnt_hand_r')
    skeleton(index,'_r',p='jnt_hand_r')
    skeleton(middle,'_r',p='jnt_hand_r')
    skeleton(ring,'_r',p='jnt_hand_r')
    skeleton(pinky,'_r',p='jnt_hand_r')
    skeleton(leg,'_l',p='jnt_hips')
    skeleton(leg,'_r',p='jnt_hips')



""""
###ikSwitch:

spineList=['hip','spine','chest','neck','head']
armList=['clav','arm','foreArm','hand']
fingerList=['meta','base','thumb_mid','end','tip']
legList=['leg','foreLeg','foot','heel','ball','tip']

import maya.cmds as cmds
def ik_fk_switch(switchik,partname):
    ikh='ik_'+partname
    if cmds.getAttr(switchik)== 0:
        ikjoints=cmds.ikHandle(ikh,q=1, jl=1)
        ikjoints.append(cmds.listConnections(cmds.listConnections(ikh+'.endEffector')[0])[1])
        for each in ikjoints:
            eachrot=cmds.xform(each,ro=1,ws=0,q=1)
            cmds.xform(each.replace('jnt_','ctrl_'),ro=eachrot,ws=0)
        cmds.setAttr(ikh+'.ikBlend',0)
    if cmds.getAttr(switchik)== 1:
        ctrlik=ikh.replace('ik_','ctrl_ik_')
        pvik=ikh.replace('ik_','pv_')
        ctrlpv=ikh.replace('ik_','ctrl_pv_')
        #effector=cmds.listConnections(ikh+'.endEffector')[0] 
        effecrot=cmds.xform(ikh.replace('ik_','hikloc_'),ro=1,ws=1,q=1)
        effecpos=cmds.xform(ikh.replace('ik_','hikloc_'),t=1,ws=1,q=1)
        cmds.xform(ctrlik,t=effecpos,ws=1)
        cmds.xform(ctrlik,ro=effecrot,ws=1)
        pvpos=cmds.xform(pvik,t=1,ws=1,q=1)
        pvrot=cmds.xform(pvik,ro=1,ws=1,q=1)
        cmds.xform(ctrlpv,t=pvpos,ws=1)
        cmds.xform(ctrlpv,ro=pvrot,ws=1)
        cmds.setAttr(ikh+'.ikBlend',1)

#cmds.scriptJob( ac=['ctrl_hip.leg_r_ik_fk','ik_fk_switch("ctrl_hip.leg_r_ik_fk","leg_r")'], protected=True)
#cmds.scriptJob( ac=['ctrl_hip.leg_l_ik_fk','ik_fk_switch("ctrl_hip.leg_l_ik_fk","leg_l")'], protected=True)
#cmds.scriptJob( ac=['ctrl_hip.arm_r_ik_fk','ik_fk_switch("ctrl_hip.arm_r_ik_fk","arm_r")'], protected=True)
#cmds.scriptJob( ac=['ctrl_hip.arm_l_ik_fk','ik_fk_switch("ctrl_hip.arm_l_ik_fk","arm_l")'], protected=True)
#ik_fk_switch("ctrl_hip.leg_r_ik_fk","leg_r")
#ik_fk_switch("ctrl_hip.leg_l_ik_fk","leg_l")
#ik_fk_switch("ctrl_hip.arm_r_ik_fk","arm_r")
#ik_fk_switch("ctrl_hip.arm_l_ik_fk","arm_l")
"""
#####window####

#Type in the name and the size of the window
windowName = "toolbox"
windowSize = (230, 200)
#check to see if this window already exists
if (cmds.window(windowName , exists=True,tb=1)):
    cmds.deleteUI(windowName)
window = cmds.window( windowName, title= windowName, widthHeight=(windowSize[0], windowSize[1]) )
####layout
cmds.columnLayout( "mainColumn", adjustableColumn=True )
cmds.gridLayout("gridLayout", numberOfRowsColumns = (2,3), cellWidthHeight = (80,20), parent = "mainColumn")
####buttons
cmds.button( label='selectHierarchy', parent = "gridLayout", command=('mel.eval("SelectHierarchy")'))
cmds.button( label='clean_prefix', parent = "gridLayout", command=('clean_prefix()'))
cmds.button( label='Prefix', parent = "gridLayout", command=('mel.eval("PrefixHierarchyNames")'))
cmds.button( label='cb_orients', parent = "gridLayout", command=('cb_orients()'))
cmds.button( label='tgl_axis', parent = "gridLayout", command=('tgl_axis()'))
cmds.button( label='unlockjnts', parent = "gridLayout", command=('unlockjnts()'))
cmds.button( label='mir_jnt', parent = "gridLayout", command=('mir_jnt()'))
cmds.button( label='showJnts', parent = "gridLayout", command=('showJnts()'))
cmds.button( label='hideJnts', parent = "gridLayout", command=('hideJnts()'))
cmds.button( label='jntForEach', parent = "gridLayout", command=('jntForEach()'))
cmds.button( label='clusterIt', parent = "gridLayout", command=('clusterIt()'))
cmds.button( label='offset', parent = "gridLayout", command=('offsetgrp()'))
cmds.button( label='tranSkin', parent = "gridLayout", command=('transfertSkinCluster()'))
cmds.button( label='resetSkin', parent = "gridLayout", command=('MenuItem_ResetSkin()'))
cmds.button( label='fkThis', parent = "gridLayout", command=('fkThis()'))
cmds.button( label='ikThis', parent = "gridLayout", command=('ikThis()'))
cmds.button( label='flipIK', parent = "gridLayout", command=('flipik()'))
cmds.button( label='makeribbon', parent = "gridLayout", command=('makeribbon()'))
cmds.button( label='dynChainY', parent = "gridLayout", command=('dynChain(1)'))
cmds.button( label='dynChainx', parent = "gridLayout", command=('dynChain(0)'))
cmds.button( label='dynChainZ', parent = "gridLayout", command=('dynChain(2)'))
cmds.button( label='find_duplicates', parent = "gridLayout", command=('pprint(find_short_name_duplicates())'))
cmds.button( label='SwitchRez', parent = "gridLayout", command=('changeRig(1)'))
cmds.button( label='unlkDel', parent = "gridLayout", command=('unlockndelete()'))
cmds.button( label='UpRig', parent = "gridLayout", command=('changeRig(0)'))
cmds.button( label='fixEuler', parent = "gridLayout", command=('fixEuler()'))
cmds.button( label='createUv2', parent = "gridLayout", command=('createUv2()'))
cmds.button( label='deletAllUvSets', parent = "gridLayout", command=('deletAllUvSets()'))
cmds.button( label='buildSkeleton', parent = "gridLayout", command=('buildSkeleton()'))
cmds.button( label='lowerlip', parent = "gridLayout", command=('lowerlip()'))
cmds.button( label='upperlip', parent = "gridLayout", command=('upperlip()'))
cmds.button( label='red', parent = "gridLayout", command=('red()'))
cmds.button( label='blue', parent = "gridLayout", command=('blue()'))
cmds.button( label='yellow', parent = "gridLayout", command=('yellow()'))
cmds.button( label='lblue', parent = "gridLayout", command=('lblue()'))
cmds.button( label='pink', parent = "gridLayout", command=('pink()'))
cmds.button( label='orange', parent = "gridLayout", command=('orange()'))
cmds.button( label='yellow', parent = "gridLayout", command=('yellow()'))
cmds.button( label='green', parent = "gridLayout", command=('green()'))
cmds.button( label='reset', parent = "gridLayout", command=('reset()'))

#cmds.button( label='Close', parent = "gridLayout", command=('cmds.deleteUI(\"' + window + '\", window=True)') )

#on this next line you can use setParent.. , if you dont wont to use -parent flag in zour button field
#cmds.setParent( '..' )
cmds.showWindow( windowName )
# Resize the main window
#
# This is a workaround to get MEL global variable value in Python
gMainWindow = mel.eval('$tmpVar=$gMainWindow')
cmds.window( windowName, edit=True, widthHeight=(windowSize[0], windowSize[1]) )
