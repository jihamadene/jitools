import time
import stat
import maya.cmds as cmds
import os
from pprint import *
import maya.cmds as mc
import pymel.core as pm
import maya.mel as mel
from pprint import pprint
import os
import re

prefixlist=['jnt_','sk_','fk_','clu_','ctrl_','geo_','geom_','jnr_','pasted__','fol_',  '_geo','_ges','_ged','_GEP']

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

def prntToCste(elemlist=None,parent=None):
    if elemlist==None:
        elemlist=mc.ls(sl=1)
        
    for each in elemlist:
        mc.parentConstraint(mc.listRelatives(each,p=1)[0],each,mo=1)
        if parent==None:
            mc.parent(each,w=1)
        else:
            mc.parent(each,parent)

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
def fkThis(jntlist):
    neachlist=[]
    for each in jntlist:
        neach='ctrl_'+each
        for prfx in prefixlist:
            if prfx in each:
                neach='ctrl_'+each.replace(prfx,'')
        cmds.circle(n=neach,r=5,nry=0,nrz=0,nrx=1)
        cmds.parent(neach,each,r=1)
        cmds.scaleConstraint(neach,each)
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
        neachlist.append(neach)
    return(neachlist)
        #if cmds.objectType('ikHandle1')==
def offsetgrp(selection=cmds.ls(sl=1)):
    for each in selection:
        cmds.select(cl=1)
        eachparent=cmds.listRelatives(each,p=1)
        offgrp=cmds.group(em=1, n=each+'_offset')
        cmds.parent(offgrp,each,r=1)
        if eachparent==None:cmds.parent(offgrp,w=1,a=1)
        else:cmds.parent(offgrp,eachparent,a=1)
        cmds.parent(each,offgrp,a=1)
        return(offgrp)
####offset
def offset(selection = pm.selected()):
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
    ikgrp=iksj.replace('jnt_','ctrls_ik_')
    if cmds.objExists(ikgrp)==0:
        cmds.group(em=1,n=ikgrp)
    ikh=cmds.ikHandle(sj=iksj,ee=ikee,n=iksj.replace('jnt_','ik_'),sol='ikRPsolver')[0]
    cmds.setAttr(ikh+'.ikBlend',0)
    cmds.parent(ikh,'rig')
    ikjoints=cmds.ikHandle(ikh,q=1, jl=1)
    pvdist=cmds.getAttr(ikjoints[1]+'.tx')
    pvloc=cmds.spaceLocator(n=iksj.replace('jnt_','pv_'),r=1)[0]
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
    hikloc=cmds.spaceLocator(n=iksj.replace('jnt_','hikloc_'),r=1)[0]
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
        fkgrp=iksj.replace('jnt_','ctrls_fk_')
        if cmds.objExists(fkgrp)==0:
            cmds.group(em=1,n=fkgrp)
        cmds.connectAttr(remap+'.outValue',fkgrp+'.visibility')
        for each in ikjoints:
            try:
                cmds.parent(each.replace('jnt_','ctrl_')+'_offset',fkgrp)
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
    frame=cmds.circle(n=iksj.replace('jnt_','')+'_switch_offset',r=.2,s=4,d=1)[0]
    cmds.setAttr(frame+'Shape.template',1)
    cmds.rotate(0,0,45,frame+'.cv[0:4]' ,r=1,ocp=1,os=1)
    cmds.move(1.15,frame+'.cv[2:3]' ,ws=1,x=1)
    circle=cmds.circle(n=iksj.replace('jnt_','')+'_switch',s=6,d=1,r=.15)[0]
    text=cmds.textCurves(ch=0,t=iksj.replace('jnt_',''))[0]
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
        cmds.parentConstraint('jnt_'+each,'pv_'+each+'_offset',e=1 ,mo=1)

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
    spans=1
    
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
        try:
            cmds.setAttr(each+'.lockInfluenceWeights',cb=1)
        except Exception:pass
            
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
            cmds.mirrorJoint(each, myz=1,mb=1 ,sr=("_l","_r"))
        else:
            if '_r' in each:
                cmds.mirrorJoint(each, myz=1,mb=1 ,sr=("_r","_l"))
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
    # if geolist=[]:    
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





####facerig####

def mirCrv(crv,mir=0):
    cvs = cmds.getAttr(crv+'.spans')
    pntlistA=[]
    pntlistB=[]
    pntlistC=[]
    halfcvs= cvs/2
    for each in range(1,cvs):
            pntlistA.append(each)
    pntlistA.append(0)
    for each in range(1,cvs/2):
        pntlistB.append(pntlistA[each])
    for each in range(1,cvs/2):
        pntlistC.append(pntlistA[-each])
    for each in range(0,halfcvs-1):
        if mir==0:
            cv1=pntlistB[each]
            cv2=pntlistC[each]
        else:
            cv2=pntlistB[each]
            cv1=pntlistC[each]
        tcv=cmds.xform(crv+'.cv['+str(cv1)+']',q=1,t=1,a=1)
        tcvmir=[-tcv[0],tcv[1],tcv[2]]
        cmds.xform(crv+'.cv['+str(cv2)+']',t=tcvmir,a=1)

def mirrorcrv(crv,crvmirtrm):
    cmds.duplicate(crv,n=crvmirtrm)
    cmds.setAttr(crvmirtrm+'.sx',-1.0)

def frzcrv(crvmirtrm) :
    cmds.makeIdentity(crvmirtrm,apply=1,t=1,r=1,s=1,n=0)

def uplocs(locup,suff,jnt,locgrp):
    cmds.group (em=1,n=locgrp)
    cmds.spaceLocator(n=locup)
    cmds.parent(locup,locgrp,r=1)
    cmds.parentConstraint(jnt,locup,mo=0)




def getcrvweight(crv,mir=0):
    printlist=[]
    skcl=mel.eval('findRelatedSkinCluster '+crv)
    cvs = cmds.getAttr(crv+'.spans')
    cmds.select(crv)
    jntlist=cmds.skinPercent(skcl,crv+'.cv[0]',transform=None,q=1)
    printlist.append(jntlist)
    for each in range (0,cvs):
        w8=cmds.skinPercent(skcl,crv+'.cv['+str(each)+']',v=1,q=1)
        printlist.append(w8)
    print printlist

def pastcrvweight(crv,w8list,mir=0):
    cvs = cmds.getAttr(crv+'.spans')
    wlist=[]
    jlist=w8list[0]
    jlen=len(jlist)
    skcl=mel.eval('findRelatedSkinCluster '+crv)
    if cmds.objExists('skcl')==0:
        jntstr="'"+jlist[0]+"'"
        for each in range (1,jlen):
            jntstr=jntstr+",'"+jlist[each]+"'"
        print jntstr
        print 'cmds.bindSkin(crv,'+jntstr+',tsb=1)'
        cmds.skinCluster(jlist,crv,tsb=1)
        skcl=mel.eval('findRelatedSkinCluster '+crv)
    for each in range (0,cvs):
        w8col=w8list[each+1]
        for i in range (0,jlen):
                wlist.append((jlist[i],w8col[i]))
        cmds.select(crv+'.cv['+str(each)+']')
        cmds.skinPercent(skcl,transformValue=wlist)
        print wlist
        wlist=[]


def mvCrvStart(crv,offset=1):
    pntlist=cmds.getAttr(crv+'.spans')
    print pntlist
    print range(0,pntlist)
    pointlist=[]
    for each in range(0,pntlist):
        coords=cmds.xform(crv+'.cv['+ str(each)+']' ,q=1, t=1)
        pointlist.append(coords)
    print pointlist
    for each in range(0,pntlist):
        popom=each+offset
        while popom>pntlist-1:
            popom=popom-pntlist
        while popom<0:
            popom=popom+pntlist
        print popom
        cmds.xform(crv+'.cv['+ str(each)+']',t=(pointlist[popom]))

def prepRibbon(name,parent='jnt_head'):
    cmds.polyToCurve(form=2,degree=1,n='cv_'+name)
    temprib=cmds.extrude(ch=1,rn=0,po=0,et=0,upn=1,l=.1,ro=0,sc=1,dl=1,n='tmprib_'+name)[0]
    center=cmds.objectCenter(temprib)
    grp=cmds.group(n='rig_'+name)
    try:cmds.parent(grp,'rig')
    except:Exception
    cmds.select(parent)
    cmds.joint(n='jnt_'+name,p=center)
    cmds.delete('cv_'+name)


def ctlRib(tmprib,n=3):
    pm.select(pm.PyNode(tmprib))
    ctlrib=tmprib.replace('tmprib_','ctlrib_')
    cmds.rebuildSurface(tmprib,n=ctlrib,rpo=0,rt=7,end=1,su=(n-1),sv=1,dv=1,kr=1)
    cmds.parent(ctlrib,tmprib.replace('tmprib_','rig_'))
    shape=pm.PyNode(ctlrib+'Shape')
    spans=pm.getAttr(shape.minMaxRangeU)[1]
    jnts=[]
    for x in range (0,n):
        if x==0:posU=0
        else: posU=(float(spans)/float(n-1))*x
        jntpos= pm.pointPosition(shape.uv[posU][0])
        pm.select(cl=1)
        jnt=pm.joint(n=ctlrib.replace('ctlrib_','jnr_')+'_00',p=jntpos)
        jnts.append(jnt)
        fkThis()
    cmds.skinCluster(jnts,ctlrib)
    pm.parent(jnts,pm.PyNode(tmprib.replace('tmprib_','rig_')))

def tweekRib(tmprib,ctlrib,n=5):
    twkrib=tmprib.replace('tmprib_','twkrib_')
    shape=pm.PyNode(cmds.listRelatives(ctlrib,s=1)[0])
    pm.rebuildSurface(tmprib,n=twkrib,rpo=0,rt=7,end=1,su=(n-1),sv=1,dv=1,kr=1)
    cmds.parent(twkrib,tmprib.replace('tmprib_','rig_'))
    # spans=pm.getAttr(shape.minMaxRangeU)[1]
    jnts=[]
    for x in range (0,n):
        if x==0:posU=0
        else: posU=(1/float(n-1))*x
        fol=pm.createNode('follicle',n=ctlrib.replace('ctlrib_','fol_')+'_'+str(x))
        folnull=pm.PyNode(cmds.listRelatives(p=1)[0])
        pm.parent(folnull,pm.PyNode(tmprib.replace('tmprib_','rig_')))
        pm.connectAttr(fol.outTranslate,folnull.translate)
        pm.connectAttr(fol.outRotate,folnull.rotate)
        pm.connectAttr(shape.worldSpace, fol.inputSurface)
        pm.setAttr(fol.parameterU,posU)
        pm.select(folnull)
        jnr=cmds.joint(n=tmprib.replace('tmprib_','jnr_')+'_'+str(x))
        fkThis()
        jnts.append(jnr)
    cmds.skinCluster(jnts,twkrib)


def jntsRib(rib,parent,n=0):
    shape=pm.PyNode(rib+'Shape')
    spans=pm.getAttr(shape.minMaxRangeU)[1]
    jnts=[]
    if n==0: n=spans+1
    for x in range (0,int(n)):
        if x==0:posU=0
        else: posU=(1/float(n-1))*x
        pm.select(pm.PyNode(parent))
        jnt=pm.joint(n=rib.replace('rib','jnt')+'_'+str(x))
        fol=pm.createNode('follicle',n=jnt.replace('jnt','fol'))
        folnull=pm.PyNode(cmds.listRelatives(p=1)[0])
        pm.parent(fol,jnt,r=1,s=1)
        pm.delete(folnull)
        cmds.connectAttr(rib+'Shape.worldSpace', fol+'.inputSurface')
        pm.connectAttr(fol.outTranslate,jnt.translate)
        pm.connectAttr(fol.outRotate,jnt.rotate)
        pm.connectAttr(pm.PyNode(parent).worldInverseMatrix,fol.inputWorldMatrix)
        pm.setAttr(fol.parameterU,posU)

def jntsRibV(rib,parent,n=0):
    shape=pm.PyNode(rib+'Shape')
    spans=pm.getAttr(shape.minMaxRangeV)[1]
    jnts=[]
    if n==0: n=spans+1
    for x in range (0,int(n)):
        if x==0:posV=0
        else: posV=(1/float(n))*(x)
        pm.select(pm.PyNode(parent))
        jnt=pm.joint(n=rib.replace('rib','jnt')+'_'+str(x))
        fol=pm.createNode('follicle',n=jnt.replace('jnt','fol'))
        folnull=pm.PyNode(cmds.listRelatives(p=1)[0])
        pm.parent(fol,jnt,r=1,s=1)
        pm.delete(folnull)
        cmds.connectAttr(rib+'Shape.worldSpace', fol+'.inputSurface')
        pm.connectAttr(fol.outTranslate,jnt.translate)
        pm.connectAttr(fol.outRotate,jnt.rotate)
        pm.connectAttr(pm.PyNode(parent).worldInverseMatrix,fol.inputWorldMatrix)
        pm.setAttr(fol.parameterV,posV)
# pm.getAttr('rib_lipUpShape.minMaxRangeU')[1]
#######################################################################
########################### DEF PARTS #################################
#######################################################################
# prepRibbon('lipDn')
# ctrlRib('rib_lipDn',3)

def makelids():
    print 'lol'

# def makebrows():
# def preparemouth():

# jntsRibV('sterno_l','null3',5)
# jntsRib('uplip','mouthJnts',1)
# jntsRibV('loftedSurface1','mouthJnts',16)

# liste=cmds.ls(sl=1)
# for each in liste:
#     cmds.connectAttr('model1:torShape.worldSpace[0]',each+'.inputSurface',f=1)


def upperlip():
    prepRibbon('lipUp')
    ctlRib('tmprib_lipUp',3)
    tweekRib('tmprib_lipUp','ctlrib_lipUp',5)
    jntsRib('twkrib_lipUp','jnt_lipUp')
    cmds.delete('tmprib_lipUp')

def lowerlip():
    prepRibbon('lipLw','jnt_jaw')
    ctlRib('tmprib_lipLw',3)
    tweekRib('tmprib_lipLw','ctlrib_lipLw',5)
    jntsRib('twkrib_lipLw','jnt_lipLw')
    cmds.delete('tmprib_lipLw')

def upLid_l():
    prepRibbon('lidUp_l','jnt_eye_l')
    tweekRib('tmprib_lidUp_l','tmprib_lidUp_l',3)
    jntsRib('twkrib_lidUp_l','jnt_lidUp_l')
    cmds.delete('tmprib_lidUp_l')

def lwLid_l():
    prepRibbon('lidLw_l','jnt_eye_l')
    tweekRib('tmprib_lidLw_l','tmprib_lidLw_l',3)
    jntsRib('twkrib_lidLw_l','jnt_lidLw_l')
    cmds.delete('tmprib_lidLw_l')

def upLid_r():
    prepRibbon('lidUp_r','jnt_eye_r')
    tweekRib('tmprib_lidUp_r','tmprib_lidUp_r',3)
    jntsRib('twkrib_lidUp_r','jnt_lidUp_r')
    cmds.delete('tmprib_lidUp_r')

def lwLid_r():
    prepRibbon('lidLw_r','jnt_eye_r')
    tweekRib('tmprib_lidLw_r','tmprib_lidLw_r',3)
    jntsRib('twkrib_lidLw_r','jnt_lidLw_r')
    cmds.delete('tmprib_lidLw_r')

    
def lockMesh():
    cmds.setAttr("meshes_grp.overrideEnabled",1)
    cmds.setAttr("meshes_grp.overrideDisplayType" ,2)

def unlockMesh():
    cmds.setAttr("meshes_grp.overrideEnabled",0)
    cmds.setAttr("meshes_grp.overrideDisplayType" ,0)
    
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

def unlockJoints():
    for jnt in cmds.ls(type='joint'):
        try:
            cmds.setAttr(jnt+'.liw',0)
        except Exception:
            pass


def tweekParams():
    try:cmds.setAttr(jnt+'.liw',0)
    except Exception:pass
    try:mc.setAttr('geo_anim_grp.v',0)
    except Exception:pass
    try:mc.setAttr('geo_render_grp.v',1)
    except Exception:pass
    try:mc.setAttr('rig_grp.ctl_vis_on_playback',0)
    except Exception:pass
    try:mc.setAttr('rig_grp.jnt_vis',0)
    except Exception:pass
    try:mc.setAttr('rig_grp.ctl_vis_on_playback',0)
    except Exception:pass
    try:mc.setAttr('armUI_L0_ctl.arm_upvref',2)
    except Exception:pass
    try:mc.setAttr('armUI_R0_ctl.arm_upvref',2)
    except Exception:pass
    try:mc.setAttr('armUI_L0_ctl.arm_ikRotRef',1)
    except Exception:pass
    try:mc.setAttr('armUI_R0_ctl.arm_ikRotRef',1)
    except Exception:pass
    try:mc.setAttr('setup.visibility',l=0)
    except Exception:pass
    try:mc.setAttr('setup.visibility', 0)
    except Exception:pass
    try:mc.setAttr('rig_grp.visibility',l=0)
    except Exception:pass
    try:mc.setAttr('rig_grp.visibility',1)
    except Exception:pass
    try:mc.setAttr('jnt_org.visibility',l=0)
    except Exception:pass
    try:mc.setAttr('jnt_org.visibility',0)
    except Exception:pass   
    
def createFolksAttr():
    asslist=mc.ls(assemblies=1)
    for each in asslist:
        if '_main' in each:
            if mc.attributeQuery('FolksAsset',n=each,ex=1)==False:
                mc.addAttr(each,ln='FolksAsset',dt="string")
            if mc.objExists(each+'|meshes_grp|geo_sim_grp')==0:
                cmds.group(em=1,p=each+'|meshes_grp',n='geo_sim_grp')


def RigSanityCheck():
    mc.select('abc:geo_render_grp')
    mel.eval('SelectHierarchy')
    listOfNotMatchingGeos=[]
    for x in mc.ls(sl=1,l=1):
        if mc.objExists(x.replace('abc:','')):
            pass
        else:
            listOfNotMatchingGeos.append(x)
    if listOfNotMatchingGeos==[]:
        return('checked')
    else:
        mc.select(listOfNotMatchingGeos)
        return(listOfNotMatchingGeos)
    
        
        
        
def smoothMesh():
    meshlist=mc.ls(s=1,l=1)
    for mesh in meshlist:
        if 'meshes_grp'in mesh:
            mc.select(mesh)
            mc.polySetToFaceNormal()
            mc.polySoftEdge(a=180,ch=0)
            mel.eval('doBakeNonDefHistory( 1, {"prePost" })')

def loadLastMesh():
    try:
        mc.file(rfn='abcRN',rr=1)
    except Exception:
        pass
    scenename=mc.file(sn=1,shn=1,q=1)
    assetname=scenename.split('_')[0]
    variation=scenename.split('_')[2]
    modelingpath=(mc.file(sn=1,q=1).replace('Tasks/Rig/Maya/scenes','Publish/Modeling')).strip(scenename)
    listOfMod=os.listdir(modelingpath)
    newListOfMod=[]
    for mod in listOfMod:
        if assetname in mod:
            if variation in mod:
                if 'mod'in mod:
                    newListOfMod.append(mod)
        if assetname.lower() in mod:
            if variation in mod:
                if 'mod'in mod:
                    newListOfMod.append(mod)
    newListOfMod.sort()
    mc.file(modelingpath+'/'+newListOfMod[-1],r=1,ns='abc')

def cleanUp():
    mel.eval('hyperShadePanelMenuCommand("hyperShadePanel1", "deleteUnusedNodes");')
    item_list = mc.ls(typ='unknown')
    mc.delete(item_list)
    mel.eval('cleanUpScene 1')
    try:
        mc.lockNode(mc.ls('*defaultLegacyAssetGlobals*'),l=0)
        mc.delete(mc.ls('*defaultLegacyAssetGlobals*'))
    except Exception:
        pass
    try:
        mc.lockNode(mc.ls('*uiConfigurationScriptNode*'),l=0)
        mc.delete(mc.ls('*uiConfigurationScriptNode*'))
    except Exception:
        pass
    try:
        mc.lockNode(mc.ls('*sceneConfigurationScriptNode*'),l=0)
        mc.delete(mc.ls('*sceneConfigurationScriptNode*'))
    except Exception:
        pass
    try:  
        mc.delete(mc.ls('*ngSkinToolsData*'))
    except Exception:
        pass
            
def selJnts():
    mc.select(mc.ls(typ='joint'))
    
def upMOffsets():
    csteList=mc.ls(typ='parentConstraint')
    csteList.sort(reverse=1)
    attlistWeight=[]
    for each in csteList:
        attList=mc.listAttr(each)
        
        for eaatt in attList:
            if 'W' in eaatt:
              attlistWeight.append((each+'.'+eaatt,mc.getAttr(each+'.'+eaatt)))
              mc.setAttr(each+'.'+eaatt,0)
              
        mc.parentConstraint(each,e=1,mo=1)
    for eeaatt in attlistWeight:
        mc.setAttr(eeaatt)
        
    
    
def publishRig():
    import os
    import os.path
    # createFolksAttr()
    # loadLastMesh()
    # checked=RigSanityCheck()
    # if checked=='checked':
    #     print('GEO VALIDATED')
    # else:
    #     return(checked)
    # mc.file(rfn='abcRN',rr=1)
    # cleanUp()
    # smoothMesh()
    tweekParams()
    #screenshot
    dst=(mc.file(sn=1,q=1).replace('Tasks/Rig/Maya/scenes/','Publish/Renders/Rig/')).replace('.ma','')
    picture=mc.playblast(fmt='image',f=dst,st=1001,et=1001,c="png",fo=1)
    #scenesinfos
    scenename=mc.file(sn=1,shn=1,q=1)
    sceneversion=str(scenename.split('_')[3])
    if not 'leTemple'in dst:
        sceneversion=sceneversion.strip('v')
    scenepath=mc.file(sn=1,q=1).replace('Tasks/Rig/Maya/scenes/'+scenename,'Publish/Rigging/')
    renderpath = os.path.join(scenepath,sceneversion,'render')
    proxypath= os.path.join(scenepath,sceneversion,'mid')
    if not os.path.isdir(renderpath):
        os.makedirs (renderpath)
    if not os.path.isdir(proxypath):
        os.makedirs (proxypath)
    newscenename=str(scenename.split('_')[0]+'_'+scenename.split('_')[2])
    #saving render
    rnd=mc.file(renderpath+'/'+newscenename,ea=1,pr=1,typ='mayaAscii',sh=1,ch=1)
    #saving proxy
    mc.undoInfo(ock=True,cn='chunkproxy')
    try:mc.delete('geo_render_grp')
    except Exception:pass
    try:mc.delete('mermaid_c_gev1')
    except Exception:pass
    try:mc.delete('ShapesSetup')
    except Exception:pass
    try:mc.delete('pose_deformers_grp')
    except Exception:pass
    try:mc.delete('trap_setup_grp')
    except Exception:pass
    try:mc.setAttr('geo_anim_grp.v',1)
    except Exception:pass
    try:mc.setAttr('rig_grp.v',l=0)
    except Exception:pass
    cleanUp()
    prx=mc.file(proxypath+'/'+newscenename,ea=1,pr=1,typ='mayaAscii',sh=1,ch=1)
    mc.undoInfo(cck=True)
    mc.undo('chunkproxy')
    #feedback
    print('Published render version: {0} \nPublished Proxy Version: {1} \nPlayblast: {2}'.format(rnd, prx, picture))
    # return ('published render version: '+ rnd +'\n published proxy version: '+prx +' and a playblast: '+ picture)

def publishMod():
    # createFolksAttr()
    # cleanUp()
    # smoothMesh()
    #screenshot
    dst=(mc.file(sn=1,q=1).replace('Tasks/Modeling/Maya/scenes/','Publish/Renders/Modeling/')).replace('.ma','')
    picture=mc.playblast(fmt='image',f=dst,st=1001,et=1001,c="png",fo=1)
    #scenesinfos
    scenename=mc.file(sn=1,shn=1,q=1)
    sceneversion=str(scenename.split('_')[3])
    if not 'leTemple'in dst:
        sceneversion=sceneversion.strip('v')
    scenepath=mc.file(sn=1,q=1).replace('Tasks/Modeling/Maya/scenes/'+scenename,'Publish/Modeling/')
    # if not os.path.isdir(scenepath):
    #     os.makedirs (scenepath)
    abcpath=str(scenename.split('_')[0]+'_'+scenename.split('_')[2]+'_'+sceneversion+'.abc')
    #saving ABC
    abc=mc.AbcExport(j='-frameRange 1001 1001 -stripNamespaces -uvWrite -worldSpace -writeUVSets -dataFormat ogawa -root'+ scenename.split('_')[0]+'_'+scenename.split('_')[2]+' -file '+scenepath+abcpath)


    print('Published abc version: {0}  \nPlayblast: {1}'.format(scenepath+'/'+abcpath, picture))
    return('Published abc version: {0}  \nPlayblast: {1}'.format(scenepath+'/'+abcpath, picture))
    



def listLastrigs():
    if 'siren' in cmds.file(q=1,sn=1): charspath='/Volumes/Projects/siren/Assets/Character/'
    if 'leTemple' in cmds.file(q=1,sn=1): charspath='/Volumes/Projects/leTemple/Assets/Character/'
    listOfChars=os.listdir(charspath)
    lastVersions=[]
    for each in listOfChars:
        try:
            versions=os.listdir(charspath+each+'/Publish/Rigging/')
            versions.sort()
            lastVersion=versions[-1]
            filePath=charspath+each+'/Publish/Rigging/'+str(lastVersion)+'/render/'+each+'_main.ma'
            fileStatsObj = os.stat ( filePath )
            lastVersions.append((filePath,time.ctime( fileStatsObj [ stat.ST_MTIME ] )))
        except Exception:
            pass
    return lastVersions


def updateRigs(resolution='render'):
    listofReferences=cmds.ls(et='reference')

    for each in listofReferences:
        oldpath=cmds.reference(q=1,rfn=each,f=1)
        filename=cmds.reference(q=1,rfn=each,f=1,sn=1)
        try:
            if 'Rigging/' in oldpath:
                choppath=oldpath.split('Rigging/')
                listofversions=os.listdir(choppath[0]+'Rigging/')
                listofversions.sort()
                lastVersion=listofversions[-1]   
                newfolderpath=choppath[0]+'Rigging/'+str(lastVersion)+'/'+resolution+'/'
                newpath=newfolderpath+'/'+os.listdir(newfolderpath)[0]
                # if 'leTemple' in cmds.file(q=1,sn=1):newpath=choppath[0]+'Rigging/'+str(lastVersion)+'/'+resolution+'/'+filename
                if oldpath!=newpath:
                    cmds.file(newpath, loadReference=each)
        except Exception:pass

def swichSpace():
    for each in cmds.ls(sl=1):
        eachoffset=cmds.listRelatives(each,p=1)[0]
        eachcste=cmds.listRelatives(eachoffset,c=1,typ='parentConstraint')[0]
        cstTlist=cmds.parentConstraint(eachcste,q=1,tl=1)
        print cstTlist
        sctwraplist=""
        for cstTar in cstTlist:
            sctwraplist+=":"+str(cstTar)    
        cmds.addAttr(each ,ln="switchSpace",at="enum",en=sctwraplist)
        cmds.setAttr(each+'.switchSpace',e=1,keyable=1)
        for csteach in cstTlist:
            cond=cmds.shadingNode('condition',au=1,n=each+'_'+csteach+'_condi')
            cmds.setAttr(cond+'.colorIfTrueR',1)
            cmds.setAttr(cond+'.colorIfFalseR',0)
            cmds.setAttr(cond+'.secondTerm',cstTlist.index(csteach))
            cmds.connectAttr(each+'.switchSpace',cond+'.firstTerm')
            attlist=cmds.listAttr(eachcste)
            for att in attlist:
                if csteach in att:
                    cmds.connectAttr(cond+'.outColor.outColorR',eachcste+'.'+att)
                    
def segmntScale0():
    for each in cmds.ls(sl=1):
        mc.setAttr(each+'.segmentScaleCompensate',0) 
        mc.setAttr(each+'.segmentScaleCompensate',k=1)
        
def LegRig():
    for each in cmds.ls(sl=1):
        cmds.listRelatives(ad=1)
        
def selSkJnt():
    infList=[]
    for each in mc.ls(sl=1):
        infList.extend(mc.skinCluster(inf=each,q=1))
    mc.select(infList)
    return(infList)


######################################################################################################
#####################################         TEST ZONE           ##################################
######################################################################################################
# getcrvweight('crv_mouth')
# getcrvweight('trail_mouth_up')
# getcrvweight('trail_mouth_mid')
# getcrvweight('trail_mouth_low')
#
# mvCrvStart(cmds.ls(sl=1)[0],offset=-1)
# mvCrvStart('polyToCurve1',offset=-1)

#####window####

#Type in the name and the size of the window
windowName = "toolbox"
windowSize = (230, 280)
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
cmds.button( label='offset', parent = "gridLayout", command=('offset()'))
cmds.button( label='tranSkin', parent = "gridLayout", command=('transfertSkinCluster()'))
cmds.button( label='fkThis', parent = "gridLayout", command=('fkThis(cmds.ls(sl=1))'))
cmds.button( label='selJnts', parent = "gridLayout", command=('selJnts()'))
cmds.button( label='selSkJnt', parent = "gridLayout", command=('selSkJnt()'))
cmds.button( label='segmntScale0', parent = "gridLayout", command=('segmntScale0()'))
cmds.button( label='swichSpace', parent = "gridLayout", command=('swichSpace()'))
cmds.button( label='upMOffsets', parent = "gridLayout", command=('upMOffsets()'))

# cmds.button( label='ikThis', parent = "gridLayout", command=('ikThis()'))
# cmds.button( label='flipIK', parent = "gridLayout", command=('flipik()'))
cmds.button( label='makeribbon', parent = "gridLayout", command=('makeribbon()'))
cmds.button( label='unlockJoints', parent = "gridLayout", command=('unlockJoints()'))
cmds.button( label='smoothMesh', parent = "gridLayout", command=('smoothMesh()'))
# cmds.button( label='dynChainZ', parent = "gridLayout", command=('dynChain(2)'))
cmds.button( label='find_duplicates', parent = "gridLayout", command=('pprint(find_short_name_duplicates())'))
# cmds.button( label='SwitchRez', parent = "gridLayout", command=('changeRig(1)'))
# cmds.button( label='UpRig', parent = "gridLayout", command=('changeRig(0)'))
# cmds.button( label='fixEuler', parent = "gridLayout", command=('fixEuler()'))
# cmds.button( label='transferskin', parent = "gridLayout", command=('transferskin()'))
# cmds.button( label='ResetSkin&BP', parent = "gridLayout", command=('ResetSkinAndBindPose()'))
# cmds.button( label='createUv2', parent = "gridLayout", command=('createUv2()'))
# cmds.button( label='deletAllUvSets', parent = "gridLayout", command=('deletAllUvSets()'))
# cmds.button( label='makelids', parent = "gridLayout", command=('makelids()'))
# cmds.button( label='makebrows', parent = "gridLayout", command=('makebrows()'))
# cmds.button( label='lowerlip', parent = "gridLayout", command=('lowerlip()'))
# cmds.button( label='upperlip', parent = "gridLayout", command=('upperlip()'))
cmds.button( label='red', parent = "gridLayout", command=('red()'))
cmds.button( label='blue', parent = "gridLayout", command=('blue()'))
cmds.button( label='yellow', parent = "gridLayout", command=('yellow()'))
cmds.button( label='lblue', parent = "gridLayout", command=('lblue()'))
cmds.button( label='pink', parent = "gridLayout", command=('pink()'))
cmds.button( label='orange', parent = "gridLayout", command=('orange()'))
cmds.button( label='yellow', parent = "gridLayout", command=('yellow()'))
cmds.button( label='green', parent = "gridLayout", command=('green()'))
cmds.button( label='reset', parent = "gridLayout", command=('reset()'))
cmds.button( label='lockMesh', parent = "gridLayout", command=('lockMesh()'))
cmds.button( label='unlockMesh', parent = "gridLayout", command=('unlockMesh()'))
cmds.button( label='prntToCste', parent = "gridLayout", command=('prntToCste()'))
cmds.button( label='listLastrigs', parent = "gridLayout", command=('pprint(listLastrigs()'))       
cmds.button( label='RigsHig', parent = "gridLayout", command=('updateRigs()'))        
cmds.button( label='RigsMid', parent = "gridLayout", command=('updateRigs("mid")'))        

# cmds.button( label='saveThumbnail', parent = "gridLayout", command=('saveThumbnail()'))
cmds.button( label='loadLastMesh', parent = "gridLayout", command=('loadLastMesh()'))
cmds.button( label='RigSanityCheck', parent = "gridLayout", command=('RigSanityCheck()'))
cmds.button( label='publishRig', parent = "gridLayout", command=('pprint(publishRig())'))
#cmds.button( label='Close', parent = "gridLayout", command=('cmds.deleteUI(\"' + window + '\", window=True)') )

#on this next line you can use setParent.. , if you dont wont to use -parent flag in zour button field
#cmds.setParent( '..' )
cmds.showWindow( windowName )
# Resize the main window
#
# This is a workaround to get MEL global variable value in Python
gMainWindow = mel.eval('$tmpVar=$gMainWindow')
cmds.window( windowName, edit=True, widthHeight=(windowSize[0], windowSize[1]) )
