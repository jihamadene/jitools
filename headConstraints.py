import maya.cmds as cmds
import maya.mel as mel

##Create ctrl_aim ctrl_aim_offset
cmds.spaceLocator(n='rig_aimloc')
cmds.group('rig_aimloc', n='ctrl_aim_offset')
cmds.parent('ctrl_aim_offset', 'jnt_head', r=True)
cmds.setAttr( 'ctrl_aim_offset.translateZ', 0.5 )
cmds.parent('ctrl_aim_offset', 'ctrl_root', a=True)
cmds.setAttr( 'ctrl_aim_offset.rotateX', 0)
##Create loc_upVectorHeadAim 
cmds.spaceLocator(n='loc_upVectorHeadAim')
cmds.parent('loc_upVectorHeadAim','ctrl_root')
##Create parent attributes
cmds.select ('ctrl_shoulder_r_fk')
try:
	deleteAttr(at='parent')
except RuntimeError:
	pass
addAttr( at='enum' ,ln='parent', enumName= 'Local:Cog:Root', k=1)

cmds.select ('ctrl_shoulder_l_fk')
try:
	deleteAttr(at='parent')
except RuntimeError:
	pass
addAttr( at='enum' ,ln='parent', enumName= 'Local:Cog:Root', k=1)

cmds.select ('ctrl_head_fk')
try:
	deleteAttr(at='parent')
except RuntimeError:
	pass
addAttr( at='enum' ,ln='parent', enumName= 'Neck:Chest:Cog:Root:Aim', k=1)

cmds.select ('ctrl_neck_fk')
try:
	deleteAttr(at='parent')
except RuntimeError:
	pass
addAttr( at='enum' ,ln='parent', enumName= 'Local:Cog:Root', k=1)

##Create Constraints
if cmds.objExists('ctrl_head_aim_offset')==0 :
    cmds.group( em=True, name='ctrl_head_aim_offset',parent='ctrl_head_fk_offset')
cmds.parent('ctrl_head_fk','ctrl_head_aim_offset')
cmds.parentConstraint( 'ctrl_fly','jnt_clav_r','jnt_cog','ctrl_shoulder_r_fk_offset',st=('x','y','z'), mo=True,n='cste_shoulder_r_fk_offset')
cmds.parentConstraint( 'ctrl_fly','jnt_clav_l','jnt_cog','ctrl_shoulder_l_fk_offset',st=('x','y','z'), mo=True,n='cste_shoulder_l_fk_offset')
cmds.parentConstraint( 'ctrl_fly','jnt_chest','jnt_cog','ctrl_neck_fk_offset',st=('x','y','z'), mo=True,n='cste_neck_fk_offset')
cmds.parentConstraint( 'ctrl_fly','jnt_chest','jnt_cog','jnt_neck','ctrl_head_fk_offset',st=('x','y','z'), mo=True,n='cste_head_offset')
cmds.aimConstraint('rig_aimloc','ctrl_head_aim_offset',aim=(0,0,1),u=(0,1,0),mo=True,wut='objectrotation',wuo='loc_upVectorHeadAim',n='cste_aim_head')
##Create conditions
cmds.shadingNode('condition',  n='conditionShoulder_r_01',  asUtility=True)
cmds.shadingNode('condition',  n='conditionShoulder_r_02',  asUtility=True) 
cmds.shadingNode('condition',  n='conditionShoulder_r_03',  asUtility=True) 
cmds.shadingNode('condition',  n='conditionShoulder_l_01',  asUtility=True)
cmds.shadingNode('condition',  n='conditionShoulder_l_02',  asUtility=True)
cmds.shadingNode('condition',  n='conditionShoulder_l_03',  asUtility=True) 
cmds.shadingNode('condition',  n='conditionHead_01',  asUtility=True)
cmds.shadingNode('condition',  n='conditionHead_02',  asUtility=True)
cmds.shadingNode('condition',  n='conditionHead_03',  asUtility=True)
cmds.shadingNode('condition',  n='conditionHead_03',  asUtility=True)
cmds.shadingNode('condition',  n='conditionHead_03',  asUtility=True)
cmds.shadingNode('condition',  n='conditionNeck_01',  asUtility=True)
cmds.shadingNode('condition',  n='conditionNeck_02',  asUtility=True)
cmds.shadingNode('condition',  n='conditionNeck_03',  asUtility=True)
##Connect Controlers.parent attribute to first term
connectAttr(PyNode('ctrl_shoulder_r_fk').parent, PyNode('conditionShoulder_r_01').firstTerm, f=True)
connectAttr(PyNode('ctrl_shoulder_r_fk').parent, PyNode('conditionShoulder_r_02').firstTerm, f=True)
connectAttr(PyNode('ctrl_shoulder_r_fk').parent, PyNode('conditionShoulder_r_03').firstTerm, f=True)
connectAttr(PyNode('ctrl_shoulder_l_fk').parent, PyNode('conditionShoulder_l_01').firstTerm, f=True)
connectAttr(PyNode('ctrl_shoulder_l_fk').parent, PyNode('conditionShoulder_l_02').firstTerm, f=True)
connectAttr(PyNode('ctrl_shoulder_l_fk').parent, PyNode('conditionShoulder_l_03').firstTerm, f=True)
connectAttr(PyNode('ctrl_head_fk').parent, PyNode('conditionHead_01').firstTerm, f=True)
connectAttr(PyNode('ctrl_head_fk').parent, PyNode('conditionHead_02').firstTerm, f=True)
connectAttr(PyNode('ctrl_head_fk').parent, PyNode('conditionHead_03').firstTerm, f=True)
connectAttr(PyNode('ctrl_head_fk').parent, PyNode('conditionHead_04').firstTerm, f=True)
connectAttr(PyNode('ctrl_head_fk').parent, PyNode('conditionHead_05').firstTerm, f=True)
connectAttr(PyNode('ctrl_neck_fk').parent, PyNode('conditionNeck_01').firstTerm, f=True)
connectAttr(PyNode('ctrl_neck_fk').parent, PyNode('conditionNeck_02').firstTerm, f=True)
connectAttr(PyNode('ctrl_neck_fk').parent, PyNode('conditionNeck_03').firstTerm, f=True)
##Change condition secondterm values
cmds.setAttr ("conditionShoulder_r_02.secondTerm", 1)
cmds.setAttr ("conditionShoulder_r_03.secondTerm", 2)
cmds.setAttr ("conditionShoulder_l_02.secondTerm", 1)
cmds.setAttr ("conditionShoulder_l_03.secondTerm", 2)
cmds.setAttr ("conditionNeck_02.secondTerm", 1)
cmds.setAttr ("conditionNeck_03.secondTerm", 2)
cmds.setAttr ("conditionHead_02.secondTerm", 1)
cmds.setAttr ("conditionHead_03.secondTerm", 2)
cmds.setAttr ("conditionHead_04.secondTerm", 3)
cmds.setAttr ("conditionHead_05.secondTerm", 4)
##Change ifTrueR and IfFalseR
cmds.setAttr ("conditionShoulder_r_01.colorIfTrueR", 1)
cmds.setAttr ("conditionShoulder_r_02.colorIfTrueR", 1)
cmds.setAttr ("conditionShoulder_r_03.colorIfTrueR", 1)
cmds.setAttr ("conditionShoulder_l_01.colorIfTrueR", 1)
cmds.setAttr ("conditionShoulder_l_02.colorIfTrueR", 1)
cmds.setAttr ("conditionShoulder_l_03.colorIfTrueR", 1)
cmds.setAttr ("conditionNeck_01.colorIfTrueR", 1)
cmds.setAttr ("conditionNeck_02.colorIfTrueR", 1)
cmds.setAttr ("conditionNeck_03.colorIfTrueR", 1)
cmds.setAttr ("conditionHead_01.colorIfTrueR", 1)
cmds.setAttr ("conditionHead_02.colorIfTrueR", 1)
cmds.setAttr ("conditionHead_03.colorIfTrueR", 1)
cmds.setAttr ("conditionHead_04.colorIfTrueR", 1)
cmds.setAttr ("conditionHead_05.colorIfTrueR", 1)
cmds.setAttr ("conditionShoulder_r_01.colorIfFalseR", 0)
cmds.setAttr ("conditionShoulder_r_02.colorIfFalseR", 0)
cmds.setAttr ("conditionShoulder_r_03.colorIfFalseR", 0)
cmds.setAttr ("conditionShoulder_l_01.colorIfFalseR", 0)
cmds.setAttr ("conditionShoulder_l_02.colorIfFalseR", 0)
cmds.setAttr ("conditionShoulder_l_03.colorIfFalseR", 0)
cmds.setAttr ("conditionNeck_01.colorIfFalseR", 0)
cmds.setAttr ("conditionNeck_02.colorIfFalseR", 0)
cmds.setAttr ("conditionNeck_03.colorIfFalseR", 0)
cmds.setAttr ("conditionHead_01.colorIfFalseR", 0)
cmds.setAttr ("conditionHead_02.colorIfFalseR", 0)
cmds.setAttr ("conditionHead_03.colorIfFalseR", 0)
cmds.setAttr ("conditionHead_04.colorIfFalseR", 0)
cmds.setAttr ("conditionHead_05.colorIfFalseR", 0)

##Connect all that stuff

connectAttr(PyNode('conditionShoulder_r_01').outColorR,PyNode('cste_shoulder_l_fk_offset').jnt_clav_lW1,f=True)
connectAttr(PyNode('conditionShoulder_r_02').outColorR,PyNode('cste_shoulder_l_fk_offset').jnt_cogW2,f=True)
connectAttr(PyNode('conditionShoulder_r_03').outColorR,PyNode('cste_shoulder_l_fk_offset').ctrl_flyW0,f=True)
connectAttr(PyNode('conditionShoulder_l_01').outColorR,PyNode('cste_shoulder_r_fk_offset').jnt_clav_rW1,f=True)
connectAttr(PyNode('conditionShoulder_l_02').outColorR,PyNode('cste_shoulder_r_fk_offset').jnt_cogW2,f=True)
connectAttr(PyNode('conditionShoulder_l_03').outColorR,PyNode('cste_shoulder_r_fk_offset').ctrl_flyW0,f=True)
connectAttr(PyNode('conditionHead_01').outColorR,PyNode('cste_head_offset').jnt_neckW3,f=True)
connectAttr(PyNode('conditionHead_02').outColorR,PyNode('cste_head_offset').jnt_chestW1,f=True)
connectAttr(PyNode('conditionHead_03').outColorR,PyNode('cste_head_offset').jnt_cogW2,f=True)
connectAttr(PyNode('conditionHead_04').outColorR,PyNode('cste_head_offset').ctrl_flyW0,f=True)
connectAttr(PyNode('conditionHead_05').outColorR,PyNode('cste_aim_head').rig_aimlocW0,f=True)
connectAttr(PyNode('conditionNeck_01').outColorR,PyNode('cste_neck_fk_offset').jnt_chestW1,f=True)
connectAttr(PyNode('conditionNeck_02').outColorR,PyNode('cste_neck_fk_offset').jnt_cogW2,f=True)
connectAttr(PyNode('conditionNeck_03').outColorR,PyNode('cste_neck_fk_offset').ctrl_flyW0,f=True)

## finish with headaim
if cmds.objExists('ctrl_headAim')==0:
	cmds.file('/home/jihamadene/Desktop/ctrl_headaim.ma',i=1,rpr='clash')
cmds.parent('ctrl_headAim','ctrl_aim_offset',r=1)
parentConstraint('ctrl_headAim', 'rig_aimloc')
parentConstraint('ctrl_rootShape', 'loc_upVectorHeadAim')
cmds.group('rig_aimloc','loc_upVectorHeadAim',name='rig_aim', parent='rigs')
cmds.connectAttr('conditionHead_05.outColor.outColorR','ctrl_aim_offset.visibility')