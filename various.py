import maya.cmds as cmds
import maya.mel as mel  
import ffxTools.core.maya.core.rigging.libs.libMetanetwork as lbm
reload(lbm)
import pymel.core as pymel
from pymel.core import *


######### TRANSFER SKIN #########
def transferskin():
    import maya.cmds as cmds
    import ffxTools.core.maya.core.rigging.SkinUtils as SkinUtils
    allMeshes = cmds.listRelatives('master',ad=1,pa=1,type='mesh')
    allpolyobjs = cmds.listRelatives(allMeshes,parent=1,f=1)
    allpolyObjs=[]
    for each in allpolyobjs:
        if each in allpolyObjs:
            pass
        else:
            allpolyObjs.append(each)
    for item in allpolyObjs:
        cmds.select( item, item.replace('master', 'master1'))
        SkinUtils.MenuItem_TransfertSkinCluster()

######## Scan for duplicates #######
import maya.mel as mm
import maya.cmds as cmds
from pprint import pprint

def find_short_name_duplicates(selection=False):
   long_name_list = cmds.ls(selection = selection, exactType='transform', long = True)

   short_name_list = []
   duplicate_short_name_list = []
   duplicate_dict = {}
   
   for long_name in long_name_list:
       if 'low_geom' in long_name:
           continue
           
       short_name = long_name.split('|')[-1]
       if short_name not in short_name_list:
           short_name_list.append(short_name)
       else:
           duplicate_short_name_list.append(short_name)
            
   for long_name in long_name_list:
       short_name = long_name.split('|')[-1]
       if short_name in duplicate_short_name_list:
           if short_name in duplicate_dict:
               duplicate_dict[short_name].append(long_name)
           else:
               duplicate_dict[short_name] = [long_name]
           
   return duplicate_dict
   

pprint(find_short_name_duplicates())





def makeSureMetaConx(oNode):
    import cPickle as cpickle
    metainfo = {}
    metainfo['neutralPoseOverride'] = True # set to true when user creates an override pose
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


# For all controls
aParent=[]
for each in pymel.ls(sl=1):
        oParent  = each.getParent()
        if oParent not in aParent:
            aParent.append(oParent)

for each in aParent:
	makeSureMetaConx(each)
	
	
	
import pymel.core as pm
allCons = pm.ls(type='parentConstraint')
print allCons
for cons in allCons:
    cons.interpType.set(0)
    
    
    
    
aselection=pymel.selected(sl=1)[0]
len(aselection)
for each in aselection:
    cmds.select(each)
    cmds.cluster(each,n='clu_slack')
    
aselection=pymel.selected(sl=1)[0]
for each in aselection:
    pymel.select(each)
    cmds.cluster(each,n='clu_slack')
    

###copyskin

selection2=cmds.ls(sl=1)
selection=cmds.ls(sl=1)
for each in selection:
    polyname=each.split("|")
    for peach in selection2:
        polyname2=peach.split("|")
        if polyname2[-1] == polyname[-1]:
            if polyname2[-2] == polyname[-2]:
                cmds.select(peach,each)
                import ffxTools.core.maya.core.rigging.SkinUtils as SkinUtils;
                SkinUtils.MenuItem_TransfertSkinCluster()
                cmds.CopySkinWeights
 
###showjoints                
 
####        
    
cmds.nodeType()


for each in cmds.ls(sl=1):
    cmds.setAttr(each+'.overrideColor',31)
    cmds.setAttr(each+'.overrideEnabled',1)
    
for each in cmds.ls(sl=1):
    cmds.setAttr(each+'.overrideColor',28)
    cmds.setAttr(each+'.overrideEnabled',1)
    
for each in cmds.ls(sl=1):
    cmds.setAttr(each+'.overrideColor',6)
    cmds.setAttr(each+'.overrideEnabled',1)

for each in cmds.ls(sl=1):
    cmds.setAttr(each+'.overrideColor',4)
    cmds.setAttr(each+'.overrideEnabled',1)
    
for each in cmds.ls(sl=1):
    cmds.setAttr(each+'.overrideColor',4)
    cmds.setAttr(each+'.overrideEnabled',1)
    
for each in cmds.ls(sl=1):
    cmds.setAttr(each+'.template', 1)
    
cmds.addAttr("bs_lid_r.crv_open_out_up_lid_r",min=0,max=1)
###connect scale###
for each in cmds.ls(sl=1):
    cmds.connectAttr('ctrl_root.GlobalScale', each+'.scaleX')
    cmds.connectAttr('ctrl_root.GlobalScale', each+'.scaleY')
    cmds.connectAttr('ctrl_root.GlobalScale', each+'.scaleZ')
    
###Fix Synchronized euler on all####
import maya.cmds as cmds
animCurves=cmds.ls(type='animCurve')    
for each in animCurves:
    try:
        cmds.rotationInterpolation(each,c='none')
    except Exception:
        pass
#####
    
for each in cmds.ls(sl=1):
 to jnt_LeftThumb1.

for each in cmds.ls(sl=1):
    cmds.connectAttr ('ctrl_root.visibilityleftarm', each+'.scale.scaleX',f=1)
    cmds.connectAttr ('ctrl_root.visibilityleftarm', each+'.scale.scaleY',f=1)
    cmds.connectAttr ('ctrl_root.visibilityleftarm', each+'.scale.scaleZ',f=1)
    
for each in cmds.ls(sl=1):   
    cmds.setAttr(each+".inputAttractMethod",1)
    cmds.setAttr(each+".inputAttractMapType",1)
    
import ffxTools.core.maya as ffx
import maya.cmds as cmds   
selection=cmds.ls(sl=1)
storedrot=cmds.xform(selection[-1],q=1,ws=1,ro=1)
storedpos=cmds.xform(selection[-1],q=1,ws=1,t=1)
from ffxTools.core.maya.core.animation import AnimUtils
AnimUtils.ResetSelectedObsjPose()
cmds.xform(selection[-1],ws=1,ro=storedrot)
cmds.xform(selection[-1],ws=1,t=storedpos)   

cmds.objectType('Character1_Ctrl_HipsEffector')
####dynChain
def dynChain(direction):
    geomlist=cmds.ls(sl=1)
    sortlist={}
    sortedgeom=[]
    curvepnts=[]
    #dicoloc={}
    dicojnt={}
    jntlist=[]
    sortlistpointcurve={}
    mycurvedefinition='curve -d 3'
    if cmds.objExists('locs')== 0:
        cmds.group(em=1,n='locs')
    if cmds.objExists('jnts')== 0:
        cmds.group(em=1,n='jnts')
    for each in geomlist:
        cmds.xform(each,cp=1)
        translations=cmds.xform(each,q=1,ws=1,rp=1)
        cmds.xform(each,t=(translations[0]*-1,translations[1]*-1,translations[2]*-1))
        cmds.makeIdentity(each,a=1)
        cmds.xform(each,t=(translations[0],translations[1],translations[2]))
        sortlist[translations[direction]]=each
        sortlistpointcurve[translations[direction]]=str(translations)
    sortedlist=sorted(sortlist)
    sortedcoords=sorted(sortlistpointcurve)
    for each in sortedcoords:
        curvepnts.append(sortlistpointcurve[each])
    for each in sortedlist:
        sortedgeom.append(sortlist[each])
    for each in curvepnts:
        mycurvedefinition+=' -p '+each
    mycurvedefinition = mycurvedefinition.translate(None, '[],')
    mycurve=mel.eval(mycurvedefinition)
    for each in sortedgeom:
        cmds.select(each)
        jnt=cmds.joint(n=each.replace('geom_','jnt_'))
        jntlist.append(jnt)
        #loc=cmds.spaceLocator()
        #cmds.parent(loc,jnt,r=1)
        #cmds.parent(loc,'locs')
        cmds.parent(jnt,'jnts')
        #cmds.parentConstraint(loc,jnt,mo=0)
        #tupple=(each,jnt)
        dicojnt[jnt]=each
        #dicoloc[loc[0]]=jnt
    cmds.select(pouet)
    mel.eval('makeCurvesDynamic 2 { "0", "0", "1", "1", "0"}')
    myfol=cmds.listConnections(mycurve)
    myfolshape=cmds.listRelatives(myfol)
    outfol=cmds.listConnections(myfolshape[0],d=1)
    for each in jntlist:
        motionpathname=cmds.pathAnimation(each,c=outfol[-1],fm=0, f=1, fa='x', ua='z',wut= "object", wu=( 0 ,0 ,1))
        uvalue= float(jntlist.index(each)-1)
        mel.eval('source generateChannelMenu.mel;')
        cmds.delete(motionpathname+'_uValue')
        cmds.setAttr(motionpathname+'.uValue',uvalue)

    for each in dicojnt:
        cmds.skinCluster(each, dicojnt[each],tsb=1)
    
    
    
#####joint for each sel 
def jntForEach():
    import maya.cmds as cmds
    import pymel.core as pymel

    geolist=cmds.ls(sl=1)   
    for each in geolist:
        cmds.select(cl=1)
        boxarray=cmds.exactWorldBoundingBox(each)
        jnt=cmds.joint(name=each.replace('geom_','jnt_'),p=((boxarray[0]+boxarray[3])/2,(boxarray[1]+boxarray[4])/2,(boxarray[2]+boxarray[5])/2))
        cmds.skinCluster(each,jnt,tsb=1)



#####controler for each sel    
def ctrlForEach():
    import maya.cmds as cmds
    import pymel.core as pymel       
    jntlist=cmds.ls(sl=1)
    for each in jntlist:
        neach=each.replace('jnt_', 'ctrl_')
        cmds.circle(n=neach,r=50,nry=1,nrz=0,nrx=0)
        cmds.parent(neach,each,r=1)
        offgroup= neach+'_offset'
        pymel.group(em=True,name=(offgroup))
        cmds.parent(offgroup, neach, r=1)
        cmds.parent(offgroup,w=True,a=1)
        cmds.parent(neach,offgroup)
        cmds.parentConstraint(neach,each,mo=1)
        
######DEFS

jntForEach()
ctrlForEach()    