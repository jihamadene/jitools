from pymel.core import *
for aach in range(68):
    each=(aach+1)
    print each 
    eloc=PyNode(str('moLoc0'+str(each)))
    ejnt= PyNode(str('joint'+str(each)))
    enjnt= PyNode(str('joint'+str(each+1)))
    #eclu= PyNode(str('cluster'+str(each)))
    #esu=(((float(1)/float(68))*each))
    esf=(((float(10)/float(68))*each))
    eef=(10+((float(10)/float(68))*each))
    print (ejnt)
    print (eloc)
    emotion=PyNode(str('motionPath'+str(each)))
    edriver=PyNode('ctrl_cog')
    #pathAnimation(eloc,curve='nurbsCircle1',su=esu)
    #parentConstraint( eloc ,ejnt,mo=0)
    #shadingNode('plusMinusAverage',asUtility=1, name=str('plusminus'+str(each)))
    #connectAttr( PyNode(str('motionPath'+str(each)+'_uValue')).output,PyNode(str('plusminus'+str(each))).input1D[0],f=1)
    #connectAttr( PyNode(str('plusminus'+str(each))).output1D , emotion.uValue,f=1)
    #setAttr(edriver.rollDathing ,esf )
    #setAttr(emotion.uValue ,0 )
    #setDrivenKeyframe(emotion, at='uValue', cd='ctrl_cog.rollDathing' )
    #setAttr(edriver.rollDathing ,eef )
    #setAttr(emotion.uValue ,1 )
    #setDrivenKeyframe(emotion, at='uValue', cd='ctrl_cog.rollDathing' )
    aimConstraint(enjnt, ejnt,maintainOffset=1,worldUpObject='locup', worldUpType="objectrotation",) 



    aselection=ls(sl=1)[0]
print aselection
for each in aselection:
    print each
    cluster(each,n='clu_aim1')
    
    #circle(n='ctrl_'+str(each))
    #parentConstraint(PyNode('ctrl_'+str(each)),PyNode(each),mo=1)



for each in range (122):
    #shadingNode('nearestPointOnCurve',asUtility=1, name='nPOC'+str(each))
    #shadingNode('decomposeMatrix',asUtility=1, name='decMat'+str(each))
    #connectAttr( PyNode('decMat'+str(each)).outputTranslate,PyNode('nPOC'+str(each)).inPosition ,f=1)
    #connectAttr( PyNode('rig_ruban_'+str(each)).worldMatrix[0],PyNode('decMat'+str(each)).inputMatrix ,f=1)
    #connectAttr(PyNode('aimpathShape').worldSpace[0],PyNode('nPOC'+str(each)).inputCurve,f=1)
    #group(em=1,n='aimnull'+str(each))
    #connectAttr(PyNode('nPOC'+str(each)).position, PyNode('aimnull'+str(each)).translate,f=1)
    #parentConstraint( PyNode('rig_ruban_'+str(each)),PyNode('jnt_ruban_'+str(each)),sr=['x','y','z'])
    aimConstraint('jnt_ruban_'+str(each+1),'jnt_ruban_'+str(each) ,aim=[0,1,0],u=[-1,0,0],   wuo='aimnull'+str(each),wut='object')




