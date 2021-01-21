##imports
from ffxTools.core.maya.core.rigging import AutoRig
uiAR=AutoRig.uiAutoRig()
jIK=AutoRig.rigs.IK
jFK=AutoRig.rigs.FK
jTwist=AutoRig.rigs.Twistbone
jArm=AutoRig.rigs.Arm
jLeg=AutoRig.rigs.Leg
jHand=AutoRig.rigs.Hand
jSpine=AutoRig.rigs.Spine
jEyes=AutoRig.rigs.FaceEyes

##parts
AutoRig.Create()
select('jnt_spine_00', 'jnt_spine_01', 'jnt_spine_02', 'jnt_spine_03', 'jnt_spine_04', 'jne_spine')
pSpine=uiAR.CreateRigPartInstance(jSpine)
select('jnt_neck')
uiAR.CreateRigPartInstance(jFK)
select('jnt_collar')
pCollar=uiAR.CreateRigPartInstance(jFK)
select('jnt_head')
uiAR.CreateRigPartInstance(jFK)
select('jnt_headOffset')
uiAR.CreateRigPartInstance(jFK)
select('jnt_clav_l')
uiAR.CreateRigPartInstance(jFK)
select('jnt_clav_r')
uiAR.CreateRigPartInstance(jFK)
select('jnt_eye_l', 'jnt_eye_r')
uiAR.CreateRigPartInstance(jEyes)
select('jnt_hip_l', 'jnt_knee_l', 'jnt_ankle_l', 'jnt_ball_l', 'jne_toes_l')
uiAR.CreateRigPartInstance(jLeg)
select('jnt_hip_r', 'jnt_knee_r', 'jnt_ankle_r', 'jnt_ball_r', 'jne_toes_r')
uiAR.CreateRigPartInstance(jLeg)
select('jnt_shoulder_l', 'jnt_elbow_l', 'jnt_hand_l')
uiAR.CreateRigPartInstance(jArm)
select('jnt_shoulder_r', 'jnt_elbow_r', 'jnt_hand_r')
uiAR.CreateRigPartInstance(jArm)
select ('jnt_thumb_l_01', 'jnt_thumb_l_02', 'jnt_thumb_l_03', 'jnt_index_l_00', 'jnt_index_l_01', 'jnt_index_l_02', 'jnt_index_l_03', 'jnt_middle_l_00', 'jnt_middle_l_01', 'jnt_middle_l_02', 'jnt_middle_l_03', 'jnt_ring_l_00', 'jnt_ring_l_01', 'jnt_ring_l_02', 'jnt_ring_l_03', 'jnt_pinky_l_00', 'jnt_pinky_l_01', 'jnt_pinky_l_02', 'jnt_pinky_l_03')
uiAR.CreateRigPartInstance(jHand)
select('jnt_thumb_r_01', 'jnt_thumb_r_02', 'jnt_thumb_r_03', 'jnt_index_r_00', 'jnt_index_r_01', 'jnt_index_r_02', 'jnt_index_r_03', 'jnt_middle_r_00', 'jnt_middle_r_01', 'jnt_middle_r_02', 'jnt_middle_r_03', 'jnt_ring_r_00', 'jnt_ring_r_01', 'jnt_ring_r_02', 'jnt_ring_r_03', 'jnt_pinky_r_00', 'jnt_pinky_r_01', 'jnt_pinky_r_02', 'jnt_pinky_r_03')
uiAR.CreateRigPartInstance(jHand)


##options
setAttr("net_Spine.fCtrlSize", .1)
setAttr("net_FK5.fCtrlSize", .05)
setAttr("net_FK.fCtrlSize", .05)
setAttr("net_FK1.fCtrlSize", .05)
setAttr("net_FK2.fCtrlSize", .05)
setAttr("net_FK3.fCtrlSize", .05)
setAttr("net_FK4.fCtrlSize", .05)
setAttr("net_FaceEyes.fCtrlOffset",.5)
setAttr("net_FaceEyes.fCtrlSize",.1)
setAttr("net_Arm1.fCtrlSize",0.08)
setAttr("net_Arm.fCtrlSize",0.08)
setAttr("net_Hand1.fCtrlSize",0.018)
setAttr("net_Hand.fCtrlSize",0.018)
setAttr("net_Leg1.fCtrlSize",.1)
setAttr("net_Leg.fCtrlSize",.1)
setAttr("net_RigRoot_.fCtrlSize",.1)



reload(AutoRig)
AutoRig._reload()
AutoRig.show()

scriptJob(ka=True)

uiAR.UpdateTableView()
AutoRig._reload()
## build
GetSelectedTopLevelRigElements()
uiAR.on
uiAR.onActionBuildBranch()
uiAR.onActionBuildSelected()
select('net_Arm','net_Arm1')
uiAR.onActionFinalize()
uiAR.onActionUnbuild()
select('net_Arm','net_Arm1')
onActionBuildSelected()

###tewst
libSerialization.getNetworksByClass('RigRoot')


##build
net_RigRoot_.Build()
pSpine.Build()
pNeck.Build()
pCollar.Build()
pHead.Build()
pHeadOffset.Build()
pClav_l.Build()
pClav_r.Build()

##finalise
rig.Finalize()