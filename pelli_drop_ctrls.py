from maya.cmds import *
import pymel.core as pm 

amintime=cmds.playbackOptions(query=1, minTime=1)
amaxtime=cmds.playbackOptions(query=1, maxTime=1)
mytime=currentTime( query=True )


while mytime <= amaxtime:   
    mytime=currentTime( query=True )
    release=getAttr('prPelliculeDeveloppee_rig:ctrl_cog.release')
    released=getAttr('prPelliculeDeveloppee_rig:ctrl_cog.released')
    selected_control='prPelliculeDeveloppee_rig:ctrl_pelli_'+str(release)
    parent_status=getAttr(selected_control+'.parent')
    
    if parent_status ==1 and released < release:
        select(selected_control)
        setKeyframe()
        currentTime( mytime-1, update=False, edit=True )
        setKeyframe()
        prevpos=xform (q=1,t=1,ws=1)
        prevrot=xform (q=1,ws=1,ro=1)
        currentTime( mytime, update=False, edit=True )
        setAttr(str(selected_control)+'.parent',2)
        move(prevpos[0],prevpos[1],prevpos[2],ws=1,xyz=1)
        rotate(prevrot[0],prevrot[1],prevrot[2],ws=1,xyz=1)
        setKeyframe()
        setAttr('prPelliculeDeveloppee_rig:ctrl_cog.released',released+1)
        
    currentTime(mytime+1)