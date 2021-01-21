
########################### Character UI extra attribute #############################
import maya.cmds as cmds
import maya.mel as mel  
import ffxTools.core.maya.core.rigging.libs.libMetanetwork as lbm
reload(lbm)
import pymel.core as pymel
from pymel.core import *

#Connect body part
lbm._connectBodyParts()

#Fix attributnames
_lNetArm = pymel.PyNode("net_Arm")
_rNetArm = pymel.PyNode("net_Arm1")
renameAttr(_lNetArm.fSwivelDistance , 'fIkSwivelDistance')
renameAttr(_rNetArm.fSwivelDistance , 'fIkSwivelDistance')
#add missing spine ctrl
_oSource = pymel.PyNode("net_Spine")
_sAttrName = "oCtrlIkBase"
_fAttrName = "bodyPart_spine"
pymel.addAttr(_oSource, longName=_sAttrName, at='message')
pymel.addAttr(_oSource, longName=_fAttrName, at='message')
pymel.PyNode("ctrl_spineBase_ik").message.connect(_oSource.oCtrlIkBase)

_oSource = pymel.PyNode("metanetwork")
_oTarget = pymel.PyNode("net_Spine")
_sAttrName = "bodyPart_spine"
pymel.addAttr(_oSource, longName=_sAttrName, at='message')
_oSource.bodyPart_spine.connect(_oTarget.bodyPart_spine)
#add ctrls for left hand
alCtrls = ['ctrl_thumb_l_fkAdd_01', 'ctrl_thumb_l_fk_03', 'ctrl_thumb_l_fk_02', 'ctrl_index_l_fkAdd_01', 'ctrl_index_l_fk_03', 'ctrl_index_l_fk_02', 'ctrl_index_l_fk_01', 'ctrl_middle_l_fkAdd_01', 'ctrl_middle_l_fk_03', 'ctrl_middle_l_fk_02', 'ctrl_middle_l_fk_01', 'ctrl_ring_l_fkAdd_01', 'ctrl_ring_l_fk_03', 'ctrl_ring_l_fk_02', 'ctrl_ring_l_fk_01', 'ctrl_pinky_l_fkAdd_01', 'ctrl_pinky_l_fk_03', 'ctrl_pinky_l_fk_02', 'ctrl_pinky_l_fk_01', 'ctrl_handMetaInn_l', 'ctrl_handMetaOut_l', 'ctrl_thumb_l_01']
_oSource = pymel.PyNode("net_Hand")
_sAttrName = "aCtrls"
pymel.addAttr(_oSource, longName=_sAttrName, at='message', multi=True)
for i, each in enumerate(alCtrls):
    pymel.PyNode(each).message.connect(_oSource.aCtrls[i])

#add ctrls for right hand
arCtrls = ['ctrl_thumb_r_fkAdd_01', 'ctrl_thumb_r_fk_03', 'ctrl_thumb_r_fk_02', 'ctrl_index_r_fkAdd_01', 'ctrl_index_r_fk_03', 'ctrl_index_r_fk_02', 'ctrl_index_r_fk_01', 'ctrl_middle_r_fkAdd_01', 'ctrl_middle_r_fk_03', 'ctrl_middle_r_fk_02', 'ctrl_middle_r_fk_01', 'ctrl_ring_r_fkAdd_01', 'ctrl_ring_r_fk_03', 'ctrl_ring_r_fk_02', 'ctrl_ring_r_fk_01', 'ctrl_pinky_r_fkAdd_01', 'ctrl_pinky_r_fk_03', 'ctrl_pinky_r_fk_02', 'ctrl_pinky_r_fk_01', 'ctrl_handMetaInn_l', 'ctrl_handMetaOut_l', 'ctrl_thumb_r_01']
_oSource = pymel.PyNode("net_Hand1")
_sAttrName = "aCtrls"
pymel.addAttr(_oSource, longName=_sAttrName, at='message', multi=True)
for i, each in enumerate(arCtrls):
    pymel.PyNode(each).message.connect(_oSource.aCtrls[i])


### pop Autorig###
from ffxTools.core.maya.core.rigging import AutoRig
reload(AutoRig)
AutoRig._reload()
AutoRig.show()


###face part ###
for each in pymel.selected():
    sFacePart = "FacePart_"
    sString = each.oGrpCtrl.get()
    aSplit = sString.split("_")
    sBaseName = sFacePart + aSplit[1]
    if len(aSplit) > 2:
        if "l" == aSplit[2]:
            sPartName = sBaseName + "L"
        elif "r" == aSplit[2]:
            sPartName = sBaseName + "R"
        else:
            sPartName = sBaseName
    else:
        sPartName = sBaseName

    _oSource = pymel.PyNode("metanetwork")
    _sAttrName = sPartName
    pymel.addAttr(_oSource, longName=_sAttrName, dt='string')
    each.message.connect(pymel.PyNode(_oSource + '.' + _sAttrName))

#Add ctrls board###
_sAttrName = "faceboard"
pymel.addAttr(_oSource, longName=_sAttrName, at='message', multi=True)
aController=["ctrl_facebrd_lipUpp" ,"ctrl_faceboard_lipLow" ,"ctrl_faceboard_lipCorner_r" ,"ctrl_faceboard_lipCorner_l" ,"ctrl_faceboard_jaw" ,"ctrl_faceboard_muzzle" ,"ctrl_faceboard_eyelidUp_r" ,"ctrl_faceboard_eyelidLo_r" ,"ctrl_faceboard_eyelidUp_l" ,"ctrl_faceboard_eyelidLo_l" ,"ctrl_faceboard_squint_l" ,"ctrl_faceboard_squint_r" ,"ctrl_faceboard_eyelidBlink_l" ,"ctrl_faceboard_eyelidBlink_r" ,"ctrl_faceboard_eyebrow_r" ,"ctrl_faceboard_eyebrow_l" ,"ctrl_faceboard_snear_r" ,"ctrl_faceboard_snear_l" ,"ctrl_faceboard_nose" ,"ctrl_faceboard_tongue_backFront" ,"ctrl_faceboard_tongue_twist" ,"ctrl_faceboard_tongue_sideSide" ,"ctrl_faceboard_tongue_UpDwn" ,"ctrl_faceboard_O" ,"ctrl_faceboard_YU" ,"ctrl_faceboard_upperLipRollInside" ,"ctrl_faceboard_lowerLipRollInside" ,"ctrl_faceboard_upperLipRollOut" ,"ctrl_faceboard_lowerLipRollOut"]

for oController in aController:
    try:
        cmds.select(oController,add=True)
    except ValueError:
        pass


aCtrlsFaceboard = pymel.selected()
for i, each in enumerate(aCtrlsFaceboard):
    pymel.PyNode(each).message.connect(_oSource.faceboard[i])
    
########
######## Add All Controls To Set
########
cmds.file('/home/jihamadene/Desktop/ctrl_squash.ma',i=1,typ='mayaAscii',iv=1,mnc=1, rpr="clash",o=0,pr=1)
cmds.parent( 'ctrls_head_faceheadsquash' ,'ctrl_root',a=1)
cmds.parentConstraint('jnt_head','ctrls_head_faceheadsquash' )

aController=['ctrl_cog', 'ctrl_faceboard_lipUpp', 'ctrl_faceboard_lipLow', 'ctrl_faceboard_lipCorner_r', 'ctrl_faceboard_lipCorner_l', 'ctrl_faceboard_jaw', 'ctrl_faceboard_muzzle', 'ctrl_faceboard_eyelidUp_r', 'ctrl_faceboard_eyelidLo_r', 'ctrl_faceboard_eyelidUp_l', 'ctrl_faceboard_eyelidLo_l', 'ctrl_faceboard_squint_l', 'ctrl_faceboard_squint_r', 'ctrl_faceboard_eyelidBlink_l', 'ctrl_faceboard_eyelidBlink_r', 'ctrl_faceboard_eyebrow_r', 'ctrl_faceboard_eyebrow_l', 'ctrl_faceboard_snear_r', 'ctrl_faceboard_snear_l', 'ctrl_faceboard_nose', 'ctrl_cheeksInn_r', 'ctrl_cheeksInn_l', 'ctrl_cheeksMid_r', 'ctrl_cheeksMid_l', 'ctrl_cheeksOut_r', 'ctrl_cheeksOut_l', 'ctrl_eyelidInn_l', 'ctrl_eyelidUppInn_l', 'ctrl_eyelidLowInn_l', 'ctrl_eyelidUppMid_l', 'ctrl_eyelidLowMid_l', 'ctrl_eyelidUppOut_l', 'ctrl_eyelidLowOut_l', 'ctrl_eyelidOut_l', 'ctrl_eyelidInn_r', 'ctrl_eyelidUppInn_r', 'ctrl_eyelidLowInn_r', 'ctrl_eyelidUppMid_r', 'ctrl_eyelidLowMid_r', 'ctrl_eyelidUppOut_r', 'ctrl_eyelidLowOut_r', 'ctrl_eyelidOut_r', 'ctrl_lipCornerMid_r', 'ctrl_lipCornerUpp_r', 'ctrl_lipCornerLow_l', 'ctrl_lipUpp_r', 'ctrl_lipLow_l', 'ctrl_lipUpp', 'ctrl_lipLow', 'ctrl_lipUpp_l', 'ctrl_lipLow_r', 'ctrl_lipCornerUpp_l', 'ctrl_lipCornerLow_r', 'ctrl_lipCornerMid_l', 'ctrl_squint_l', 'ctrl_snear_l', 'ctrl_nose', 'ctrl_snear_r', 'ctrl_squint_r', 'ctrl_ear_r_fk_01', 'ctrl_ear_r_fk_02', 'ctrl_ear_l_fk_01', 'ctrl_ear_l_fk_02', 'ctrl_eyebrowOut_r', 'ctrl_eyebrowMidOut_r', 'ctrl_eyebrowMid_r', 'ctrl_eyebrowMidInn_r', 'ctrl_eyebrowInn_r', 'ctrl_eyebrowInn_l', 'ctrl_eyebrowMidInn_l', 'ctrl_eyebrowMid_l', 'ctrl_eyebrowMidOut_l', 'ctrl_eyebrowOut_l', 'ctrl_eye', 'ctrl_eye_l', 'ctrl_eye_r', 'ctrl_headLow', 'ctrl_jaw', 'ctrl_hat_fk', 'ctrl_spine_ik_01', 'ctrl_spine_ik_02', 'ctrl_spine_ik_03', 'ctrl_neck_fk', 'ctrl_head_fk', 'ctrl_spineBase_ik', 'ctrl_sleeve_l_fk', 'ctrl_sleeveFront_l_fk', 'ctrl_sleeveBack_l_fk', 'ctrl_sleeveUp_l_fk', 'ctrl_sleeveBot_l_fk', 'ctrl_sleeve_r_fk', 'ctrl_sleeveFront_r_fk', 'ctrl_sleeveBack_r_fk', 'ctrl_sleeveUp_r_fk', 'ctrl_sleeveBot_r_fk', 'ctrl_eyeHighlight', 'ctrl_eyeHighlight_l', 'ctrl_eyeHighlight_r', 'ctrl_headAim', 'ctrl_lowerTeeth_fk', 'ctrl_lowerTeeth_l_fk', 'ctrl_lowerTeethCorner_l_fk', 'ctrl_lowerTeeth_r_fk', 'ctrl_lowerTeethCorner_r_fk', 'ctrl_lowerTeethMid_fk', 'ctrl_upperTeeth_fk', 'ctrl_upperTeeth_l_fk', 'ctrl_upperTeethCorner_l_fk', 'ctrl_upperTeeth_r_fk', 'ctrl_upperTeethCorner_r_fk', 'ctrl_upperTeethMid_fk', 'ctrl_mitten_r_fk_01', 'ctrl_mitten_r_fk_02', 'ctrl_mitten_r_fk_03', 'ctrl_mitten_r_fkAdd_01', 'ctrl_mitten_l_fk_01', 'ctrl_mitten_l_fk_02', 'ctrl_mitten_l_fk_03', 'ctrl_mitten_l_fkAdd_01', 'ctrl_hip_l_fk', 'ctrl_knee_l_fk', 'ctrl_ankle_l_fk', 'ctrl_ball_l_fk', 'ctrl_jne_l_toes_fk', 'ctrl_hip_l_swivel', 'ctrl_hip_l_ik', 'ctrl_hip_r_fk', 'ctrl_knee_r_fk', 'ctrl_ankle_r_fk', 'ctrl_ball_r_fk', 'ctrl_jne_r_toes_fk', 'ctrl_hip_r_swivel', 'ctrl_hip_r_ik', 'ctrl_thumb_r_01', 'ctrl_handMetaOut_r', 'ctrl_handMetaInn_r', 'ctrl_pinky_r_fk_01', 'ctrl_pinky_r_fk_02', 'ctrl_pinky_r_fk_03', 'ctrl_pinky_r_fkAdd_01', 'ctrl_ring_r_fk_01', 'ctrl_ring_r_fk_02', 'ctrl_ring_r_fk_03', 'ctrl_ring_r_fkAdd_01', 'ctrl_middle_r_fk__02', 'ctrl_thumb_r_fk_03', 'ctrl_thumb_r_fkAdd_01', 'ctrl_thumb_l_01', 'ctrl_handMetaOut_l', 'ctrl_handMetaInn_l', 'ctrl_pinky_l_fk_01', 'ctrl_pinky_l_fk_02', 'ctrl_pinky_l_fk_03', 'ctrl_pinky_l_fkAdd_01', 'ctrl_ring_l_fk_01', 'ctrl_ring_l_fk_02', 'ctrl_ring_l_fk_03', 'ctrl_ring_l_fkAdd_01', 'ctrl_middle_l_fk_01', 'ctrl_middle_l_fk_02', 'ctrl_middle_l_fk_03', 'ctrl_middle_l_fkAdd_01', 'ctrl_index_l_fk_01', 'ctrl_index_l_fk_02', 'ctrl_index_l_fk_03', 'ctrl_index_l_fkAdd_01', 'ctrl_thumb_l_fk_02', 'ctrl_thumb_l_fk_03', 'ctrl_thumb_l_fkAdd_01', 'ctrl_noseBridge', 'ctrl_coatDriveBack_l_fk_02', 'ctrl_coatDriveBack_l_fk_01', 'ctrl_coatDriveBack_r_fk_02', 'ctrl_coatDriveBack_r_fk_01', 'ctrl_coatDriveSide_r_fk_02', 'ctrl_coatDriveSide_r_fk_01', 'ctrl_coatDriveSide_l_fk_02', 'ctrl_coatDriveSide_l_fk_01', 'ctrl_coatDriveFront_r_fk_02', 'ctrl_coatDriveFront_r_fk_01', 'ctrl_coatDriveFront_l_fk_02', 'ctrl_coatDriveFront_l_fk_01', 'ctrl_tongue_fk_05', 'ctrl_tongue_fk_04', 'ctrl_tongue_fk_03', 'ctrl_tongue_fk_02', 'ctrl_tongue_fk_01', 'ctrl_fly_03', 'ctrl_fly_02', 'ctrl_fly_01', 'ctrl_faceboard_WQ', 'ctrl_faceboard_O', 'ctrl_faceboard_upperLipRollInside', 'ctrl_faceboard_lowerLipRollInside', 'ctrl_faceboard_upperLipRollOut', 'ctrl_faceboard_lowerLipRollOut', 'ctrl_faceboard_tongue_UpDwn', 'ctrl_faceboard_tongue_sideSide', 'ctrl_faceboard_tongue_twist', 'ctrl_faceboard_tongue_backFront', 'ctrl_headOffset_fk', 'ctrl_root', 'ctrl_clav_r_fk', 'ctrl_clav_l_fk', 'ctrl_shoulder_r_ik', 'ctrl_shoulder_r_swivel', 'ctrl_shoulder_r_fk', 'ctrl_elbow_r_fk', 'ctrl_hand_r_fk', 'ctrl_shoulder_l_ik', 'ctrl_shoulder_l_swivel', 'ctrl_shoulder_l_fk', 'ctrl_elbow_l_fk', 'ctrl_hand_l_fk', 'ctrl_squashUpp', 'ctrl_squashLow']

for oController in aController:
    try:
        mel.eval("catch(`sets -e -forceElement All_Controls "+str(oController)+"`);") 
    except ValueError:
        pass


########
######## Hide Face Ctrls With Faceboard
########
cmds.select(cl=True)
cmds.group( em=1, n='ctrls_face', p='ctrl_root')

aFacectrls=[u'ctrls_ear_r_fk', u'ctrls_ear_l_fk', u'ctrls_squint_l_facepnt', u'ctrls_snear_l_facepnt', u'ctrls_snear_r_facepnt', u'ctrls_squint_r_facepnt', u'ctrls_nose_facepnt', u'ctrls_headLow_facepnt', u'ctrls_tongue_fk', u'ctrl_upperTeeth_fk_offset', u'ctrl_lowerTeeth_fk_offset', u'ctrls_lipUp_facelips', u'ctrls_cheeks_facecheek', u'ctrls_eyebrow_facemask', u'ctrls_eye_l_facecartooneyelid', u'ctrls_eye_r_facecartooneyelid', u'ctrls_noseBridge_facepnt',u'ctrls_lipBot_facelips',u'ctrls_glassAuxiliaryes_fk' ,u'ctrl_glasses_fk']
for oFacectrls in aFacectrls:
    try:
        cmds.parent( oFacectrls ,'ctrls_face',a=1) 
    except (RuntimeError,ValueError):
        pass
        
cmds.addAttr('ctrl_head_fk',ln='StretchSquash',at='short',min=0,max=1,dv=0)
cmds.setAttr('ctrl_head_fk.StretchSquash',1,e=1,channelBox=1)
cmds.connectAttr( 'ctrl_head_fk.StretchSquash','ctrls_head_faceheadsquash.visibility')
try:
    cmds.connectAttr( 'ctrl_head_fk.faceboard','ctrls_face.visibility')
except (RuntimeError,ValueError):
    pass
try:
    cmds.connectAttr( 'ctrl_head_fk.visibility_Faceboard','ctrls_face.visibility')
except (RuntimeError,ValueError):
    pass



####### in case legs are disconnected
cmds.connectAttr( 'ctrl_cog.HipL','net_Leg.ikState')
cmds.connectAttr( 'ctrl_cog.HipR' ,'net_Leg1.ikState')
