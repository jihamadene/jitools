import maya.cmds as cmds
import maya.cmds as mc
from maya.cmds import *
######DefSkeleton######
root=[
('root',(0,0,0)),
('fly',(0,9,0)),
('cog',(0,0,0),(0,0,90)),
]
spine=[
('hips',(0,9,0),(0,0,90)),
('spine01',(1,0,0)),
('spine02',(1,0,0)),
('spine03',(1,0,0)),
('chest',(1,0,0)),
]
head=[
('neck',(2,0,0)),
# ('neck',(2,0,0))
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
# ('foreleg_roll',(2,0,0)),
('foot',(4,0,0),(0,0,47.5)),
('ball',(1,0,0),(0,0,45)),
('foottip',(1,0,0)),
]

spineList=['hip','spine','chest','neck','head']
armList=['clav','arm','foreArm','hand']
fingerList=['meta','base','thumb_mid','end','tip']
legList=['leg','foreLeg','foot','heel','ball','tip']

def skeleton(part,suff=None,p=None):
    if p!=None:
        select(p)
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
        joint(n=jntname,p=pos,r=1,o=ori)
        setAttr(jntname+'.jointOrientX',k=1)
        setAttr(jntname+'.jointOrientY',k=1)
        setAttr(jntname+'.jointOrientZ',k=1)

# def offset(selectedItem):

#     offgroup= group(em=1,name=selectedItem+'_offset')
#     parent(offgroup,selectedItem, r=1)
#     parent(offgroup,w=1)
#     parent(selectedItem,offgroup)
#     return offgroup

def offset(selectedItem):

    offgroup= group(em=1,name=selectedItem+'_offset')
    parent(offgroup,selectedItem, r=1)
    parent(offgroup,w=1)
    parent(selectedItem,offgroup)
    return offgroup

def offsetgrp():
    selection=cmds.ls(sl=1)
    for each in selection:
        cmds.select(cl=1)
        eachparent=cmds.listRelatives(each,p=1)
        offgrp=cmds.group(em=1, n=each+'_offset2')
        cmds.parent(offgrp,each,r=1)
        cmds.parent(offgrp,eachparent,a=1)
        cmds.parent(each,offgrp,a=1)

# def offset():
#     selection = pm.selected()
#     for selectedItem in selection:
#         offgroup= pm.group(em=True,name=(selectedItem.name()+'_offset'))
#         offgroup.setParent(selectedItem, r=True)
#         offgroup.setParent(w=True)
#         selectedItem.setParent(offgroup)




####
def AutoClav(jnt_clav='jnt_shoulder_l'):
    jnt_arm=mc.listRelatives(jnt_clav,c=1,typ='joint')[0]
    if mc.parentConstraint(jnt_clav,q=1):
        ctrl_clav=mc.parentConstraint(jnt_clav,q=1,tl=1)[0]
    else:ctrl_clav=fkThis([jnt_clav])[0]
    mc.group(ctrl_clav,p=mc.listRelatives(ctrl_clav,p=1)[0],n=ctrl_clav+'_autoclav')
    ikh=mc.ikHandle(n=jnt_clav.replace('jnt','ikh'),sj=jnt_clav,ee=jnt_arm)[0]
    print ikh
    offikh=offsetgrp([ikh])
    print offikh
    if mc.parentConstraint(jnt_arm,q=1):
        ctrl_arm=mc.parentConstraint(jnt_arm,q=1,tl=1)[0]
    else:ctrl_arm=fkThis([jnt_arm])[0]
    ctrl_arm_offset=mc.listRelatives(ctrl_arm,p=1)[0]
    mc.delete(mc.parentConstraint(ctrl_arm_offset,q=1))
    mc.parentConstraint(ctrl_clav,ctrl_arm_offset,mo=1)
    mc.parentConstraint(ctrl_arm,offikh,mo=1)
    pole=mc.spaceLocator(n=jnt_clav.replace('jnt','pole'))[0]
    print pole
    polecste=mc.parentConstraint(ctrl_clav,pole,mo=0)[0]
    print polecste
    poloffset=mc.getAttr(jnt_arm+'.tx')
    mc.setAttr(polecste+'.target[0].targetOffsetTranslateX',(poloffset)*-.5)
    mc.setAttr(polecste+'.target[0].targetOffsetTranslateY',(poloffset)*-2)
    mc.poleVectorConstraint(pole,ikh)
    dim=mc.createNode('distanceDimShape',n=jnt_clav.replace('jnt','dist'),p=ikh)
    pos_clav=mc.createNode('locator',n=jnt_clav.replace('jnt','pos'),p=jnt_clav)
    pos_arm=mc.createNode('locator',n=jnt_arm.replace('jnt','pos'),p=ikh)
    mc.connectAttr(pos_clav+'.worldPosition[0]', dim+'.startPoint')
    mc.connectAttr(pos_arm+'.worldPosition[0]', dim+'.endPoint')

    mc.disconnectAttr(mc.listConnections(jnt_arm+'.ty',p=1)[-1],jnt_arm+'.ty')
    mc.disconnectAttr(mc.listConnections(jnt_arm+'.tz',p=1)[-1],jnt_arm+'.tz')
    mc.connectAttr(dim+'.distance',jnt_arm+'.tx',f=1)
    
 

  
    
 
# dupList=duplicate(po=1)

# for each in dupList:
#     print each
#     reach=each.replace('jnt_','rig_')
#     cmds.rename(each,reach)
#     if '_l1' in reach:
#         cmds.rename(reach,reach.replace('_l1','_l'))
#     if '_r1' in reach:
#         cmds.rename(reach,rach.replace('_r1','_r'))
        

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
        



def Leg(jnt_hip,jnt_knee, jnt_ankle,jnt_ball,jnt_tip):
    suff=str(jnt_hip).split('_')[-1]
    ikankle=ikHandle (n='ik_'+jnt_ankle,sj=jnt_hip ,ee=jnt_ankle,sol='ikRPsolver')
    ikball=ikHandle (n='ik_'+jnt_ball,sj=jnt_ankle ,ee=jnt_ball,sol='ikSCsolver')
    iktip=ikHandle (n='ik_'+jnt_tip,sj=jnt_ball ,ee=jnt_tip,sol='ikSCsolver') 
    rigfoot=cmds.spaceLocator (n='rig_foot_'+suff)
    parent (rigfoot,jnt_ankle,r=1)
    parent (rigfoot,w=1,a=1)
    xform(rigfoot,ro=(0,0,0))
    pivinn= group (n='pivInn_'+suff, em=1,p=jnt_ball)
    pivankle= group (n='pivAnkle_'+suff, em=1,p=jnt_ankle)
    parent (pivinn,rigfoot)
    setAttr(pivinn+'.rx',0)
    setAttr(pivinn+'.rz',0)
    cste=aimConstraint(iktip,pivinn,o=[0,0,0],aim=[1,0,0],u=[0,1,0],wut="vector",wu=[0,1,0],sk=['x','z'])
    delete(cste)
    
    pivout=duplicate(pivinn,n='pivOut_'+suff)
    pivball=duplicate(pivinn,n='pivBall_'+suff)
    pivtip=duplicate(pivinn,n='pivTip_'+suff)
    pivheel=duplicate(pivinn,n='pivHeel_'+suff)
    # maya.mel.eval(MatchTransform)
    parent (pivout,pivinn)
    parent (pivheel,pivout)
    parent (pivtip,pivheel)
    parent (pivankle,pivtip)
    parent (iktip[0],pivtip)
    parent (ikball[0],pivball)
    parent (ikankle[0],pivankle)
    ctrlik= circle (n='ctrl_leg_ik_'+suff,nry=1,nrz=0)
    offctrlik= offset(ctrlik[0])
    parent(offctrlik,jnt_ankle,r=1)
    parent(offctrlik,w=1)
    xform(offctrlik,ro=(0,0,0))
    parentConstraint(ctrlik,rigfoot)
    
    
# def ntrx(ntrxTarget):
    # instance(ntrxTarget, [leaf=boolean], name=ntrx+'Target', [smartTransform=boolean])  ntrxTarget 
    
    
def jntofz(njnt):
    for ojnt in njnt:
        jnt_ofz = spaceLocator 





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


###ikSwitch:




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
        
        
# skeleton(root)
skeleton(spine)#,p='jnt_cog')
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

Leg ('jnt_leg_l' ,'jnt_foreleg_l','jnt_foot_l','jnt_ball_l' ,'jnt_footEnd_l' )
Leg ('jnt_leg_r' ,'jnt_foreleg_r','jnt_foot_r','jnt_ball_r' ,'jnt_footEnd_r' )

AutoClav('jnt_shoulder_r')
AutoClav('jnt_shoulder_l') 


#cmds.scriptJob( ac=['ctrl_hip.leg_r_ik_fk','ik_fk_switch("ctrl_hip.leg_r_ik_fk","leg_r")'], protected=True)
#cmds.scriptJob( ac=['ctrl_hip.leg_l_ik_fk','ik_fk_switch("ctrl_hip.leg_l_ik_fk","leg_l")'], protected=True)
#cmds.scriptJob( ac=['ctrl_hip.arm_r_ik_fk','ik_fk_switch("ctrl_hip.arm_r_ik_fk","arm_r")'], protected=True)
#cmds.scriptJob( ac=['ctrl_hip.arm_l_ik_fk','ik_fk_switch("ctrl_hip.arm_l_ik_fk","arm_l")'], protected=True)
#ik_fk_switch("ctrl_hip.leg_r_ik_fk","leg_r")
#ik_fk_switch("ctrl_hip.leg_l_ik_fk","leg_l")
#ik_fk_switch("ctrl_hip.arm_r_ik_fk","arm_r")
#ik_fk_switch("ctrl_hip.arm_l_ik_fk","arm_l")
