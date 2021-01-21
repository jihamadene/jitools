allIks= ['ctrl_shoulderExtra_r_ik', 'ctrl_shoulder_l_swivel', 'ctrl_hip_l_ik', 'ctrl_shoulder_r_swivel', 'ctrl_hip_r_swivel', 'ctrl_shoulder_r_ik', 'ctrl_hip_r_ik', 'ctrl_hip_l_swivel', 'ctrl_shoulderExtra_l_ik', 'ctrl_shoulder_l_ik', 'ctrl_headOffset_fk', 'ctrl_spine_ik_01', 'ctrl_spineBase_ik_00', 'ctrl_neck_fk', 'ctrl_head_fk', 'ctrl_spine_ik_03', 'ctrl_cog', 'ctrl_eye', 'ctrl_spine_ik_02','ctrl_collar_fk', 'ctrl_headAim']
for eachIk in allIks :
    try:
        pEach= PyNode(eachIk)
        setAttr(pEach.mirrorTransX,-1 )
        setAttr(pEach.mirrorTransY,1 )
        setAttr(pEach.mirrorTransZ,1 )
        setAttr(pEach.mirrorRotX,1 )
        setAttr(pEach.mirrorRotY,-1 )
        setAttr(pEach.mirrorRotZ,-1 )
    except:
        pass

allFks= ['ctrl_hand_l_fk', 'ctrl_hand_r_fk', 'ctrl_elbow_r_fk', 'ctrl_elbow_l_fk', 'ctrl_shoulder_l_fk', 'ctrl_shoulder_r_fk', 'ctrl_ankle_l_fk', 'ctrl_ball_l_fk', 'ctrl_hip_l_fk', 'ctrl_hip_r_fk', 'ctrl_knee_l_fk', 'ctrl_ankle_r_fk', 'ctrl_jne_l_toes_fk', 'ctrl_jne_r_toes_fk', 'ctrl_ball_r_fk', 'ctrl_knee_r_fk', 'ctrl_thumb_r_01', 'ctrl_handMetaOut_r', 'ctrl_handMetaInn_r', 'ctrl_pinky_r_fk_03', 'ctrl_pinky_r_fk_02', 'ctrl_pinky_r_fk_01', 'ctrl_pinky_r_fkAdd_01', 'ctrl_ring_r_fk_03', 'ctrl_ring_r_fk_02', 'ctrl_ring_r_fk_01', 'ctrl_ring_r_fkAdd_01', 'ctrl_middle_r_fk_03', 'ctrl_middle_r_fk_02', 'ctrl_middle_r_fk_01', 'ctrl_middle_r_fkAdd_01', 'ctrl_index_r_fk_03', 'ctrl_index_r_fk_02', 'ctrl_index_r_fk_01', 'ctrl_index_r_fkAdd_01', 'ctrl_thumb_r_fk_03', 'ctrl_thumb_r_fk_02', 'ctrl_thumb_r_fkAdd_01', 'ctrl_thumb_l_01', 'ctrl_handMetaOut_l', 'ctrl_handMetaInn_l', 'ctrl_pinky_l_fk_03', 'ctrl_pinky_l_fk_02', 'ctrl_pinky_l_fk_01', 'ctrl_pinky_l_fkAdd_01', 'ctrl_ring_l_fk_03', 'ctrl_ring_l_fk_02', 'ctrl_ring_l_fk_01', 'ctrl_ring_l_fkAdd_01', 'ctrl_middle_l_fk_03', 'ctrl_middle_l_fk_02', 'ctrl_middle_l_fk_01', 'ctrl_middle_l_fkAdd_01', 'ctrl_index_l_fk_03', 'ctrl_index_l_fk_02', 'ctrl_index_l_fk_01', 'ctrl_index_l_fkAdd_01', 'ctrl_thumb_l_fk_03', 'ctrl_thumb_l_fk_02', 'ctrl_thumb_l_fkAdd_01']
for eachFk in allFks :
    try:
        pEach= PyNode(eachFk)
        setAttr(pEach.mirrorTransX,-1 )
        setAttr(pEach.mirrorTransY,-1 )
        setAttr(pEach.mirrorTransZ,-1 )
        setAttr(pEach.mirrorRotX,1 )
        setAttr(pEach.mirrorRotY,1 )
        setAttr(pEach.mirrorRotZ,1 )
    except:
        pass