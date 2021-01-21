import maya.cmds as cmds
selec=['rigs_ankle_l_footroll', 'rigs_shoulder_l_ik', 'rigs_ankle_r_footroll', 'rigs_hip_r_ik', 'rigs_hip_l_ik', 'rigs_shoulder_r_ik', 'rig_spine_parentRefS', 'rig_spine_parentRefE' ]
for each in selec:
     cmds.setAttr(each+".sz",l=0)
     cmds.setAttr(each+".sx",l=0)
     cmds.setAttr(each+".sy",l=0)
     cmds.connectAttr("ctrl_root.GlobalScale", each+".scaleY", f=1)
     cmds.connectAttr("ctrl_root.GlobalScale", each+".scaleX", f=1)
     cmds.connectAttr("ctrl_root.GlobalScale", each+".scaleZ", f=1)
     cmds.setAttr(each+".sz",l=1)
     cmds.setAttr(each+".sx",l=1)
     cmds.setAttr(each+".sy",l=1)
