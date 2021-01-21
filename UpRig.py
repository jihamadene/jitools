import maya.cmds as cmds
import pymel.core as pm
from ffxTools.core.maya.core.animation import AnimUtils
import maya.mel as mel
import os as os
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
changeRig()