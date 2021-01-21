import maya.cmds as cmds
import maya.mel as mel



#### some lists of weight first###
grd_mouth=[[u'rig_wag_low_l_mouth', u'jnt_jaw', u'rig_wag_midlow_l_mouth', u'rig_wag_mid_l_mouth', u'rig_wag_midup_l_mouth', u'rig_wag_low_r_mouth', u'rig_wag_up_l_mouth', u'rig_wag_midlow_r_mouth', u'rig_wag_mid_r_mouth', u'jnt_headlow', u'rig_wag_midup_r_mouth', u'rig_wag_up_r_mouth'],
[0.0, 0.0, 0.0, 0.0, 0.004760013805512815, 0.0, 0.0, 0.0, 0.0, 0.49999999980780985, 0.4952399863866773, 0.0],
[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0],
[0.0, 0.0, 0.0, 0.0, 0.4952399863866773, 0.0, 0.0, 0.0, 0.0, 0.49999999980780985, 0.004760013805512815, 0.0],
[0.0, 0.0, 0.0, 0.09999999999999998, 0.5, 0.0, 0.4, 0.0, 0.0, 0.0, 0.0, 0.0],
[0.0, 0.08260401087897638, 0.0, 0.15000000000000002, 0.0, 0.0, 0.7, 0.0, 0.0, 0.06739598912102363, 0.0, 0.0],
[0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
[0.4, 0.0, 0.0, 0.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
[0.5, 0.24999999967233538, 0.0, 0.2500000003276646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
[0.0, 0.5, 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
[0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
[0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0],
[0.0, 0.25, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0],
[0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.0, 0.0, 0.6, 0.0, 0.0, 0.0],
[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0],
[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.0, 0.0, 0.7],
[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.09999999999999998, 0.0, 0.5, 0.4]]

grd_trail_mouth_up=[[u'jnt_headOffset', u'rig_smlfrn_wag_l_mouth', u'rig_smlfrn_wag_r_mouth'],
[0.019695211591536314, 0.0, 0.9803047884084636],
[0.004524616244800985, 0.0, 0.9954753837551991],
[0.333352, 0.0, 0.666648],
[0.5011030000000001, 0.0, 0.498897],
[0.7499998999999999, 0.0167781, 0.233222],
[1.0, 0.0, 0.0],
[0.7499998999999999, 0.233222, 0.0167781],
[0.5011030000000001, 0.498897, 0.0]]

grd_trail_mouth_mid=[[u'jnt_jaw', u'jnt_headOffset', u'rig_smlfrn_wag_l_mouth', u'rig_smlfrn_wag_r_mouth'],
[0.031051057296029475, 0.0, 0.0, 0.9689489427039706],
[0.007627466585605055, 0.0, 0.0, 0.9923725334143949],
[0.166684, 0.166684, 0.0, 0.666632],
[0.251116, 0.251116, 0.0, 0.497768],
[0.383747, 0.38374699999999995, 0.0, 0.232506],
[0.5, 0.5, 0.0, 0.0],
[0.383747, 0.383747, 0.232506, 0.0],
[0.251116, 0.251116, 0.497768, 0.0]]

grd_trail_mouth_low=[[u'jnt_jaw', u'rig_smlfrn_wag_l_mouth', u'rig_smlfrn_wag_r_mouth'],
[0.031051057296029475, 0.0, 0.9689489427039706],
[0.007627466585605055, 0.0, 0.9923725334143949],
[0.333368, 0.0, 0.666632],
[0.502232, 0.0, 0.497768],
[0.767494, 0.0, 0.232506],
[1.0, 0.0, 0.0],
[0.767494, 0.232506, 0.0],
[0.502232, 0.497768, 0.0]]
###Create eye_rig###


def preparecurve(crv,crvtrm,frac):
    cmds.polyToCurve(f=3,dg=1,n='tmpcrv')
    cmds.duplicate('tmpcrv',n=crvtrm)
    cmds.delete('tmpcrv')
    cmds.rebuildCurve(crv,s=frac,kr=2,d=3,tol=0.01,rt=0,kep=1,kt=0,kcp=0,end=1)

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
 
 
 

def jointsoncurve(suff,locup,crv,molocs,locgrp,size,partname, ratio=1.0,isrig=None):
    molen=float(len(molocs))
    for each in molocs:
        if suff =='':
            name=each+'_'+partname
        else:
            name=each+'_'+partname+'_'+suff
        loc='loc_'+each+'_'+partname+'_'+suff
        mp='mp_'+name
        ctrl='ctrl_'+name
        grp=ctrl+'_offset'
        if isrig==1:
            jnt='rig_'+name
        else:
            jnt='jnt_'+name
        cmds.spaceLocator(n=loc)
        cmds.parent(loc,locgrp)
        cmds.createNode('motionPath',n=mp)
        cmds.connectAttr(crv+'.worldSpace[0]', mp+'.geometryPath')
        cmds.connectAttr(mp+'.allCoordinates', loc+'.translate')
        cmds.connectAttr(mp+'.rotate ', loc+'.rotate')
        spans = float(cmds.getAttr(crv+'.spans'))
        spanfrac=float(spans/molen)*1
        print molocs.index(each)*spanfrac
        cmds.setAttr(mp+'.uValue',(molocs.index(each)*spanfrac))
        cmds.setAttr(mp+'.worldUpType',1)
        cmds.connectAttr(locup+'.worldMatrix[0]',mp+'.worldUpMatrix')
        cmds.circle(n=ctrl,r=size)
        cmds.group(n=grp)
        locpos=cmds.xform(loc,q=1,t=1)
        cmds.xform(grp,t=locpos)
        cmds.pointConstraint(loc,grp,mo=1)
        cmds.parent(grp,'ctrl_root')
        cmds.joint(n=jnt)
        if isrig==1:
            cmds.parent(jnt,locgrp)
        else:
            cmds.parent(jnt,'jnt_face')
        cmds.parentConstraint(ctrl,jnt,mo=0)

def jointsoncurveinv(suff,locup,crv,molocs,locgrp,size, partname,ratio=1,isrig=None):
    molen=len(molocs)
    for each in molocs:
        if suff =='':
            name=each+'_'+partname
            loc='loc_'+each+'_'+partname+'_'+suff
        else:
            name=each+'_'+partname+'_'+suff
            loc='loc_'+each+'_'+partname+'_'+suff

        mp='mp_'+name
        ctrl='ctrl_'+name
        grp=ctrl+'_offset'
        if isrig==1:
            jnt='rig_'+name
        else:
            jnt='jnt_'+name
        cmds.spaceLocator(n=loc)
        cmds.parent(loc,locgrp)
        cmds.createNode('motionPath',n=mp)
        cmds.connectAttr(crv+'.worldSpace[0]', mp+'.geometryPath')
        cmds.connectAttr(mp+'.allCoordinates', loc+'.translate')
        cmds.connectAttr(mp+'.rotate ', loc+'.rotate')
        spans = cmds.getAttr(crv+'.spans')
        spanfrac=(spans/molen)*ratio
        cmds.setAttr(mp+'.uValue',molocs.index(each)*spanfrac)
        cmds.setAttr(mp+'.worldUpType',1)
        cmds.connectAttr(locup+'.worldMatrix[0]',mp+'.worldUpMatrix')
        cmds.circle(n=ctrl,r=size,cz=2*size)
        cmds.group(n=grp)
        locpos=cmds.xform(loc,q=1,t=1)
        cmds.xform(grp,t=locpos)
        cmds.parentConstraint(loc,grp,mo=1)
        cmds.parent(grp,'ctrl_root')
        cmds.joint(n=jnt)
        if isrig==1:
            cmds.parent(jnt,locgrp)
        else:
            cmds.parent(jnt,'jnt_face')
        cmds.parentConstraint(ctrl,jnt,mo=0)

def createbsib(crv,bsname,partname):
    if cmds.objExists (partname) ==0:
        cmds.group (em=1,n=partname)
    else:
        pass
    crv2='crv_'+bsname
    crv1='crv_ib_'+bsname    
    cmds.duplicate(crv,n='crv_'+bsname)
    cmds.duplicate(crv,n='crv_ib_'+bsname)
    cmds.parent(crv1,partname)
    cmds.parent(crv2,partname)
    cmds.blendShape(crv1,crv2,crv,tc=0,ib=1,n='bs_'+partname)
    
def createbs(crv,bsname,partname):
    if cmds.objExists (partname) ==0:
        cmds.group (em=1,n=partname)
    else:
        pass
    crv1='crv_'+bsname
    cmds.duplicate(crv,n='crv_'+bsname)
    cmds.parent(crv1,partname)
    cmds.blendShape(crv1,crv,tc=0,ib=0,n='bs_'+partname)

def addbs(crv,bsname,partname,index):
    crv1='crv_'+bsname
    cmds.duplicate(crv,n=crv1)
    cmds.parent(crv1,partname)
    cmds.blendShape('bs_'+partname,t=(crv,index,crv1,1.0),e=1)


def trailsmlfrn(crv,partname):
    mthbnd=cmds.exactWorldBoundingBox(crv)
    size=(mthbnd[3]-mthbnd[0])*1.4
    centerfortrail=[round(((mthbnd[3]+mthbnd[0])/2),2),
    round(((mthbnd[4]+mthbnd[1])/2),2),
    round(((mthbnd[5]+mthbnd[2])/2),2)]
    trail='trail_'+partname
    cmds.circle(r=size,n='smlfrn_'+trail,nrz=0,nry=1,sw=180,cx=size*0.5,cy=-size*0.5)
    cmds.xform('smlfrn_'+trail,t=centerfortrail,ro=(90,0,90))
    cmds.skinCluster('jnt_jaw','jnt_headOffset','smlfrn_'+trail,tsb=1)

def trailmouth(crv,partname,jnt_up,jnt_low,smlfrn_l,smlfrn_r):
    mthbnd=cmds.exactWorldBoundingBox(crv)
    size=(mthbnd[3]-mthbnd[0])*1.4
    centerfortrail=[round(((mthbnd[3]+mthbnd[0])/2),2),
    round(((mthbnd[4]+mthbnd[1])/2),2),
    round(((mthbnd[5]+mthbnd[2])/2),2)]
    trail='trail_'+partname
    cmds.circle(r=size,n=trail,nrz=0,nry=1,sw=180,cx=size*0.92)
    cmds.xform(trail,t=centerfortrail,ro=(0,90,0))
    cmds.circle(r=size,n='smlfrn_'+trail,nrz=0,nry=1,sw=180,cx=size*0.5,cy=-size*0.5)
    cmds.xform('smlfrn_'+trail,t=centerfortrail,ro=(90,0,90))
    cmds.duplicate(trail,n=trail+'_up')
    cmds.duplicate(trail,n=trail+'_mid')
    cmds.duplicate(trail,n=trail+'_low')
    cmds.delete(trail)
###copyskins on curves
###cmds.skinCluster('trail_mouth_mid.cv[5] ',q=1,inf=1)

def cnt_bs_to_board(partname,ctrlname,bsname,bsplus,axis,mult=100,suff=None,bsminus=None):
    if suff !=None:
        suff='_'+suff
    if suff==None:
        suff=''
    cmds.shadingNode('condition',au=1,n='cnd_'+partname+suff)
    cmds.shadingNode('multiplyDivide',au=1,n='mul_'+partname+suff)
    cmds.shadingNode('multiplyDivide',au=1,n='invert_'+partname+suff)
    cmds.connectAttr('mul_'+partname+suff+'.outputX','cnd_'+partname+suff+'.firstTerm',f=1)
    cmds.connectAttr(ctrlname+'.t'+axis,'mul_'+partname+suff+'.input1X',f=1)
    cmds.connectAttr('mul_'+partname+suff+'.outputX', 'cnd_'+partname+suff+'.colorIfTrueR',f=1)
    cmds.connectAttr('invert_'+partname+suff+'.outputX', 'cnd_'+partname+suff+'.colorIfFalseG',f=1)
    cmds.setAttr('invert_'+partname+suff+'.input2X',-1)
    cmds.setAttr('cnd_'+partname+suff+'.operation',3)
    cmds.connectAttr('cnd_'+partname+suff+'.outColorR',bsname+'.'+bsplus,f=1)
    if bsminus!=None:
        cmds.connectAttr('cnd_'+partname+suff+'.outColorG',bsname+'.'+bsminus,f=1)
    cmds.setAttr('mul_'+partname+suff+'.input2X',mult)
    cmds.connectAttr('mul_'+partname+suff+'.outputX','invert_'+partname+suff+'.input1X',f=1)
    cmds.setAttr('cnd_'+partname+suff+'.colorIfFalseR',0)

def cnt_mp_to_board(nodename,crv,ctrlname,suff,mpname,axis,mir=0,fact=2):
    spans=cmds.getAttr(crv+'.spans')
    uval=cmds.getAttr(mpname+'.uValue')
    if spans>uval*2:
        uvalue=cmds.getAttr(mpname+'.uValue')
        max=uvalue-uvalue*fact
        min=uvalue+uvalue*fact
    else:
        uvalue=spans-cmds.getAttr(mpname+'.uValue')
        min=(spans-uvalue)-(uvalue*fact)
        max=(spans-uvalue)+(uvalue*fact)
    cmds.shadingNode('multiplyDivide',au=1,n='mul_'+nodename+'_'+suff)
    cmds.shadingNode('setRange',au=1,n='setRange_'+nodename+'_'+suff)
    cmds.connectAttr(ctrlname+'.t'+axis,'mul_'+nodename+'_'+suff+'.input1X',f=1)
    cmds.connectAttr('mul_'+nodename+'_'+suff+'.outputX', 'setRange_'+nodename+'_'+suff+'.valueY',f=1)
    cmds.connectAttr('setRange_'+nodename+'_'+suff+'.outValueY', mpname+'.uValue',f=1)
    cmds.setAttr('mul_'+nodename+'_'+suff+'.input2X', 100)
    cmds.setAttr('setRange_'+nodename+'_'+suff+'.maxY',max)
    cmds.setAttr('setRange_'+nodename+'_'+suff+'.minY',min)
    cmds.setAttr('setRange_'+nodename+'_'+suff+'.oldMinY', -1)
    cmds.setAttr('setRange_'+nodename+'_'+suff+'.oldMaxY', 1)


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

def mpinterco(driver,drivenlist):
    lendrv=len(drivenlist)
    if lendrv<=3:
        mul='mul_drive'+driver
        cmds.shadingNode('multiplyDivide',au=1,n=mul)
        cmds.setattr(mul+'.operation',2)
        udriv=cmds.getAttr(driver+'.uValue')
        listinp=(X,Y,Z)
        for each in range(0,lendrv):
            peach=drivenlist(each)
            ueach=cmds.getAttr(peach+'.uValue')
            leach=listinp(each)
            plus='plus_drive_'+peach
            cmds.shadingNode('plusMinusAverage',au=1,n=mul)
            blip=1-(udriv/ueach)
            cmds.setattr(plus+'input1D[0]',ueach)
            cmds.connectAttr(mul+'.output.output'+leach,plus+'input1D[1]',ueach)
            cmds.setattr(mul+'input1'+leach,udriv)
            cmds.setattr(mul+'input2'+leach,ueach)
            plusMinusAverage59.input2D[0]

#######################################################################

########################### DEF PARTS #################################

#######################################################################


def makelids():
    molocs=['a','b','c','d','e','f','g','h','i','j']
    partname='lid'
    size=.2   
    frac=(len(molocs))
    suff='l'
    suffmir='r'
    crvtrm='crv_'+partname+'_'+suff
    crv=crvtrm+'Shape'
    crvmirtrm='crv_'+partname+'_'+suffmir
    crvmir=crvmirtrm+'Shape'
    locup='locup_'+partname+suff
    locupmir='locup_'+partname+suffmir
    locgrpmir='locTrail_'+partname+'_'+suffmir
    locgrp='locTrail_'+partname+'_'+suff
    ###calldefs###
    preparecurve(crv,crvtrm,frac)
    mirrorcrv(crv,crvmirtrm)
    uplocs(locup,suff,'jnt_eye_l',locgrp)
    uplocs(locupmir,suffmir,'jnt_eye_r',locgrpmir)
    jointsoncurve(suff,locup,crv,molocs,locgrp,size,partname)
    jointsoncurve(suffmir,locupmir,crvmir,molocs,locgrpmir,size,partname)
    frzcrv(crvmirtrm)
    createbsib(crvtrm,'close_lid_'+suff,partname+'_'+suff)
    createbsib(crvmir,'close_lid_'+suffmir,partname+'_'+suffmir)
    addbs(crvtrm,'open_lid_'+suff,partname+'_'+suff,1)
    addbs(crvmir,'open_lid_'+suffmir,partname+'_'+suffmir,1)
    ###connect to faceboard####
    # cnt_bs_to_board('lid','ctrl_faceboard_eyelidBlink_l','bs_lid_l','crv_open_lid_l','y',bsminus='crv_close_lid_l',suff='l')
    # cnt_bs_to_board('lid','ctrl_faceboard_eyelidBlink_r','bs_lid_r','crv_open_lid_r','y',bsminus='crv_close_lid_r',suff='r')
    # cnt_bs_to_board('lid','ctrl_faceboard_eyelidUp_l','bs_lid_l','crv_open_lid_l','y',bsminus='crv_close_lid_l',suff='l')
    # cnt_bs_to_board('lid','ctrl_faceboard_eyelidBlink_r','bs_lid_r','crv_open_lid_r','y',bsminus='crv_close_lid_r',suff='r')

def makebrows():
    molocs=['a','b','c','d','e']
    partname='brow'
    size=.2   
    frac=(1-len(molocs))
    suff='l'
    suffmir='r'
    crvtrm='crv_'+partname+'_'+suff
    crv=crvtrm+'Shape'
    crvmirtrm='crv_'+partname+'_'+suffmir
    crvmir=crvmirtrm+'Shape'
    locup='locup_'+partname+suff
    locupmir='locup_'+partname+suffmir
    locgrpmir='locTrail_'+partname+'_'+suffmir
    locgrp='locTrail_'+partname+'_'+suff
    ratio=0
    ###calldefs###
    preparecurve(crv,crvtrm,frac)
    mirrorcrv(crv,crvmirtrm)
    uplocs(locup,suff,'jnt_eye_l',locgrp)
    uplocs(locupmir,suffmir,'jnt_eye_r',locgrpmir)
    jointsoncurve(suff,locup,crv,molocs,locgrp,size,partname)
    jointsoncurve(suffmir,locupmir,crvmir,molocs,locgrpmir,size,partname)
    frzcrv(crvmirtrm)
    createbs(crvtrm,'up_brow_'+suff,partname+'_'+suff)
    createbs(crvmir,'up_brow_'+suffmir,partname+'_'+suffmir)
    addbs(crvtrm,'dwn_brow_'+suff,partname+'_'+suff,1)
    addbs(crvmir,'dwn_brow_'+suffmir,partname+'_'+suffmir,1)
    addbs(crvtrm,'inn_brow_'+suff,partname+'_'+suff,2)
    addbs(crvmir,'inn_brow_'+suffmir,partname+'_'+suffmir,2)
    addbs(crvtrm,'out_brow_'+suff,partname+'_'+suff,3)
    addbs(crvmir,'out_brow_'+suffmir,partname+'_'+suffmir,3)
    ###connect to faceboard####
    # cnt_bs_to_board('browx','ctrl_faceboard_eyebrow_l','bs_brow_l','crv_up_brow_l','y',suff='l',bsminus='crv_dwn_brow_l')
    # cnt_bs_to_board('browy','ctrl_faceboard_eyebrow_l','bs_brow_l','crv_inn_brow_l','x',suff='l',bsminus='crv_out_brow_l')
    # cnt_bs_to_board('browx','ctrl_faceboard_eyebrow_r','bs_brow_r','crv_up_brow_r','y',suff='r',bsminus='crv_dwn_brow_r')
    # cnt_bs_to_board('browy','ctrl_faceboard_eyebrow_r','bs_brow_r','crv_inn_brow_r','x',suff='r',bsminus='crv_out_brow_r')

def preparemouth():
    molocs=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p']
    partname='mouth'
    size=.2   
    frac=(len(molocs))
    suff=''
    crvtrm='crv_'+partname
    crv=crvtrm+'Shape'
    locup='locup_'+partname
    locgrp='locTrail_'+partname
    ###calldefs###
    preparecurve(crv,crvtrm,frac)


def makemouth():
    molocs=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p']
    partname='mouth'
    size=.2   
    frac=(len(molocs))
    suff=''
    crvtrm='crv_'+partname
    crv=crvtrm+'Shape'
    locup='locup_'+partname
    locgrp='locTrail_'+partname
    ###calldefs###
    mirCrv(crv,mir=0)
    uplocs(locup,suff,'jnt_jaw',locgrp)
    jointsoncurve(suff,locup,crv,molocs,locgrp,size,partname)
    createbs(crvtrm,'o'+suff,partname)
    addbs(crvtrm,'yu'+suff,partname,1)
    addbs(crvtrm,'ai'+suff,partname,2)
    addbs(crvtrm,'fv'+suff,partname,3)
    addbs(crvtrm,'mp'+suff,partname,4)
    ### make smilefrown systeme ###
    ratio=.75
    trailsmlfrn(crv,partname)
    jointsoncurve(suff,locup,'smlfrn_trail_'+partname,['smlfrn_wag_r'],locgrp,size,partname,.35,isrig=1)
    jointsoncurveinv(suff,locup,'smlfrn_trail_'+partname,['smlfrn_wag_l'],locgrp,size,partname,.35,isrig=1)
    ### make chariot systeme ###
    trailmouth(crv,partname,'jnt_headOffset','jnt_jaw' ,'rig_smlfrn_wag_l_mouth','rig_smlfrn_wag_r_mouth')
    jointsoncurveinv(suff,locup,'trail_'+partname+'_up',['wag_up_l'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_up',['wag_up_r'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_up',['wag_up2_l'],locgrp,size,partname,ratio*1.25,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_up',['wag_up2_r'],locgrp,size,partname,ratio*1.25,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_mid',['wag_mid_l'],locgrp,size,partname,ratio,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_mid',['wag_mid_r'],locgrp,size,partname,ratio,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_low',['wag_low_l'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_low',['wag_low_r'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_low',['wag_low2_l'],locgrp,size,partname,ratio*1.25,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_low',['wag_low2_r'],locgrp,size,partname,ratio*1.25,isrig=1)
    ###skin Rig Curves###
    pastcrvweight('crv_mouth',grd_mouth)
    pastcrvweight('trail_mouth_up',grd_trail_mouth_up)
    pastcrvweight('trail_mouth_mid',grd_trail_mouth_mid)
    pastcrvweight('trail_mouth_low',grd_trail_mouth_low)
    ###connect motionPathes to board###
    cnt_mp_to_board('smlfrn','smlfrn_trail_'+partname, 'ctrl_faceboard_lipCorner_l', 'l', 'mp_smlfrn_wag_l_mouth', 'y',fact=.5)
    cnt_mp_to_board('smlfrn','smlfrn_trail_'+partname, 'ctrl_faceboard_lipCorner_r', 'r', 'mp_smlfrn_wag_r_mouth', 'y', mir=1,fact=.5)
    cnt_mp_to_board('bigsmall','trail_'+partname+'_mid', 'ctrl_faceboard_lipCorner_l', 'l', 'mp_wag_mid_l_mouth', 'x',mir=0,fact=.2)
    cnt_mp_to_board('bigsmall','trail_'+partname+'_mid', 'ctrl_faceboard_lipCorner_r', 'r', 'mp_wag_mid_r_mouth', 'x',mir=0,fact=.2)
    ###connect BlendShapes to board###
    # cnt_bs_to_board('mouth_o','ctrl_faceboard_O','bs_mouth','crv_o','x',mult=100/7)
    # cnt_bs_to_board('mouth_yu','ctrl_faceboard_YU','bs_mouth','crv_yu','x',mult=100/7)
    # cnt_bs_to_board('mouth_mp','ctrl_faceboard_WQ','bs_mouth','crv_mp','x',mult=100/7)
    # cnt_bs_to_board('mouth_fv','ctrl_faceboard_upperLipRollInside','bs_mouth','crv_fv','x',mult=100/7)
    # cnt_bs_to_board('mouth_ai','ctrl_faceboard_lowerLipRollInside','bs_mouth','crv_ai','x',mult=100/7)



if cmds.objExists('jnt_face')==0:
    cmds.spaceLocator(n='jnt_face')


# makelids()
# makebrows()
# preparemouth()
# makemouth()






######################################################################################################
#####################################         TEST ZONE           ##################################
######################################################################################################
# getcrvweight('crv_mouth')
# getcrvweight('trail_mouth_up')
# getcrvweight('trail_mouth_mid')
# getcrvweight('trail_mouth_low')

# mvCrvStart(cmds.ls(sl=1)[0],offset=-1)
# mvCrvStart('crv_lid_l',offset=1)


cnt_bs_to_board('ph_o','ctrl_faceboard_O','phonems','ph_o','x',mult=100/7)
cnt_bs_to_board('ph_yu','ctrl_faceboard_YU','phonems','ph_yu','x',mult=100/7)
cnt_bs_to_board('ph_mp','ctrl_faceboard_WQ','phonems','ph_mp','x',mult=100/7)
cnt_bs_to_board('ph_fv','ctrl_faceboard_upperLipRollInside','phonems','ph_fv','x',mult=100/7)
cnt_bs_to_board('ph_ai','ctrl_faceboard_lowerLipRollInside','phonems','ph_ai','x',mult=100/7)

import maya.cmds as cmds
import maya.mel as mel

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

mirCrv('polyToCurve1',mir=0)

selection=cmds.ls(sl=1)
selection2=cmds.ls(sl=1)
for each in selection:
    cmds.shadingNode('plusMinusAverage', au=1,n='plusminus'+each)
    cmds.connectAttr(each+'.rz','plusminus'+each+'.input1D[1]',f=1)
    pouet=cmds.getAttr('plusminus'+each+'.input1D[1]')
    cmds.setAttr('plusminus'+each+'.input1D[0]',pouet)
    cmds.setAttr('plusminus'+each+'.operation', 2)
    cmds.shadingNode('multiplyDivide', au=1,n='muldiv'+each)
    cmds.connectAttr('plusminus'+each+'.output1D','muldiv'+each+'.input1X')
    cmds.connectAttr('muldiv'+each+'.outputX', selection2[selection.index(each)]+'.rz',f=1)
    cmds.setAttr('muldiv'+each+'.input2X', -1)
    
    
    
for each in cmds.ls(sl=1):
    cmds.connectAttr('multiplyDivide95.outputY', each+'.frontTwist',f=1)
    
    
    
for each in cmds.ls(sl=1):
    cmds.setAttr(each+'.rotateOrder',5)
    
    
    cnt_bs_to_board(partname,ctrlname,bsname,bsplus,axis, mult=100,suff=None,bsminus=None)
def cnt_bs_to_board(partname,ctrlname,bsname,bsplus,axis, mult=100,suff=None,bsminus=None):
    # if suff !=None:
    #     suff='_'+suff
    # if suff==None:
    #     suff=''
    cmds.shadingNode('condition',au=1,n='cnd_'+partname+suff)
    # cmds.shadingNode('multiplyDivide',au=1,n='mul_'+partname+suff)
    # cmds.shadingNode('multiplyDivide',au=1,n='invert_'+partname+suff)
    # cmds.connectAttr('mul_'+partname+suff+'.outputX','cnd_'+partname+ suff+'.firstTerm',f=1)
    # cmds.connectAttr(ctrlname+'.t'+axis,'mul_'+partname+suff+'.input1X',f=1)
    # cmds.connectAttr('mul_'+partname+suff+'.outputX', 'cnd_'+partname+suff+'.colorIfTrueR',f=1)
    # cmds.connectAttr('invert_'+partname+suff+'.outputX', 'cnd_'+partname+suff+'.colorIfFalseG',f=1)
    # cmds.setAttr('invert_'+partname+suff+'.input2X',-1)
    # cmds.setAttr('cnd_'+partname+suff+'.operation',3)
    # cmds.connectAttr()
    # cmds.connectAttr()
    # cmds.setAttr('mul_'+partname+suff+'.input2X',mult)
    # cmds.connectAttr('mul_'+partname+suff+'.outputX','invert_'+ partname+suff+'.input1X',f=1)
    # cmds.setAttr('cnd_'+partname+suff+'.colorIfFalseR',0)
