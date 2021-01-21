import maya.cmds as cmds

print cmds.ls(sl=1)


aController=[u'ctrl_cog', u'ctrl_faceboard_lipUpp', u'ctrl_faceboard_lipLow', u'ctrl_faceboard_lipCorner_r', u'ctrl_faceboard_lipCorner_l', u'ctrl_faceboard_jaw', u'ctrl_faceboard_muzzle', u'ctrl_faceboard_eyelidUp_r', u'ctrl_faceboard_eyelidLo_r', u'ctrl_faceboard_eyelidUp_l', u'ctrl_faceboard_eyelidLo_l', u'ctrl_faceboard_squint_l', u'ctrl_faceboard_squint_r', u'ctrl_faceboard_eyelidBlink_l', u'ctrl_faceboard_eyelidBlink_r', u'ctrl_faceboard_eyebrow_r', u'ctrl_faceboard_eyebrow_l', u'ctrl_faceboard_snear_r', u'ctrl_faceboard_snear_l', u'ctrl_faceboard_nose', u'ctrl_cheeksInn_r', u'ctrl_cheeksInn_l', u'ctrl_cheeksMid_r', u'ctrl_cheeksMid_l', u'ctrl_cheeksOut_r', u'ctrl_cheeksOut_l', u'ctrl_eyelidInn_l', u'ctrl_eyelidUppInn_l', u'ctrl_eyelidLowInn_l', u'ctrl_eyelidUppMid_l', u'ctrl_eyelidLowMid_l', u'ctrl_eyelidUppOut_l', u'ctrl_eyelidLowOut_l', u'ctrl_eyelidOut_l', u'ctrl_eyelidInn_r', u'ctrl_eyelidUppInn_r', u'ctrl_eyelidLowInn_r', u'ctrl_eyelidUppMid_r', u'ctrl_eyelidLowMid_r', u'ctrl_eyelidUppOut_r', u'ctrl_eyelidLowOut_r', u'ctrl_eyelidOut_r', u'ctrl_lipCornerMid_r', u'ctrl_lipCornerUpp_r', u'ctrl_lipCornerLow_l', u'ctrl_lipUpp_r', u'ctrl_lipLow_l', u'ctrl_lipUpp', u'ctrl_lipLow', u'ctrl_lipUpp_l', u'ctrl_lipLow_r', u'ctrl_lipCornerUpp_l', u'ctrl_lipCornerLow_r', u'ctrl_lipCornerMid_l', u'ctrl_squint_l', u'ctrl_snear_l', u'ctrl_nose', u'ctrl_snear_r', u'ctrl_squint_r', u'ctrl_ear_r_fk_01', u'ctrl_ear_r_fk_02', u'ctrl_ear_l_fk_01', u'ctrl_ear_l_fk_02', u'ctrl_eyebrowOut_r', u'ctrl_eyebrowMidOut_r', u'ctrl_eyebrowMid_r', u'ctrl_eyebrowMidInn_r', u'ctrl_eyebrowInn_r', u'ctrl_eyebrowInn_l', u'ctrl_eyebrowMidInn_l', u'ctrl_eyebrowMid_l', u'ctrl_eyebrowMidOut_l', u'ctrl_eyebrowOut_l', u'ctrl_eye', u'ctrl_eye_l', u'ctrl_eye_r', u'ctrl_headLow', u'ctrl_jaw', u'ctrl_hat_fk', u'ctrl_spine_ik_01', u'ctrl_spine_ik_02', u'ctrl_spine_ik_03', u'ctrl_neck_fk', u'ctrl_head_fk', u'ctrl_spineBase_ik', u'ctrl_sleeve_l_fk', u'ctrl_sleeveFront_l_fk', u'ctrl_sleeveBack_l_fk', u'ctrl_sleeveUp_l_fk', u'ctrl_sleeveBot_l_fk', u'ctrl_sleeve_r_fk', u'ctrl_sleeveFront_r_fk', u'ctrl_sleeveBack_r_fk', u'ctrl_sleeveUp_r_fk', u'ctrl_sleeveBot_r_fk', u'ctrl_eyeHighlight', u'ctrl_eyeHighlight_l', u'ctrl_eyeHighlight_r', u'ctrl_headAim', u'ctrl_lowerTeeth_fk', u'ctrl_lowerTeeth_l_fk', u'ctrl_lowerTeethCorner_l_fk', u'ctrl_lowerTeeth_r_fk', u'ctrl_lowerTeethCorner_r_fk', u'ctrl_lowerTeethMid_fk', u'ctrl_upperTeeth_fk', u'ctrl_upperTeeth_l_fk', u'ctrl_upperTeethCorner_l_fk', u'ctrl_upperTeeth_r_fk', u'ctrl_upperTeethCorner_r_fk', u'ctrl_upperTeethMid_fk', u'ctrl_mitten_r_fk_01', u'ctrl_mitten_r_fk_02', u'ctrl_mitten_r_fk_03', u'ctrl_mitten_r_fkAdd_01', u'ctrl_mitten_l_fk_01', u'ctrl_mitten_l_fk_02', u'ctrl_mitten_l_fk_03', u'ctrl_mitten_l_fkAdd_01', u'ctrl_hip_l_fk', u'ctrl_knee_l_fk', u'ctrl_ankle_l_fk', u'ctrl_ball_l_fk', u'ctrl_jne_l_toes_fk', u'ctrl_hip_l_swivel', u'ctrl_hip_l_ik', u'ctrl_hip_r_fk', u'ctrl_knee_r_fk', u'ctrl_ankle_r_fk', u'ctrl_ball_r_fk', u'ctrl_jne_r_toes_fk', u'ctrl_hip_r_swivel', u'ctrl_hip_r_ik', u'ctrl_thumb_r_01', u'ctrl_handMetaOut_r', u'ctrl_handMetaInn_r', u'ctrl_pinky_r_fk_01', u'ctrl_pinky_r_fk_02', u'ctrl_pinky_r_fk_03', u'ctrl_pinky_r_fkAdd_01', u'ctrl_ring_r_fk_01', u'ctrl_ring_r_fk_02', u'ctrl_ring_r_fk_03', u'ctrl_ring_r_fkAdd_01', u'ctrl_middle_r_fk_01', u'ctrl_middle_r_fk_02', u'ctrl_middle_r_fk_03', u'ctrl_middle_r_fkAdd_01', u'ctrl_index_r_fk_01', u'ctrl_index_r_fk_02', u'ctrl_index_r_fk_03', u'ctrl_index_r_fkAdd_01', u'ctrl_thumb_r_fk_02', u'ctrl_thumb_r_fk_03', u'ctrl_thumb_r_fkAdd_01', u'ctrl_thumb_l_01', u'ctrl_handMetaOut_l', u'ctrl_handMetaInn_l', u'ctrl_pinky_l_fk_01', u'ctrl_pinky_l_fk_02', u'ctrl_pinky_l_fk_03', u'ctrl_pinky_l_fkAdd_01', u'ctrl_ring_l_fk_01', u'ctrl_ring_l_fk_02', u'ctrl_ring_l_fk_03', u'ctrl_ring_l_fkAdd_01', u'ctrl_middle_l_fk_01', u'ctrl_middle_l_fk_02', u'ctrl_middle_l_fk_03', u'ctrl_middle_l_fkAdd_01', u'ctrl_index_l_fk_01', u'ctrl_index_l_fk_02', u'ctrl_index_l_fk_03', u'ctrl_index_l_fkAdd_01', u'ctrl_thumb_l_fk_02', u'ctrl_thumb_l_fk_03', u'ctrl_thumb_l_fkAdd_01', u'ctrl_noseBridge', u'ctrl_coatDriveBack_l_fk_02', u'ctrl_coatDriveBack_l_fk_01', u'ctrl_coatDriveBack_r_fk_02', u'ctrl_coatDriveBack_r_fk_01', u'ctrl_coatDriveSide_r_fk_02', u'ctrl_coatDriveSide_r_fk_01', u'ctrl_coatDriveSide_l_fk_02', u'ctrl_coatDriveSide_l_fk_01', u'ctrl_coatDriveFront_r_fk_02', u'ctrl_coatDriveFront_r_fk_01', u'ctrl_coatDriveFront_l_fk_02', u'ctrl_coatDriveFront_l_fk_01', u'ctrl_tongue_fk_05', u'ctrl_tongue_fk_04', u'ctrl_tongue_fk_03', u'ctrl_tongue_fk_02', u'ctrl_tongue_fk_01', u'ctrl_fly_03', u'ctrl_fly_02', u'ctrl_fly_01', u'ctrl_faceboard_WQ', u'ctrl_faceboard_O', u'ctrl_faceboard_upperLipRollInside', u'ctrl_faceboard_lowerLipRollInside', u'ctrl_faceboard_upperLipRollOut', u'ctrl_faceboard_lowerLipRollOut', u'ctrl_faceboard_tongue_UpDwn', u'ctrl_faceboard_tongue_sideSide', u'ctrl_faceboard_tongue_twist', u'ctrl_faceboard_tongue_backFront', u'ctrl_headOffset_fk', u'ctrl_root', u'ctrl_clav_r_fk', u'ctrl_clav_l_fk', u'ctrl_shoulder_r_ik', u'ctrl_shoulder_r_swivel', u'ctrl_shoulder_r_fk', u'ctrl_elbow_r_fk', u'ctrl_hand_r_fk', u'ctrl_shoulder_l_ik', u'ctrl_shoulder_l_swivel', u'ctrl_shoulder_l_fk', u'ctrl_elbow_l_fk', u'ctrl_hand_l_fk', u'ctrl_squashUpp', u'ctrl_squashLow']

for oController in aController:
    try:
        cmds.select(oController,add=1)
    except ValueError:
        pass