import maya.cmds as cmds

###Create eye_rig###


def preparecurve(crv,crvtrm,frac):
    cmds.polyToCurve(f=3,dg=3,n='tmpcrv')
    cmds.duplicate('tmpcrv',n=crvtrm)
    cmds.delete('tmpcrv')
    cmds.rebuildCurve(crv,s=frac,kr=2,d=3,tol=0.01,rt=0,kep=1,kt=0,kcp=0,end=1)

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
    
def jointsoncurve(suff,locup,crv,molocs,locgrp,size,partname,ratio=0,isrig=None):
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
        spans = cmds.getAttr(crv+'.spans')
        spanfrac=(spans/2)*ratio
        cmds.setAttr(mp+'.uValue',(molocs.index(each)+spanfrac))
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

def jointsoncurveinv(suff,locup,crv,molocs,locgrp,size,partname,ratio=0,isrig=None):
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
        spans = cmds.getAttr(crv+'.spans')
        spanfrac=(spans/2)*ratio
        cmds.setAttr(mp+'.uValue',(spans-molocs.index(each))-spanfrac)
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
    crv1='crv_'+bsname
    crv2='crv_ib_'+bsname    
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
    cmds.skinCluster(jnt_up,smlfrn_l,smlfrn_r,trail+'_up',tsb=1)
    cmds.skinCluster(jnt_low,smlfrn_l,smlfrn_r,trail+'_low',tsb=1)
    cmds.skinCluster(jnt_low,jnt_up,smlfrn_l,smlfrn_r,trail+'_mid',tsb=1)

########################### DEF PARTS #################################


def makelids():
    molocs=['a','b','c','d','e','f','g','h','i','j']
    partname='lid'
    size=1   
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


def makebows():
    molocs=['a','b','c','d','e']
    partname='bow'
    size=1   
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
    createbsib(crvtrm,'up_bow_'+suff,partname+'_'+suff)
    createbsib(crvmir,'up_bow_'+suffmir,partname+'_'+suffmir)
    addbs(crvtrm,'dwn_bow_'+suff,partname+'_'+suff,1)
    addbs(crvmir,'dwn_bow_'+suffmir,partname+'_'+suffmir,1)
    addbs(crvtrm,'inn_bow_'+suff,partname+'_'+suff,2)
    addbs(crvmir,'inn_bow_'+suffmir,partname+'_'+suffmir,2)
    addbs(crvtrm,'out_bow_'+suff,partname+'_'+suff,3)
    addbs(crvmir,'out_bow_'+suffmir,partname+'_'+suffmir,3)

def makemouth():
    molocs=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p']
    partname='mouth'
    size=1   
    frac=(len(molocs))
    suff=''
    crvtrm='crv_'+partname
    crv=crvtrm+'Shape'
    locup='locup_'+partname
    locgrp='locTrail_'+partname
    ###calldefs###
    preparecurve(crv,crvtrm,frac)
    uplocs(locup,suff,'jnt_jaw',locgrp)
    jointsoncurve(suff,locup,crv,molocs,locgrp,size,partname)
    createbsib(crvtrm,'ou_'+suff,partname)
    addbs(crvtrm,'ai_'+suff,partname,1)
    addbs(crvtrm,'fv_'+suff,partname,2)
    addbs(crvtrm,'mp_'+suff,partname,3)
    
    ### make smilefrown systeme ###
    ratio=.75
    trailsmlfrn(crv,partname)

    jointsoncurve(suff,locup,'smlfrn_trail_'+partname,['smlfrn_wag_l'],locgrp,size,partname,.35,isrig=1)
    jointsoncurveinv(suff,locup,'smlfrn_trail_'+partname,['smlfrn_wag_r'],locgrp,size,partname,.35,isrig=1)
    ### make chariot systeme ###
    trailmouth(crv,partname,'jnt_head','jnt_jaw' ,'rig_smlfrn_wag_l_mouth','rig_smlfrn_wag_r_mouth')
    jointsoncurve(suff,locup,'trail_'+partname+'_up',['wag_up_l'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_up',['wag_up_r'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_up',['wag_up2_l'],locgrp,size,partname,ratio*1.25,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_up',['wag_up2_r'],locgrp,size,partname,ratio*1.25,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_mid',['wag_mid_l'],locgrp,size,partname,ratio,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_mid',['wag_mid_r'],locgrp,size,partname,ratio,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_low',['wag_low_l'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_low',['wag_low_r'],locgrp,size,partname,ratio*1.1,isrig=1)
    jointsoncurve(suff,locup,'trail_'+partname+'_low',['wag_low2_l'],locgrp,size,partname,ratio*1.25,isrig=1)
    jointsoncurveinv(suff,locup,'trail_'+partname+'_low',['wag_low2_r'],locgrp,size,partname,ratio*1.25,isrig=1)

    cmds.skinCluster('rig_wag_up_l_mouth', 'rig_wag_up_r_mouth', 'rig_wag_up2_l_mouth', 'rig_wag_up2_r_mouth', 'rig_wag_mid_l_mouth', 'rig_wag_mid_r_mouth', 'rig_wag_low_l_mouth', 'rig_wag_low_r_mouth', 'rig_wag_low2_l_mouth', 'rig_wag_low2_r_mouth'
,crv,tsb=1)
    
    

cmds.skinPercent
# makelids()
# makebows()
makemouth()