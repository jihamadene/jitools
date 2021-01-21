import ffxTools.core.maya as ffx
import maya.cmds as cmds   
selection=cmds.ls(sl=1)
storedrot=cmds.xform(selection[-1],q=1,ws=1,ro=1)
storedpos=cmds.xform(selection[-1],q=1,ws=1,t=1)
from ffxTools.core.maya.core.animation import AnimUtils
AnimUtils.ResetSelectedObsjPose()
cmds.xform(selection[-1],ws=1,ro=storedrot)
cmds.xform(selection[-1],ws=1,t=storedpos)