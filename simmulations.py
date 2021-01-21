import maya.cmds as cmds
import pymel.core as pm
from ffxTools.core.maya.core.animation import AnimUtils
import maya.mel as mel
import os as os

cmds.rotate
charalist=[
'ppElder_rig'
]
starttime = 980
setattrlist=[
###Nelly###
('ppNelly_rig:ctrl_cog.dynamic', 1),
('ppNelly_rig:ctrl_cog.startFrame', starttime),
###Simon###
('ppSimon_rig:ctrl_cog.dynamic', 1),
('ppSimon_rig:ctrl_cog.startFrame', starttime),
###psCapitaine_rig###
('psCapitaine_rig:ctrl_cog.dynamic', 1),
('psCapitaine_rig:ctrl_cog.startFrame', starttime),
###Taylor###
('ppTaylor_rig:ctrl_cog.dynamic', 1),
('ppTaylor_rig:ctrl_cog.startFrame', starttime),
###MmeMartineau###
('ppMmeMartineau_rig:ctrl_cog.dynamic', 1),
('ppMmeMartineau_rig:ctrl_cog.startFrame', starttime),
###ppTensing_rig###
('ppTensing_rig:ctrl_cog.dynamic', 1),
('ppTensing_rig:ctrl_cog.startframe', starttime),
###ppGardienSecurite_rig###
('ppGardienSecurite_rig:ctrl_cog.dynamic', 1),
('ppGardienSecurite_rig:ctrl_cog.startFrame', starttime),
###ppShirisha_rig###
('ppShirisha_rig:ctrl_cog.dynamic', 1),
('ppShirisha_rig:ctrl_cog.startFrame', starttime),
###ppAnnulu_rig###
('ppAnnulu_rig:ctrl_cog.dynamic', 1),
('ppAnnulu_rig:ctrl_cog.startFrame', starttime),
]
simlist=[
         'hairSystemShape',
          'nClothShape'
          ]


def disconnectsimkeys():
    for each in charalist:
        try:
            peach=pm.PyNode(each+':ctrl_cog')
            tokill=cmds.listConnections( peach+'.startFrame', s=1)
            tokillto=cmds.listConnections( peach+'.dynamic', s=1)
            cmds.delete(tokill)
            cmds.delete(tokillto)
        except Exception:
            pass

def setsimattr():
    listofsettedattr=[]
    for item in setattrlist:
        try:
            cmds.setAttr(item[0], item[1])
            itemsettuple = (item[0], item[1])
            listofsettedattr.insert(-1, itemsettuple)
        except Exception:
            continue
    return 'setted Values:'+str(listofsettedattr)

def selectallcontrols():
    cmds.select(cl=1)
    for item in charalist:
        try:
            cmds.select(item+':ctrl_root', item+':All_Controls',add=1)
        except ValueError:
            continue
    return cmds.ls(sl=1)

def selectsimnodes():
    cmds.select(cl=1)
    for each in charalist:
        for item in simlist:
            for alot in xrange(0,10):
                try:
                    cmds.select(each+':'+item+str(alot),add=1)
                except ValueError:
                    continue
    return cmds.ls(sl=1)

def selectnucleus():
    cmds.select(cl=1)
    for each in charalist:
        for alot in xrange(0,3):
            try:
                cmds.select(each+':nucleus'+str(alot),add=1)
            except ValueError:
                continue
    return cmds.ls(sl=1)

def delrefedits():
    listofedits=cmds.referenceQuery(es=1)
    listofbadedits=[]
    for item in listofedits:
        if 'skin' in item:
            listofbadedits.insert(-1,item)
    for item in listofbadedits:
            itemlist=str(item).split(' ')
            melcomand='referenceEdit -failedEdits true -successfulEdits true -editCommand '+ str(itemlist[0])+' -removeEdits '+str(itemlist[1])+';'
            mel.eval(melcomand)

def popsimnodes():
    nodes=selectsimnodes()
    nucleus=selectnucleus()
    cmds.select(nodes,nucleus)
    cmds.window(t='Sim Nodes')
    form = cmds.formLayout()
    p = cmds.scriptedPanel(type="nodeEditorPanel", label="Node Editor")
    cmds.formLayout(form, e=True, af=[(p,s,0) for s in ("top","bottom","left","right")])
    cmds.showWindow()
    return 'node editor containing my sim nodes'

def bakeall():
    amintime=cmds.playbackOptions(query=1, minTime=1)
    amaxtime=cmds.playbackOptions(query=1, maxTime=1)
    listtobake=selectallcontrols()
    cmds.bakeSimulation(listtobake,t=(amintime,amaxtime))

def preroll():
    amintime=cmds.playbackOptions(query=1, minTime=1)
    amaxtime=cmds.playbackOptions(query=1, maxTime=1)
    arolltime=amintime-21
    amidtime=amintime-11   
    cmds.playbackOptions(minTime=arolltime)
    cmds.cutKey(t=(arolltime,amintime-1))
    cmds.copyKey(t=(amintime,amintime))
    cmds.pasteKey(t=(amidtime,amidtime))
    cmds.pasteKey(t=(arolltime,arolltime))
    cmds.currentTime( arolltime, update=1, edit=True )


def tposecogrelative():
    listtobake=cmds.ls(sl=1)
    controlersreseted=[]
    controlersrelativetocog=[]
    for item in listtobake:
        if item.find('ctrl_cog') + item.find('ctrl_root') + item.find('ctrl_fly')<0:
            cmds.select(item)
            try:
                parentstate = cmds.getAttr(item+'.parent')
                AnimUtils.ResetSelectedObsjPose()
                parentarray=cmds.addAttr(item+'.parent',q=1,en=1)
                parentlist=parentarray.split(':')
                cmds.setAttr(item+'.parent',parentlist.index('Cog'))
                prevpos = cmds.xform(q=1, t=1, ws=1)
                prevrot = cmds.xform(q=1, ws=1, ro=1)
                addrot=(round(prevrot[0]/360),round(prevrot[1]/360),round(prevrot[2]/360))
                cmds.setAttr(item+'.parent',parentstate)
                cmds.move(prevpos[0],prevpos[1],prevpos[2],ws=1,xyz=1)
                cmds.rotate(prevrot[0]+addrot[0]*360,prevrot[1]+addrot[1]*360,prevrot[2]+addrot[2]*360,ws=1,xyz=1,a=1)
                cmds.setKeyframe()
                controlersrelativetocog.insert(-1,item)
            except (ValueError,RuntimeError):
                oldrotate=(round(cmds.getAttr(item+'.rx')/360),round(cmds.getAttr(item+'.ry')/360),round(cmds.getAttr(item+'.rz')/360))
                AnimUtils.ResetSelectedObsjPose()
                cmds.rotate(oldrotate[0]*360,oldrotate[1]*360,oldrotate[2]*360)
                cmds.setKeyframe()
                controlersreseted.insert(-1,item)
        else:
            continue
    return (str(len(controlersreseted))+'controlers reseted:'+str(controlersreseted)+' and '+ str(len(controlersrelativetocog))+' controlers relative to cog: '+str(controlersrelativetocog))
           

def cacheclean():
    tocache=selectsimnodes()
    mel.eval("""catch(`deleteCacheFile 3 { "delete", "", "nCloth" }`);""")

    
def cachethis():
    tocache=selectsimnodes()
    mel.eval("""doCreateNclothCache 5 { "2", "1", "10", "OneFilePerFrame", "1", "","1","","0", "add", "0", "1", "1","0","1","mcx" } ;""")


def changeRig():
    # if you want to switch the rigs, then "switch_rig" should be at 1.
    # if you want to just update the rigs, then "switch_rig" should be at 0
    switch_rig = 0
    import os
    proxy_words_list = ["lowPrx", "lowprx", "prx", "proxy", "lowDefinition", "lowDef", "lowdef", "lowdefinition"]
    rig_words_list = ["rig", "Rig"]
    unwanted_words_list = ["mod", "local", "cloth", "lgt", "petit"]
    reference_file_list = []
    reference_node_list = []
    reference_dict = {}

    for oSel in cmds.ls(sl=1):

        try:
            reference_file = cmds.referenceQuery(oSel, f=True)
            if "{" in reference_file:
                reference_file = reference_file.split("{")[0]
            reference_node = cmds.referenceQuery(oSel, rfn=True)
            if reference_node not in reference_dict:
                reference_directory = os.path.dirname(reference_file)
                reference_dict[reference_node] = [reference_file, reference_directory]
                # Dictionnary is: [Node]: file, directory
        except RuntimeError:
            pass

    for reference_node in reference_dict:
        list_to_remove = []
        list_to_add = []
        proxy = 0
        rig = 0

        directory_content_list = os.listdir(
            reference_dict[reference_node][1])  # way to list all the files in a directory

        reference_file_name = str(reference_dict[reference_node][0]).split("/")[-1]
        # print reference_file_name


        for word in proxy_words_list:
            # print "Searching to see if {} in {}".format(word, reference_file_name)
            if word in reference_file_name:
                proxy = 1
                rig = 0
                # print "Rig is a proxy, switching to HiRez"
                break
            else:
                proxy = 0
                rig = 1
                # print "Rig is HiRez, switching to Proxy"

        for file_name in directory_content_list:

            for word in unwanted_words_list:
                if word in file_name:
                    if file_name not in list_to_remove:
                        list_to_remove.append(file_name)

            if switch_rig == 1:
                if rig:
                    for word in proxy_words_list:
                        if word not in file_name:
                            if file_name not in list_to_remove:
                                list_to_remove.append(file_name)
                        if word in file_name:
                            if file_name not in list_to_add:
                                list_to_add.append(file_name)

                if proxy:
                    for word in proxy_words_list:
                        if word in file_name:
                            if file_name not in list_to_remove:
                                list_to_remove.append(file_name)
            if switch_rig == 0:
                if rig:
                    for word in proxy_words_list:
                        if word in file_name:
                            if file_name not in list_to_remove:
                                list_to_remove.append(file_name)
                if proxy:
                    for word in proxy_words_list:
                        if word in file_name:
                            if file_name not in list_to_add:
                                list_to_add.append(file_name)
                        if word not in file_name:
                            if file_name not in list_to_remove:
                                list_to_remove.append(file_name)

        # print list_to_remove

        for item in list_to_remove:
            try:
                directory_content_list.remove(item)
            except ValueError:
                pass

        for item in list_to_add:
            try:
                directory_content_list.append(item)
            except ValueError:
                pass

        if not directory_content_list:
            cmds.warning("No rigs correspond to research")
            continue

        numberlist = []

        for file_name in directory_content_list:
            numberlist.append(filter(str.isdigit, str(file_name)))

        int_numberlist = []
        for number in numberlist:
            if number:
                int_numberlist.append(int(number))

        if int_numberlist:
            highest_number = max(int_numberlist)
        else:
            continue

        for string in numberlist:
            if str(highest_number) in string:
                highest_number_string = string

        for file_name in directory_content_list:
            if highest_number_string in file_name:
                file_to_pick = file_name

        file_path = reference_dict[reference_node][1] + "/" + file_to_pick
        # print file_path

        if reference_file_name == file_to_pick:
            # That means the rig is already up to date
            pass
        else:
            cmds.file(ur=reference_node)
            #delrefedits()
            cmds.file(file_path, loadReference=reference_node)


def playblastit():
    cmds.playblast (fmt='qt', f="playblast.mov", fo=1,  sqt=0, cc=1, v=1, orn=1 , os=1, fp=4, p=100 ,c="jpeg" , qlt=100, widthHeight=[740, 480])



bakeall()
preroll()
selectallcontrols()
changeRig()
selectallcontrols()
tposecogrelative()
selectallcontrols()
tposecogrelative()
disconnectsimkeys()
setsimattr()
popsimnodes()
mel.eval('source simonnellypresets.mel')
#cacheclean()
#cachethis()
#playblastit()


