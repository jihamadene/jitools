##replace root by fly for ikhands

try:
    disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass

##replace root by fly for ikSwivels

try:
    disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetScale )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass
try:
    disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass
try:
    connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotate )
except RuntimeError:
    pass

