import maya.cmds as cmds 
from maya.cmds import *

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
ik_fk_switch("ctrl_hip.leg_r_ik_fk","leg_r")
#ik_fk_switch("ctrl_hip.leg_l_ik_fk","leg_l")
#ik_fk_switch("ctrl_hip.arm_r_ik_fk","arm_r")
#ik_fk_switch("ctrl_hip.arm_l_ik_fk","arm_l")
