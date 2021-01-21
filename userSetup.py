import os
import sys
import platform
#import ffxTools.core.maya
import maya.cmds as cmds
import pymel.core as pymel
import pymel.core as pm
import maya.mel as mel


#sys.path.append('/usr/lib64/python2.7/site-packages/')

#ffxTools.core.maya.start()


def ConnectToPycharm():
    system = platform.system()
    if "Linux" in system:
        sys.path.append('/opt/pycharm-3.4.1/pycharm-debug.egg')
    else:
        sys.path.append('C:\Program Files (x86)\JetBrains\PyCharm 3.4.1\pycharm-debug.egg')
    import pydevd
    pydevd.settrace('localhost', port=7720, stdoutToServer=True, stderrToServer=True, suspend=False)

