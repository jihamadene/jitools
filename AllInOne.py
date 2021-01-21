import maya.cmds as cmds
import maya.mel as mel  
import ffxTools.core.maya.core.rigging.libs.libMetanetwork as lbm
reload(lbm)
import cPickle as cpickle
from pymel.core import *


########################################## CONNECT UI #########################################
#Connect body part
#lbm._connectBodyParts()

def addHands():
    
    #add ctrls for left hand
    alCtrls = ['ctrl_thumb_l_fkAdd_01', 'ctrl_thumb_l_fk_03', 'ctrl_thumb_l_fk_02', 'ctrl_index_l_fkAdd_01', 'ctrl_index_l_fk_03', 'ctrl_index_l_fk_02', 'ctrl_index_l_fk_01', 'ctrl_middle_l_fkAdd_01', 'ctrl_middle_l_fk_03', 'ctrl_middle_l_fk_02', 'ctrl_middle_l_fk_01', 'ctrl_ring_l_fkAdd_01', 'ctrl_ring_l_fk_03', 'ctrl_ring_l_fk_02', 'ctrl_ring_l_fk_01', 'ctrl_pinky_l_fkAdd_01', 'ctrl_pinky_l_fk_03', 'ctrl_pinky_l_fk_02', 'ctrl_pinky_l_fk_01', 'ctrl_handMetaInn_l', 'ctrl_handMetaOut_l', 'ctrl_thumb_l_01']
    _oSource = PyNode("net_Hand")
    _sAttrName = "aCtrls"
    addAttr(_oSource, longName=_sAttrName, at='message', multi=True)
    for i, each in enumerate(alCtrls):
        PyNode(each).message.connect(_oSource.aCtrls[i])

    #add ctrls for right hand
    arCtrls = ['ctrl_thumb_r_fkAdd_01', 'ctrl_thumb_r_fk_03', 'ctrl_thumb_r_fk_02', 'ctrl_index_r_fkAdd_01', 'ctrl_index_r_fk_03', 'ctrl_index_r_fk_02', 'ctrl_index_r_fk_01', 'ctrl_middle_r_fkAdd_01', 'ctrl_middle_r_fk_03', 'ctrl_middle_r_fk_02', 'ctrl_middle_r_fk_01', 'ctrl_ring_r_fkAdd_01', 'ctrl_ring_r_fk_03', 'ctrl_ring_r_fk_02', 'ctrl_ring_r_fk_01', 'ctrl_pinky_r_fkAdd_01', 'ctrl_pinky_r_fk_03', 'ctrl_pinky_r_fk_02', 'ctrl_pinky_r_fk_01', 'ctrl_handMetaInn_l', 'ctrl_handMetaOut_l', 'ctrl_thumb_r_01']
    _oSource = PyNode("net_Hand1")
    _sAttrName = "aCtrls"
    addAttr(_oSource, longName=_sAttrName, at='message', multi=True)
    for i, each in enumerate(arCtrls):
        PyNode(each).message.connect(_oSource.aCtrls[i])



########################################## METAHANDS #########################################

def metaHands():
    ## inverser les metaOut et connecter les meta aux doigts##
    setAttr('ctrl_handMetaOut_l_offset.rotateX', 180)
    setAttr('ctrl_handMetaOut_l_offset.rotateZ', 180)
    setAttr('ctrl_handMetaOut_r_offset.rotateX', 180)
    setAttr('ctrl_handMetaOut_r_offset.rotateZ', 180)

    shadingNode('multiplyDivide',  n='mulDiv_invertMeta_l',  asUtility=True)
    shadingNode('multiplyDivide',  n='mulDiv_invertMeta_r',  asUtility=True)

    setAttr ('mulDiv_invertMeta_l.input2Z',-1)
    setAttr ('mulDiv_invertMeta_l.input2X',-1)
    setAttr ('mulDiv_invertMeta_l.input2Y',-1)
    setAttr ('mulDiv_invertMeta_r.input2Z',-1)
    setAttr ('mulDiv_invertMeta_r.input2X',-1)
    setAttr ('mulDiv_invertMeta_r.input2Y',-1)

    connectAttr(PyNode( 'ctrl_handMetaOut_l').rotateZ,PyNode( 'mulDiv_invertMeta_l').input1Z, f=True)
    connectAttr(PyNode( 'ctrl_handMetaOut_l').rotateX,PyNode( 'mulDiv_invertMeta_l').input1X, f=True)
    connectAttr(PyNode( 'ctrl_handMetaOut_l').rotateY,PyNode( 'mulDiv_invertMeta_l').input1Y, f=True)
    connectAttr(PyNode( 'ctrl_handMetaOut_r').rotateZ,PyNode( 'mulDiv_invertMeta_r').input1Z, f=True)
    connectAttr(PyNode( 'ctrl_handMetaOut_r').rotateX,PyNode( 'mulDiv_invertMeta_r').input1X, f=True)
    connectAttr(PyNode( 'ctrl_handMetaOut_r').rotateY,PyNode( 'mulDiv_invertMeta_r').input1Y, f=True)

    setAttr ("rig_hand_l_driverOutInf.rx",lock=0)
    setAttr ("rig_hand_l_driverOutInf.ry",lock=0)
    setAttr ("rig_hand_l_driverOutInf.rz",lock=0)
    setAttr ("rig_hand_r_driverOutInf.rx",lock=0)
    setAttr ("rig_hand_r_driverOutInf.ry",lock=0)
    setAttr ("rig_hand_r_driverOutInf.rz",lock=0)

    connectAttr(PyNode( 'mulDiv_invertMeta_l').outputZ,PyNode( 'rig_hand_l_driverOutInf').rotateZ, f=True)
    connectAttr(PyNode( 'mulDiv_invertMeta_l').outputX,PyNode( 'rig_hand_l_driverOutInf').rotateX, f=True)
    connectAttr(PyNode( 'mulDiv_invertMeta_l').outputY,PyNode( 'rig_hand_l_driverOutInf').rotateY, f=True)
    connectAttr(PyNode( 'mulDiv_invertMeta_r').outputZ,PyNode( 'rig_hand_r_driverOutInf').rotateZ, f=True)
    connectAttr(PyNode( 'mulDiv_invertMeta_r').outputX,PyNode( 'rig_hand_r_driverOutInf').rotateX, f=True)
    connectAttr(PyNode( 'mulDiv_invertMeta_r').outputY,PyNode( 'rig_hand_r_driverOutInf').rotateY, f=True)

    setAttr ("rig_hand_l_driverOutInf.rx",lock=1)
    setAttr ("rig_hand_l_driverOutInf.ry",lock=1)
    setAttr ("rig_hand_l_driverOutInf.rz",lock=1)
    setAttr ("rig_hand_r_driverOutInf.rx",lock=1)
    setAttr ("rig_hand_r_driverOutInf.ry",lock=1)
    setAttr ("rig_hand_r_driverOutInf.rz",lock=1)

    parentConstraint( 'jnt_index_l_00','ctrls_index_l_fk', mo=True,n='cste_metaToIndex_l')
    parentConstraint( 'jnt_thumb_l_01','ctrls_thumb_l_fk', mo=True,n='cste_metaToThumb_l')
    parentConstraint( 'jnt_middle_l_00','ctrls_middle_l_fk', mo=True,n='cste_metaToMiddle_l')
    parentConstraint( 'jnt_pinky_l_00','ctrls_pinky_l_fk', mo=True,n='cste_metaToPinky_l')
    parentConstraint( 'jnt_ring_l_00','ctrls_ring_l_fk', mo=True,n='cste_metaToRing_l')


    parentConstraint( 'jnt_index_r_00','ctrls_index_r_fk', mo=True,n='cste_metaToIndex_r')
    parentConstraint( 'jnt_thumb_r_01','ctrls_thumb_r_fk', mo=True,n='cste_metaToThumb_r')
    parentConstraint( 'jnt_middle_r_00','ctrls_middle_r_fk', mo=True,n='cste_metaToMiddle_r')
    parentConstraint( 'jnt_pinky_r_00','ctrls_pinky_r_fk', mo=True,n='cste_metaToPinky_r')
    parentConstraint( 'jnt_ring_r_00','ctrls_ring_r_fk', mo=True,n='cste_metaToRing_r')


########################################## EXTRA IKHAND #########################################
def extraIkHands():
    ##rename nets
    rename("net_shoulder_l_Arm_01","net_Arm")
    rename("net_shoulder_r_Arm_01","net_Arm1")
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
            select(oCurSel.cv)
            scale([amount, amount, amount], r=True)

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
            addAttr(oCurCtrl, **DataTypeKws[sType])
        getattr(oCurCtrl, _sAttrName).set("")
        getattr(oCurCtrl, _sAttrName).set(_pValue)

        aAttr = ['meta_controls', 'metacharacter']
        for sAttrName in aAttr:
            sType = 'string'
            DataTypeKws = { 'string': { 'longName':sAttrName, 'dt':'string' }}
            if not hasAttr(oCurCtrl, sAttrName):
                addAttr(oCurCtrl, **DataTypeKws[sType])

        connectAttr(PyNode('metanetwork').meta_controls, oNode.meta_controls, f=True)
        connectAttr(PyNode('metanetwork').metacharacter, oNode.metacharacter, f=True)

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
    _lNetArm = PyNode("net_Arm")
    _rNetArm = PyNode("net_Arm1")
    renameAttr(_lNetArm.fSwivelDistance , 'fIkSwivelDistance')
    renameAttr(_rNetArm.fSwivelDistance , 'fIkSwivelDistance')

    mel.eval('source fix_extrahand.mel')

    ## colorise curves
    setAttr(PyNode('ctrls_shoulder_l_arm').overrideColor,6)
    setAttr(PyNode('ctrls_shoulder_r_arm').overrideColor,13)
    setAttr(PyNode('ctrls_shoulder_l_arm').overrideEnabled, 1)
    setAttr(PyNode('ctrls_shoulder_r_arm').overrideEnabled, 1)

######################################### EYES FIX ########################################
def eyesfix():
    oEye = PyNode('ctrl_eye')
    addAttr(oEye, longName="parent", at='enum', en="Head:Root", k=True)
    oCte = parentConstraint(PyNode('ctrl_root'), PyNode('ctrls_eye'),mo=True)
    oFristCond = shadingNode('condition', au=True)
    oFristCond.colorIfTrueR.set(1)
    oFristCond.colorIfFalseR.set(0)
    oSecondCond = shadingNode('condition', au=True)
    oSecondCond.colorIfTrueR.set(1)
    oSecondCond.colorIfFalseR.set(0)
    oSecondCond.secondTerm.set(1)
    oEye.parent.connect(oFristCond.firstTerm)
    oEye.parent.connect(oSecondCond.firstTerm)
    ihead, iRoot = parentConstraint(oCte, q=True, weightAliasList=True)
    oFristCond.outColorR.connect(ihead)
    oSecondCond.outColorR.connect(iRoot)


########################################## TOESBEND #########################################
def toeBend():

    cmds.shadingNode('setRange',au=1,n='sr_footroll_l')
    cmds.shadingNode('plusMinusAverage',au=1,n='pm_footroll_l')
    cmds.shadingNode('setRange',au=1,n='sr_footroll_r')
    cmds.shadingNode('plusMinusAverage',au=1,n='pm_footroll_r')
    cmds.setAttr("rig_ankle_l_pivToes.rx", lock=0)
    cmds.setAttr("rig_ankle_r_pivToes.rx", lock=0)
    cmds.connectAttr ('ctrl_hip_l_ik.FootRoll', 'sr_footroll_l.valueX',f=1)
    cmds.connectAttr ('ctrl_hip_r_ik.FootRoll', 'sr_footroll_r.valueX',f=1)
    cmds.connectAttr ('pm_footroll_l.output1D', 'rig_ankle_l_pivToes.rotateX',f=1)
    cmds.connectAttr ('pm_footroll_r.output1D', 'rig_ankle_r_pivToes.rotateX',f=1)
    #cmds.connectAttr ('pm_footroll_l.output1D', 'ctrl_hip_l_ik.ToeBend')
    #cmds.connectAttr ('pm_footroll_r.output1D', 'ctrl_hip_r_ik.ToeBend')
    cmds.connectAttr ('sr_footroll_r.outValueX', 'pm_footroll_r.input1D[0]',f=1)
    cmds.connectAttr ('sr_footroll_l.outValueX', 'pm_footroll_l.input1D[0]',f=1)
    cmds.connectAttr ('ctrl_hip_l_ik.ToeBend', 'pm_footroll_l.input1D[1]',f=1)
    cmds.connectAttr ('ctrl_hip_r_ik.ToeBend', 'pm_footroll_r.input1D[1]',f=1)
    cmds.setAttr("rig_ankle_l_pivToes.rx", lock=1)
    cmds.setAttr("rig_ankle_r_pivToes.rx", lock=1)

    setAttr("sr_footroll_r.oldMaxX",15)
    setAttr("sr_footroll_l.oldMaxX",15)
    setAttr("sr_footroll_r.maxX",7)
    setAttr("sr_footroll_l.maxX",7)

########################################## FIXFLY #########################################
def fixfly():
    ##replace root by fly for ikhands
    cmds.disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetScale )
    cmds.connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetScale )
    cmds.disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetScale )
    cmds.connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetScale )
    cmds.disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotate )
    cmds.connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_l_ik_offset_parentConstraint1').target[0].targetRotate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotate )
    cmds.connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_r_ik_offset_parentConstraint1').target[0].targetRotate )

    ##replace root by fly for ikSwivels
    cmds.disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').translate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').translate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivotTranslate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivotTranslate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateTranslate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.disconnectAttr(PyNode('ctrl_root').rotatePivot, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.connectAttr(PyNode('ctrl_fly').rotatePivot, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotatePivot )
    cmds.disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.disconnectAttr(PyNode('ctrl_root').rotateOrder, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.connectAttr(PyNode('ctrl_fly').rotateOrder, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotateOrder )
    cmds.disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.disconnectAttr(PyNode('ctrl_root').parentMatrix[0], PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.connectAttr(PyNode('ctrl_fly').parentMatrix[0], PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetParentMatrix )
    cmds.disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetScale )
    cmds.connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetScale )
    cmds.disconnectAttr(PyNode('ctrl_root').scale, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetScale )
    cmds.connectAttr(PyNode('ctrl_fly').scale, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetScale )
    cmds.disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotate )
    cmds.connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_l_swivel_offset_parentConstraint1').target[0].targetRotate )
    cmds.disconnectAttr(PyNode('ctrl_root').rotate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotate )
    cmds.connectAttr(PyNode('ctrl_fly').rotate, PyNode('ctrl_shoulder_r_swivel_offset_parentConstraint1').target[0].targetRotate )

## set Fly Size
    
    cmds.setAttr('makeNurbCircle72.centerY',0.82)
    cmds.setAttr('makeNurbCircle70.centerY',0.82)
    cmds.setAttr('makeNurbCircle71.centerY',0.82)
    cmds.setAttr('makeNurbCircle72.centerZ',-0.82)
    cmds.setAttr('makeNurbCircle70.centerZ',-0.82)
    cmds.setAttr('makeNurbCircle71.centerZ',-0.82)
    cmds.setAttr('makeNurbCircle71.radius',0.47)
    cmds.setAttr('makeNurbCircle72.radius',0.39)
    cmds.setAttr('makeNurbCircle70.radius',0.56)



########################################## EXTRAPARENTS #########################################
def extraParents():
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
        cmds.file('/media/Data/maya_default/scripts/ctrl_headaim.ma',i=1,rpr='clash')
    cmds.parent('ctrl_headAim','ctrl_aim_offset',r=1)
    parentConstraint('ctrl_headAim', 'rig_aimloc')
    parentConstraint('ctrl_rootShape', 'loc_upVectorHeadAim')
    cmds.group('rig_aimloc','loc_upVectorHeadAim',name='rig_aim', parent='rigs')
    cmds.connectAttr('conditionHead_05.outColor.outColorR','ctrl_aim_offset.visibility')


########################################## CONNECT META MiRROR #########################################
def ConnectMetaMirror():
    setAttr("ctrl_neck_fk.parent",1)
    setAttr("ctrl_shoulder_l_fk.parent",1)
    setAttr("ctrl_shoulder_r_fk.parent",1)
    setAttr("ctrl_head_fk.parent",2)


    def makeSureMetaConx(oNode):
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
            addAttr(oCurCtrl, **DataTypeKws[sType])
        getattr(oCurCtrl, _sAttrName).set("")
        getattr(oCurCtrl, _sAttrName).set(_pValue)

        aAttr = ['meta_controls', 'metacharacter']
        for sAttrName in aAttr:
            sType = 'string'
            DataTypeKws = { 'string': { 'longName':sAttrName, 'dt':'string' }}
            if not hasAttr(oCurCtrl, sAttrName):
                addAttr(oCurCtrl, **DataTypeKws[sType])

        connectAttr(PyNode('metanetwork').meta_controls, oNode.meta_controls, f=True)
        connectAttr(PyNode('metanetwork').metacharacter, oNode.metacharacter, f=True)

    ### AddMirror
    def addMirrorAttr(_aList):
        for oCurControl in _aList:
            if PyNode(oCurControl).hasAttr('mirrorTrans') is False:
                addAttr(oCurControl, ln='mirrorTrans', numberOfChildren=3, attributeType='compound')
                addAttr(oCurControl, ln='mirrorTransX', attributeType='double', parent='mirrorTrans')
                addAttr(oCurControl, ln='mirrorTransY', attributeType='double', parent='mirrorTrans')
                addAttr(oCurControl, ln='mirrorTransZ', attributeType='double', parent='mirrorTrans')
            else:
                #log.debug("{0} already has mirrorTrans as attribute!".format(oCurControl))
                pass
            if PyNode(oCurControl).hasAttr('mirrorRot') is False:
                addAttr(oCurControl, ln='mirrorRot', numberOfChildren=3, attributeType='compound')
                addAttr(oCurControl, ln='mirrorRotX', attributeType='double', parent='mirrorRot')
                addAttr(oCurControl, ln='mirrorRotY', attributeType='double', parent='mirrorRot')
                addAttr(oCurControl, ln='mirrorRotZ', attributeType='double', parent='mirrorRot')
            else:
                #log.debug("{0} already has mirrorRot as attribute!".format(oCurControl))
                pass

    # For all controls
    aParent=[]
    for each in ls(type="nurbsCurve"):
        if each.name().startswith("ctrl_"):
            oParent  = each.getParent()
            if oParent not in aParent:
                aParent.append(oParent)

    for each in aParent:
        makeSureMetaConx(each)

    addMirrorAttr(aParent)


########################################## SETMIRRORS #########################################
def setMirrors():

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
##########################################CALL DEFS###################################################
lbm._connectBodyParts()
addHands()
metaHands()
extraIkHands()
eyesfix()
toeBend()
fixfly()
extraParents()
ConnectMetaMirror()
setMirrors()
mel.eval('source cleanup.mel')
