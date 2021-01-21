# 'C:\Program Files\Autodesk\Maya2017\bin\mayapy.exe'
# import maya.standalone
# maya.standalone.initialize( name='python' )
import os
import maya.cmds as cmds
sourcepath=/mnt/projects/p1605_mmm/assets/anChainePrairie/maya/
paths = [os.path.join(fn) for fn in next(os.walk(sourcepath))[2]]
meach=[]
for each in paths:
    if '.ma' in each or '.mb' in each:
        if not '.ma.' in each and not '.mb.' in each:
            meach.append(each)
print meach

for each in meach:
    try:
        peach=sourcepath+'/'+each
        print '****************************************'+peach+'*******************************************************'
        import maya.standalone
        maya.standalone.initialize()
        cmds.file(peach,o=1,f=1)
        print peach
        scenename=cmds.file(q=1,sn=1)
        filename=scenename.replace('.ma','')
        print filename
        cmds.setAttr("defaultRenderGlobals.imageFormat",32)
        cmds.setAttr( "perspShape.backgroundColor",0.308,  0.722277,  1, type='double3',)
        cmds.setAttr('defaultRenderGlobals.ren','mayaHardware2',type='string')
        # cmds.select(cmds.listRelatives(cmds.ls(geometry=True), p=True, path=True), r=True)
        # cmds.viewFit( f=1)
        time=cmds.currentTime(q=1)
        cmds.playblast(fr=time,et=1,format='qt',f=filename,wh=(512,512),p=100,viewer=0,forceOverwrite=1,fp=0,fo=1,compression="jpeg")
    except:
       pass
