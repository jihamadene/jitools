connectAttr('ctrl_shoulder_l_ik.parent','ctrl_shoulderExtra_l_ik.parent')
connectAttr('ctrl_shoulder_r_ik.parent','ctrl_shoulderExtra_r_ik.parent')
setAttr ("ctrl_shoulderExtra_r_ik.parent", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_l_ik.parent", lock=1, keyable=0,channelBox=0)
