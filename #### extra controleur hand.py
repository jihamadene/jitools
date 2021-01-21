
#### extra controleur shoulders
rename('ctrl_shoulder_l_ik', 'ctrl_shoulderExtra_l_ik')
rename('ctrl_shoulder_r_ik', 'ctrl_shoulderExtra_r_ik')
duplicate('ctrl_shoulderExtra_l_ik', n='ctrl_shoulder_l_ik')
duplicate('ctrl_shoulderExtra_r_ik', n='ctrl_shoulder_r_ik')
parent('ctrl_shoulderExtra_r_ik','ctrl_shoulder_r_ik')
parent('ctrl_shoulderExtra_l_ik','ctrl_shoulder_l_ik')
# scale les curves
curvSel=[PyNode('ctrl_shoulderExtra_l_ik'),PyNode('ctrl_shoulderExtra_r_ik')]


def cvRelativeScale(amount, _aList):
    for oCurSel in _aList:
        pymel.select(oCurSel.cv)
        pymel.scale([amount, amount, amount], r=True)

cvRelativeScale(0.7,curvSel)
# connecter les extraAtt's
connectAttr('ctrl_shoulder_l_ik.IkTwist','ctrl_shoulderExtra_l_ik.IkTwist')

connectAttr('ctrl_shoulder_l_ik.StretchAmount','ctrl_shoulderExtra_l_ik.StretchAmount')
connectAttr('ctrl_shoulder_l_ik.SoftIkRatio','ctrl_shoulderExtra_l_ik.SoftIkRatio')
connectAttr('ctrl_shoulder_r_ik.IkTwist','ctrl_shoulderExtra_r_ik.IkTwist')
connectAttr('ctrl_shoulder_r_ik.StretchAmount','ctrl_shoulderExtra_r_ik.StretchAmount')
connectAttr('ctrl_shoulder_r_ik.SoftIkRatio','ctrl_shoulderExtra_r_ik.SoftIkRatio')
connectAttr('ctrl_shoulder_l_ik.parent','ctrl_shoulderExtra_l_ik.parent')
connectAttr('ctrl_shoulder_r_ik.parent','ctrl_shoulderExtra_r_ik.parent')
#hide extraAttr's
setAttr ("ctrl_shoulderExtra_l_ik.StretchAmount", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_l_ik.SoftIkRatio", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_l_ik.IkTwist", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_r_ik.StretchAmount", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_r_ik.SoftIkRatio", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_r_ik.IkTwist", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_r_ik.parent", lock=1, keyable=0,channelBox=0)
setAttr ("ctrl_shoulderExtra_l_ik.parent", lock=1, keyable=0,channelBox=0)
# connecter au meta
def makeSureMetaConx(oNode):
    import cPickle as cpickle
    metainfo = {}
    metainfo['neutralPoseOverride'] = False # set to true when user creates an override pose
    metainfo['neutralPose'] = {}
    metainfo['overridePose'] = {}
    storable_atts = [att for att in oNode.listAttr(keyable=True) if '.' in att.name()]
    for param in storable_atts:
        formatParam = str(param.split('.')[-1])
        metainfo['neutralPose'][formatParam] = param.get()
        metainfo['overridePose'][formatParam] = param.get()
    pickledDict = cpickle.dumps(metainfo)
    oCurCtrl = oNode
    _sAttrName = 'metainfo'
    _pValue = pickledDict
    sType = 'string'
    DataTypeKws = { 'string': { 'longName':_sAttrName, 'dt':'string' }}
    if not hasAttr(oCurCtrl, _sAttrName):
        pymel.addAttr(oCurCtrl, **DataTypeKws[sType])
    getattr(oCurCtrl, _sAttrName).set("")
    getattr(oCurCtrl, _sAttrName).set(_pValue)

    aAttr = ['meta_controls', 'metacharacter']
    for sAttrName in aAttr:
        sType = 'string'
        DataTypeKws = { 'string': { 'longName':sAttrName, 'dt':'string' }}
        if not hasAttr(oCurCtrl, sAttrName):
            pymel.addAttr(oCurCtrl, **DataTypeKws[sType])

    pymel.connectAttr(pymel.PyNode('metanetwork').meta_controls, oNode.meta_controls, f=True)
    pymel.connectAttr(pymel.PyNode('metanetwork').metacharacter, oNode.metacharacter, f=True)

aParent = [PyNode('ctrl_shoulder_l_ik'),PyNode('ctrl_shoulder_r_ik')]

for each in aParent:
    makeSureMetaConx(each)

#add to AllCtrls set
aController=['ctrl_shoulder_l_ik','ctrl_shoulder_r_ik']
for oController in aController:
    try:
        mel.eval("catch(`sets -e -forceElement All_Controls "+str(oController)+"`);") 
    except ValueError:
        pass

#Fix attributnames
_lNetArm = pymel.PyNode("net_Arm")
_rNetArm = pymel.PyNode("net_Arm1")
renameAttr(_lNetArm.fSwivelDistance , 'fIkSwivelDistance')
renameAttr(_rNetArm.fSwivelDistance , 'fIkSwivelDistance')
