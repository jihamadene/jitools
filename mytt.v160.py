

#===========================================================================================#
#  MultiTaskTool_v221                                                                       #
#  Written                                                                                  #
#    By Christopher Noël                                                                    # 
#    with help by Philipe Voyer, Renaud Lessard Larouche and Nohra Seif                     #
#    Salvaged code from RivetEX script by Jung Sup Han, with help from Pierre Lalancette    #
#  Visit my website to see my other work: christonoel.wix.com/anim                          #
#  For help with Tool, use Help menu to visit website                                       #
#===========================================================================================#

"""

Version Notes

V111:
	Added an exception for a ValueError in the DELETE ALL function.

v110:
	Added StickyCam functionnality. This allows the tracking of any number of wished objects by creating
	a new camera in the viewport. Can easily be deleted to resume normal work.
	Wished update: being able to select a vertex as an "object" to track.

v120:
	-Added the creation of lights when using the beauty playblast mode, if there was no light existing in the scene. 
	-Now showing "Dimensions" when displaying the Animation Display mode, in order to be able to see the visual link between articulations and their pole vectors.
	-Added an exception for NameError in the DELETE ALL

v121:
	-Changed lights intensity when creating some in the Beauty Playblast mode
	-Added the Mass Attribute Edit section, with it's basic deactivate camera film gate button.

v122
	-Added the Mass Attribute Edit fields to allow the easy changing of Attributes on many objects or nodes at once. 
	-Various Visual upgrades

v123
	-Added some other variant on how one could name the "foot" controller in his rig.
	-Fixed the create for articulation option which did not call listMTTMT as global.

v125
	-Added the Created motion trail list. 
		-Double clicking on the Motion Trail will update it and focus the camera on it
		-Selecting and hitting the "delete" key will now delete the corresponding motion trail.
	-Added the showing of locators in the animation display mode

v126
	-Added the EasyPZ viewing option
		-Would like to have that section inside of the viewing option section, so that EasyPZ would be a subsection of viewing option
		-Enables easy 2D Pan/Zoom ("P/Z")

v129
	-Corrected EasyPZ, Pan up/down and left/right labels were inverted with one another
	-Disabled the showing of textures in the beauty playblast options, as it was causing problem with scenes cainting a lot of textures. This feature and the motion blur feature will have to be turned on by the user if he wants them. 

v130
	-Added the possibility of creating motions trails on many other components than only an object or a vertex with correct UVs
		-Motions trails can now be created for Vertices, Faces, Edges and Curve Points as well as objects and CV controllers. This was done salvaging part of script by Jung Sup Han in his RivetEX script, available at:http://www.creativecrash.com/maya/script/rivet-ex 

v132
	-Corrected a little bug in the Mass Attribute Edit section. 
	-Added a section in Animation Options to easily move around highlighted keyframes in the timeline   

v134
	-If attribute changed with Mass Attribute Edit is "Display film gate", it will aslo change the Display Gate Mask and Overscan attribute. 

v135        
	-Removed previous v134 change and instead added 2 buttons in the "viewing option" section : 
	"Display Film Gates" and "Black and Opaque" buttons allow to respectively toggle the display of the film gates and toggle their opacity and color from the default maya setting to a black and completely opaque one

v136
	-Added "Camera Sequencer Options" section:
		-The "Order Cam Sequencer" button will forcibly make all "start frame" and "sequence start frame" the same for all the shots, as well as put them all on the same row.
		-The "Frame Selected Shot" button will change the current timeline values to frame only the currently selected shot. 

v137
	-Made changes to the Sticky Camera: the group is now centered in the middle of the selected objects upon creation and should follow them better.

v138
	-Now displaying greasePencil in "animation display" and "animation playblast" viewing modes
		-Will use default material if there is no greasePencil node in the scene (which are all delete when deleting the all the greasePencil frames)
		-Will not use defautl material if there is a greasePencil node in the scene, because the greasePencil is drawn on a plane, which is default shaded and obstructs the camera's view completely.

v139   
	-Fixed the "Move Keyframes" section: it would the frame after the one highlighted in the timerange selection. Now it only moves what is within the selection.

v140
	-Added the "Place shotCam on view" button in the "Camera Sequencer option"
		-It will move the current shotcam on the currently used camera in the currently used viewport. In short, it should move your shotcam to your persp. camera
		-WARNING: For productions not wanting to move the camera itself, the script will attempt to move the camera and warned you if it could. If it fails (if the camera
		attributes are locked) it will instead try to move the object containing the camera (most of the time, this would be a controller). So if you do not wish to move 
		the camera itself, lock its attributes before hand. 

v141
	-Changed the warning message for ordering the whole sequencer. It read "Framed all the shots instead" and will now read "Ordered all the shots instead"
	-Added in the selection option section the Quick Select:
		-Select the elements that you want to retain as selection and hit the "Create Quick Selection" button. You will be prompted to name your selection
		-Double click on the element in the list to reselect the saved selection. 
		-You may also click on the element in the list and hit the "delete" key on your keyboard to erase it from the list.
		-Trying to create a selection with the same name as a previous one will cause an Error. 

v142
	-MTT will now ask you the name you want to give to your motion trail when creating them
		-If hitting "cancel" in the prompt window, nothing will be done
		-If hitting the "Enter" key or the "OK" button without inputing text, the motion trail will be given a default nameAttr
		-If inputing a name, the motion trail will be named accordingly in the textlist inside MTT and the actual name of the motion trail 

v144
	-The mass attribute edit can now change attributes with floats, boolean and integer, thansk to the use of pymel.setAttr instead of cmds.setAttr
	-The viewing option "Display Film Gate" and "Black and Opaque" Button will now obey the "Not for default cameras" checkbox.
 
v146
	-Using the "Move Keyframes" in animation option will now try to see if a shot is selected. If one is, it will move around every animation curve inside of the shot around.   

v147
	-Added the "Destroy shot" button in the camera sequencer option section. It will Delete the currently selected shot(s) as well as all keyframes contained within and the corresponding camera

v149
	-Hide and show buttons in "general actions" are now combined in a switch
	-Opening again, or for the first time in a maya session, MTT will now detect previously created motion trails and add them to the corresponding list
	-The "Delete All" button now won't delete the "MTT_Light" group. In order to delete all MTT Nodes, please use the "Close and Delete ALL MTT Nodes" at the bottom of the UI
		-The "Close and Delete All MTT Nodes" was recolored to better match it's importance.
	-Fixed a bug were the "Update all" button would not function properly. 

v150
	-Fixed the "Hide/Show Switch" variable declaration; it caused an Error.

v151
	-Now conserving selection in the process of deleting the StickyCam
		-Also created a Warning: If the user has no object selected and tries to create a StickyCam, he will be warned. 
	-When destroying sticky camera, MTT will now position "persp" cam to the latest position of the stickyCam
		-It will not do so it "persp" cam has any keyframes.
			-Be warned it will try to move it if it has constraints or things like that. In general, persp cam should be free of any animaiton, constraints etc.

v152   
	-Now correctly keeping selection after moving keyframes around.
	-Added a "Select All Animation Curves" in the "Animation Option" section. 
v153
	-Added an Error event when trying to move keyframes or shot around, if keyframes are selected in the Graph Editor: 
		- "Please unselect any keyframes in the graph editor before proceeding"
v157
	-Added the "Ghost Current Pose" button in the "Animation Option" section:
		- Pressing the button will create a new group containing the geometry of the selected rig and make it a "template".
		  This enables users to quickly maintain a pose visualy in their viewport in 3D space. Contrary to the normal "Ghosting" in maya, this option does not vary with the timeline and will hold
		  So it's use is not for seeing animation spacing or timing, but to be able to move into or out of a pose as precisely as possible. 
v158
	-Opening MTT will no longer unselect what was previously selected in the scene. 

v159
	-Clicking again on the "Frame selected shot" button will now change the animation playback range. Clicking once only changes the timeline range. For that feature to work, the user needs to have selected the same shot he used for the first click to do the second one. 

v160
	-Added subtelty to the "Frame selected shot" button's behavior
		-When framing all shots, the animation frame range will change as well as the timeline'selection
		-When attempting to frame a shot, if it's frame range already correspond's to the timeline's, it will automaticaly change the animation playback range as well, without the need to double click. 
v161
	-Added the "key All keyed Frames" button
		-This button allows to put a key on all attributes for any key on objects present in the selection.
			-The "only for Timeline" checkbox will only do this for the currently delimited timeline
			-The "only transform attributes" will put a key on only transform attributes for any keys on transform attributes on objects in the selection. 

v162
	-Added "Bake From A To B" button
		-First select an object (A) and then another one, and then press the button. The animation on A will be baked onto B with the corresponding options.

v163   
	-Added the "Annotate" button
		-Script will create a Maya annotation for all objects in the selection, corresponding to their name 

v164
	-Corrected bug with the "Reset transform on A " checkbox

v165
	-Added the "change rotation order" button as well as the "Choose" dropdown list to go with it:
		-For every item in the selection, the script will change the rotate order and try to keep the animation of the item.
		-Useful to: change rotation order on simple camera rigs that might easily gimble lock.
	-Collapsed the "Animation Option" subsection, as it was getting quite lenghty and took a lot of screen space upon opening MTT

v166
	-Added the "High Fidelity" checkbox to the "Bake from A to B" button.
		-Using the "High Fidelity" option will use the "simulation" and "smart bake" at '1%' max difference. It will be more precise, but much slower.
		-Not using the "High Fidelity" option will simply use the "smart bake", producing much faster result, but it will fail to bake more complex setups. 

v169
	-Renamed the "Mass Attribute Edit" section to "Mass Edit".
	-Added the "Rename Edit" function to the "Mass Edit" subsection.
		-User can rename anything selected in the "What to Edit" dropdown menu
		-User can rename objects within what is selected in the "What to Edit" section that also have the name specified in the "With this name" textbox.
		-User can choose a number padding. The number section can be placed anywhere in the new name, but needs to stay between '#'.

v171
	-User can correctly use "Rename Edit" for selected objects.
		-Camera filter still is unfunctionnal, but other filters should work properly.
	-the "With this name" option now properly works with "Change Attribute" as well as "Rename"
		-Using this option will filter through what is chosen in "What to Edit" for only that which has both the name and the type chosen in the dropdown menu.

v172
	-Creating a motion trail for a vertex will now properly place the motion trail on the vertex instead of in the middle of his corresponding edge. 

v173
	-Creating a motion trail for a face will now properly place the motion trail in the middle of the face, even if it deforms.

v174
	-Slightly changed the "frame selected shot" button double click behavior:
		-When reducing the frame range after hitting the button once on a shot, re-using the button would change the bigger range, but not grow the now smaller inner range. This
		has been corrected by always changing the inner-frame range, wether if it's a double click or not. 

v175
	-Added an error when trying to move keyframes or shots with the "move key":
		-Locked animation layers prevented script to execute properly, added an error to notify user to unlock animation layers before proceeding. 

v176
	-Changed the behavior of the "Display Film Gates" button: 
		-It will activate or deactivate the film gate depending on how many cameras have the attribute on or not.
		-If there are more cameras that have it active, it will activate the rest of the cameras, vice versa.
		-It will still switch on/off the attribute on all cameras after making the pattern consistent. 

v179
	-Polished the functionnality of the viewing mode buttons in the "Viewing Option" section:
		-It will now properly use the last used panel as a target for the changes in viewport if the current focused panel is not a modelPanel (i.e.: if the focused panel is the outliner or the graph editor etc.)
		-It will still change the viewing mode of the focused panel if it is a modelPanel
		-If the "For Current View Only" is not in use, now instead of trying to iterate the first 20 modelPanel to modify them, it will instead go through the visible model panel to make the changes on the viewing mode apply to them only. 
	-Dev: Started to implement a function to manage the different viewing mode parts of the script instead of repeating the code in each function.

v181
	-Implemented a function to manage the different viewing mode.
		-Further Implemented another function to change the viewport itself, to reduce redundancy in the code. Added benefit of being able to control what the viewing modes do in the same one line.

v183
	-Added a "Also rename shot" checkbox under "Order Cam Sequencer" in the "Camera Sequencer Option" section.
		-Using "Order Cam Sequencer" button with the checkbox on will also rename the shot using the camera's namespace. 
	-Added an refresh of the Namespace editor when editing Namespaces with the Rename function of the Mass Edit. 

v185
	-MTT window is can now be minimized and has a tab on the taskbar.
	-Added the "Replace Edit" subsection under the Mass Edit. 
		-Can now easily replace parts of namespaces and selected objects
	-Added an exception in the change rotate order:
		if the object had no keyframes on it, just switch the rotate order: do not do the whole operation to transfer animation also.

v187
	-corrected unexpected behavior of change rotate order on objects that had no keys.
v188
	-When trying to rename shots with the "Selected" flag, under the Mass Edit section:
		-Will now properly rename the shots AND change the shot's attribute "shot name" to the same name, so that it displays nicely in the camera sequencer. 
	-Added a "Shot" tag in the Mass Edit section.

v189
	-Simplified the code for the change Attribute and Rename section. 
	-Added an exception for unicode and string input in the "Value Input" textfield of the "Mass Edit" section.
		-User may now enter string/unicode values for attributes such as "Shot Name", or any other attribute that takes text values instead of numbers. 

v190
	-Started adding the proper buttons to enable a finer tuning of the EasyPZ' attriubtes.
		-Need to implement functionality in the buttons.

v191
	-Changed the stating of an "if" condition in the mass edit section, for the function that changes attributes. 

v192
	-Now the zoom/pan fine-tune buttons in the EasyPZ section are functionnal.

v193
	-Added subsection "File Options"
		-Added "Export All Selected" button: enables user to export all selected objects into individual files.
		-Added UI to suggest other specificity of that function. 
		
v194
	-Can now export different file types and use Namespace if desired [under File Options section]

v195
	-Added the "Set [Key]Frame hotkeys" button to the general section.
		-It will add a hotkey to the right/left and ctrl+right/ctrl+left keyboard keys to , respectively, move one frame to the right, to the left and move one keyframe to the right and to the left. 
		-Pressing the button again will reset the right/left button assigned hotkeys.  	

v196
	-Added a confirm dialog to restore hotkeys to default if "Set [Key]Frame hotkeys" button is pressed again.

v197
	-Added the "Lock/Unlock Cameras" button under "Viewing option" submenu.
		-The button toggles the locking/unlocking of the transforms (translate/rotate/scale) of the camera.
v198
	-Added the "SnapHeal" button under "Animation Option" section. 
		-This function will seek keyframes that are not on full frames value and will try to correct their placement while conserving animation. 
		-Function will properly inform user of the changes to be made and changes done as well as warn him if his animation was broken during the process.

v199
	-Updated stickyCam function so that it now deletes previously created stickyCam_grp
	-Added "classify" button under "General Action" section:
		-Simply select rig groups and hit the button to classify your outliner.
v200
	-Added "SecondaryCharacter_grp" type to classify function.
	-Added "Create Face View" in the "Viewing option" section
		-The function will create a new panel with only the head and relevant controllers 
			-Some error handling needs to be done in that function.
			-Also need to add more variants for what could be in the face.

v201
	-Added a dropdown menu to chose what frames to snapHeal
	-Added some keywords for the "Create Face View" function
		-Also changed camera nearclip plane to make it closer, enabling bigger zooms
v202
	-Fixed the "Key all keyed frames" function
		-It now inserts keyframe instead of keying haywire. 

v203
	-Added proper support of different variety of rigs to the "Create Face View" functions
		-It will now filter through the selected item's namespace for any controller or mesh that has proper naming 
		-The function will also ask what to do of previously created face views and will manage the windows.

v207
	-Added "Cameras_grp" type for classify function.

v208
	-Added "Create RefCam" button in the "viewing option" section
		-Said button will create a window and camera to show an image plane, for reference purposes. 

v210
	-Added "Swap shot" button under camera sequencer option:
		-simply select two shots you want to swap and hit the button.
		-the function will both swap the shots in the sequencer as well as all keyframes in the shots
		-If you also want to rename the shots, check the box written as "also swap NameSpace"

v211
	-Swapped the treatment of adjacent shots as different from other combinations, for the "Swap shot" button
		-Even thought adjacent shots offer the possibility for a simpler operation, the way of dealing with the keyframes is more stable if we treat them as separate anyways. 

v212
	-Fixed "Heal keys" so that if an object without keyframes is selected, it won't cause a problem in the script.

v213
	-Added a "Create Shot" subsection under "Camera Sequencer Option" section.
		-Function allows user to create a shot already linked to a camera with the chosen rig and namespace.
			-Only one rig is available at the time: a simple locator with its rotate order changed.
		-WARNING: If working within a production pipeline, make sure MTT creates cameras with the proper settings for you!

v214
	-Changed shot image resolution width/height to fullHD (1920*1080)
		-Added variables to enable different settings. Have yet to implement different settings for shot/cam to correspond to different film standards. 
v215
	-The "set hotkeys" button has been changed:
		-It will now display a window to choose what hotkeys to set.
		-The "reset channel box" shortcut doesn't work as of now. 

v216
	-Changed slightly the "Create Face View" behavior:
		-Will now frame all isolated elements to fit the window.
		-Will work with a wider variety of rigs

v217
	-Added a section to convert sequence into shot with different options
	-Added a checkbox to the "Destroy shot" button:
		-user can now choose weither to delete cameras or not.
	-Added a prompt when trying to delete referenced cameras so the user can choose weither to keep them or destroy them. 

v218
	-Destroy shot fix:
		-Destroy shot will no longer delete animation on a shot that is between two selected shots.

v219
	-Fixed a bug when deleting a motion trail would prevent updating other motions trails.

v211
	-Added "Set reset CB hotkey" properly connected to ctrl+shift+R
		-(Use of the POWER TRIPLE QUOTE for smashing maya's face)

Notes for further additions:


	STRUCTURE/SCRIPT ITSELF:

	-Need to rework the complete frame of this script: many functions are redundant to one another and could simply reuse each other's frame. The UI shouldn't be hardcoded, also. 
		-Mostly the "create for articulation" part could be reworked.

	KEYFRAMES/ANIMATION:
	-Have a way to invert the selected curve or keys. (Querry the four corners of the rectangle to resize, take the center point as pivot and scale)

	-Have a way to resample all non-snapped keyframes. (i.e.: scale an anim and then resample instead of snap)

	-Have a way to select all of the keyframes contained within the timeline (or the camerashot) in the graph editor (also: make it depend on the highlighted channel in the channel box)

	-Have a way to copy (or see) the next (and/or previous) frame(s) geometry in a reference (ghost) layer, as to have onion layers.
		-Update: maya has the ghosting option in the animation menus. But displaying it on shaded view does not change the color of the ghosts. Could there be a way to change them? (animate shader associated to geometries...?) 


	MOTION TRAIL:

	-When creating a motion trail for an object that already has keyframes and is a controller, just create a "normal" motion trail -> this will enable frame modifications.
		-Need to completely bypass the locator setup. 


	CORRECTIONS/BUGS:  
	-Need to be able to clic the outliner, for instance,  (after using the viewport in a camera) and then use the various display modes without having MTT try to modify the outliner
	
	-Namespace error with some rigs, creating the motion trail on the ankle instead of the knee. 

	-The "Annotate" portion; could there be a way to name a position common to many objects with only one annotation containing the names of all the objects within that position ?

	NEW ADDITIONS:
	-Have a custom Hi/Low switch as well as a rig updater:
		-It would go look inside the folders, try to find the latest rig (same namespace, highest number)
		-And would switch Hi/Low using a bank of words
	-Have a custom ubercam creator: for each shot, querry which camera is associated and the span of the shot, then parent the camera successively and bake it.
		-It would prevent not being able to use the ubercam creation for scaled cameras as well as camera rigs..!
	-When renaming stuff (specificaly namespaces), first rename them to something neutral (ex: "MTT_NamespaceNeutral_0010") and add these to a list to rename, before renaming them to their final name, to avoid rename conflicts.
	-Have a way to position an object on another via absolute values (creating a locator, parent constraint, transfer that, parent constraint and delete everything)
	-Have a section to create various polygonal effects (wave, explosion, materialisation, magical effects and so on) for previz
	-Have a section (or maybe a different script) to setup scenes: 
		-Change all the attributes to what is preferred (show all fly, hide faces, etc.)
		-import as many cameras as there are shots in a specified file (that would have all shot listed, as well as their lenght)
			-Make those shots the proper lenght.
		-Group cameras, lock their attributes, change their rotate order.
		-Make sure all namespaces are "_rig" and not "_prx"

  
   
"""

import maya.mel
import maya.cmds as cmds
import pymel.core as pymel
import random
from collections import OrderedDict


global QSdict
QSdict={}
stopJ=None
nCounter=0
shotList=[]

OverAllSelection=cmds.ls(sl=1)


#this is the list of all the words that can mean "foot" for the rig:
listDF=['pied','Pied','foot','Foot','knee','Knee','leg','Leg','ankle','Ankle','cheville','Cheville','Jambe','jambe', 'hip', 'Hip', 'hanche', 'Hanche', 'thigh', 'Thigh', 'shin', 'Shin']
#this is the list of all the words that can mean "knee" for the rig:
listAF=['genou','Genou','Knee','knee','lowleg','lowLeg']

#this is the list of all the words that can mean "hand" for the rig:
listDH=['main','Main','hand','Hand','wrist','Wrist','arm','Arm','Bras','bras', 'shoulder', 'Shoulder', 'epaule', 'Epaule', 'Épaule', 'épaule']
#this is the list of all the words that can mean "elbow" for the rig:
listAH=['coude','Coude','elbow','Elbow','lowArm','lowarm']

#this is the list of all the words that can mean "Right" for the rig:
listR=['_R_','_r_','_Rt_','_rt_','_Right_','_right_','_D_','_d_','_Droit_','_droit_','_Droite_','_droite_']
#this is the list of all the words that can mean "Left" for the rig:
listL=['_L_','_l_','_Lt_','_lt_','_Left_','_left_','_G_','_g_','_Gauche_','_gauche_','Lft','lft']

listJ=cmds.ls(type='joint')


class MotionTrailTool(object):
	
	@classmethod
	def showUI(cls):

		win = cls()
		win.create()
		return win

	def __init__(self):
		
		self.window = 'MotionTrailTool'
		self.title = 'MTT v221'
		self.size = (520, 360)
		self.actionName = 'Apply && Close'
		self.isDockable = False
		self.dictionaryData = {}

	def create(self):		

		if cmds.window(self.window, exists=True):
			cmds.deleteUI(self.window, window=True)
		
		self.window = cmds.window(
			self.window,
			title=self.title,
			iconName=self.title, 
			widthHeight=self.size,
			menuBar=True,
			menuBarVisible=True, 
			maximizeButton=False,
			minimizeButton=True, 
			#resizeToFitChildren=True,
			sizeable=True
		)

		self.layoutFormRoot = cmds.formLayout("FormLayout", numberOfDivisions=225)   
		self.createMenu()
		self.createButton()
		self.createControl()
		cmds.showWindow()

	#======================Définition des contraintes de disposition et de quelles fonctions les boutons appelents (Début)==================    

	def createMenu(self):
	  
		# menu 'File' (debut)
		self.menuEdit = cmds.menu(label='File') 
				
		self.menuEditQuit = cmds.menuItem(
			label='Quit',
			command=self.callbackMenuQuit) 
		# menu 'File' (fin)
		
		# menu 'Help' (debut)
		self.menuHelp = cmds.menu(label='Help') 

		self.menuHelpItem = cmds.menuItem(
			label='Help on %s' %self.title,
			command=self.callbackMenuHelp)
		# menu 'Help' (fin)


	def createButton(self):
		
		# définir la taille des boutons (largeur, hauteur) avec écarts
		self.commonBtnSize = ((self.size[0]-(18))/3, 26)

		# création des boutons

		self.buttonClose = cmds.button(
			backgroundColor=[0.65,0.65,0.65],
			label='Close and Delete All MTT Nodes',
			height=self.commonBtnSize[1],
			command=self.callbackButtonClose)

		# définition des contraintes de disposition des boutons
		cmds.formLayout(
			self.layoutFormRoot, edit=True,
			attachForm=(                
				[self.buttonClose , 'bottom', 5],
				[self.buttonClose , 'right' , 10]),
			attachPosition=(
				[self.buttonClose , 'left' , 0, 7.5]),
			attachNone=(
				[self.buttonClose, 'top'])
		)

		# mode de disposition en onglet
		self.layoutTab = cmds.tabLayout("TabLayoutCreateButton", scrollable=True, tabsVisible=False, height=2, childResizable=True)

		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormRoot, edit=True,
			attachForm=(
				[self.layoutTab,'top'  , 0],
				[self.layoutTab,'left' , 2],
				[self.layoutTab,'right', 2]),
			attachControl=(
				[self.layoutTab,'bottom', 5, self.buttonClose])
		)

	def createControl(self):
		"""Fonction de création des contrôles interactifs de l'outil"""
		
		# mode de disposition en formulaire
		self.layoutFormContent = cmds.formLayout("FormLayoutCreateControl", numberOfDivisions=100)

		# panneau rétractable 'General Actions' (début)------------------------------

		# mode de disposition en panneau rétractable
		self.layoutFrameList = cmds.frameLayout("GeneralAction", label='General Actions', collapsable=True, mw=15)

		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.layoutFrameList,'left' , 0],
				[self.layoutFrameList,'right', 0],
				[self.layoutFrameList,'top'  , 0])
		)

		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=3)       

	  
		# définir la taille des boutons (largeur, hauteur)
		self.buttonWidth  = 150
		self.buttonHeight = 30

		# création des boutons
		cmds.button(
			label='Delete All "MTT" Grp',
			width=self.buttonWidth,
			height=self.buttonHeight,
			command=self.cbDeleteAll)
					 
		cmds.button(
			label='Hide/Show Switch',
			width=self.buttonWidth,
			height=self.buttonHeight,
			command=self.cbHide)       

		cmds.button(
			label='Set hotkeys',
			width=150,
			backgroundColor=[0.55,0.55,0.55],
			height=self.buttonHeight,
			command=self.cbSetHotKeys) 

		cmds.button(
			label='Classify',
			width=self.buttonWidth,
			height=self.buttonHeight,
			command=self.cbClassify) 


		# panneau rétractable 'General Actions' (fin)------------------------------
		
		
		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form
		
		#panneau rétractable 'Commands' (début)-------------------------------------------
		
		
		# mode de disposition en panneau rétractable
		self.layoutFrameCommand = cmds.frameLayout("Commands", label='Commands', collapsable=True, mw=82.5, mh=5)
		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.layoutFrameCommand,'left' , 0],
				[self.layoutFrameCommand,'right', 0],
				[self.layoutFrameCommand,'top'  , 0]),
			attachControl=(
				[self.layoutFrameCommand,'top', 0, self.layoutFrameList])
		)

		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=2) 

		global ucns        

		ucns = cmds.checkBox(l='Use Character Name Space',value=False,changeCommand=self.cbUseChNamespaceToggled)

		self.CharNameSpaceTF = cmds.textField(width=110,enable=0)   
		

		global shFMCB        
		shFMCB = cmds.checkBox(l='Show Frame Markers',value=True)
		
		cmds.button(
			label='Create',
			width=self.buttonWidth,
			height=self.buttonHeight,
			command=self.cbCreate)

		cmds.separator( style='none' )   

		cmds.button(
			label='Create for Articulation',
			width=150,
			height=self.buttonHeight,
			command=self.cbCreateForArticulation)
					
		cmds.separator( style='none' )  

		cmds.button(
			label='Update All',
			width=150,
			height=40,
			command=self.cbUpdateAll)
			
		#cmds.separator( style='none' )
		cmds.text( label='Created Motion Trails' ) 
		self.Textlist= cmds.textScrollList("MTTtextlist", w=150, h=100, allowMultiSelection=False, doubleClickCommand=self.textlist_doubleClick, deleteKeyCommand=self.textlist_delete)
		
		#panneau rétractable 'Commands' (fin)---------------------------------------------
		
		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form
				
		#panneau rétractable 'Viewing Option' (début)-------------------------------------------
				
		# mode de disposition en panneau rétractable
		self.layoutViewOption = cmds.frameLayout("layoutViewOption",label='Viewing Option', collapsable=True, mw=15, mh=5)
		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.layoutViewOption,'left' , 0],
				[self.layoutViewOption,'right', 0],
				[self.layoutViewOption,'top'  , 0]),
			attachControl=(
				[self.layoutViewOption,'top', 0, self.layoutFrameCommand])
		)
		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout("RCLayoutViewoption", numberOfColumns=3)  
		
		cmds.button(
			label='Animation Playblast mode',
			width=150,
			height=self.buttonHeight,
			command=self.cbAnimationPbMode)
		
		cmds.button(
			label='Beauty Playblast mode',
			width=150,
			height=self.buttonHeight,
			command=self.cbBeautyPbMode)
			
		cmds.button(
			label='Animation Display mode',
			width=150,
			height=self.buttonHeight,
			command=self.cbAnimationDpMode)

		cmds.separator( height=40, style='out' )

		global fcvo        
		fcvo = cmds.checkBox(l='For Current View Only',value=True)

		cmds.separator( height=40, style='out' )


		cmds.button(
			label='Create Sticky Camera',
			width=150,
			height=self.buttonHeight,
			command=self.cbCreateSticky)


		cmds.button(
			label='Destroy Sticky Camera',
			width=150,
			height=self.buttonHeight,
			command=self.cbDestroySticky)

		cmds.button(
			label='Create Face View',
			width=150,
			height=self.buttonHeight,
			command=self.cbFaceView)

		
		
		
		#creating constraint checkboxes
		
		global txcb        
		txcb = cmds.checkBox(l='Translate X',value=True)
		
		global tycb        
		tycb = cmds.checkBox(l='Translate Y',value=True)
		
		global tzcb        
		tzcb = cmds.checkBox(l='Translate Z',value=True)
		
		global rxcb        
		rxcb = cmds.checkBox(l='Rotate X ',value=False)
		
		global rycb        
		rycb = cmds.checkBox(l='Rotate Y',value=False)
		
		global rzcb        
		rzcb = cmds.checkBox(l='Rotate Z',value=False)


		cmds.separator( height=40, style='out' )

		cmds.separator( height=40, style='out' )

		cmds.separator( height=40, style='out' )

		#defining a variable to be used by "Display Film Gates" button
		global wasOn
		wasOn=0

		#defining a variable to be used by "Hide/Show switch" button
		global switchHide
		switchHide=0

		global wasOn2
		wasOn2=0

		global displayFilmGatesButton
		displayFilmGatesButton=cmds.button(
			label='Display Film Gates',
			width=150,
			height=self.buttonHeight,
			command=self.cbDisplayFilmGates)

		cmds.button(
			label='Black and Opaque',
			width=150,
			height=self.buttonHeight,
			command=self.cbBlackAndOpaque)

		global nfdc   
		nfdc = cmds.checkBox(l='Not for default Cams',value=True)

		global lockCamButton
		lockCamButton=cmds.button(
			label='Lock/Unlock Cameras',
			width=150,
			height=10,
			command=self.cbLockCamera)


		cmds.button(
			label='Create RefCam',
			width=150,
			height=10,
			command=self.cbCreateRefCam)


		cmds.separator( height=40, style='none' )
		cmds.separator( height=40, style='out' )

		cmds.separator( height=40, style='out' )

		cmds.separator( height=40, style='out' )

		cmds.button(
			label='Annotate Selection',
			width=150,
			height=self.buttonHeight,
			command=self.cbAnnotate)        

		#panneau rétractable 'Viewing Option' (fin)---------------------------------------------
		
		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form
		
		
		#panneau rétractable 'Easy PZ' (début)-------------------------------------------
		
		
		# mode de disposition en panneau rétractable
		self.layoutEasyPZ = cmds.frameLayout('LayoutEasyPZ', label='Easy PZ', collapsable=True, mw=15, cl=1)
		
		# définition des contraintes de disposition
		print self.layoutEasyPZ
		
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.layoutEasyPZ,'left' , 0],
				[self.layoutEasyPZ,'right', 0],
				[self.layoutEasyPZ,'top'  , 0]),
			attachControl=(
				[self.layoutEasyPZ,'top', 0, self.layoutViewOption])
		)
		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout("RCLayoutEZPZ", numberOfColumns=5)
		
		global usePZ        

		usePZ = cmds.checkBox(l='Use Easy Pan/Zoom (2D)',value=False,changeCommand=self.cbUseEZPZtoggled)

		cmds.separator( style='none' )
		cmds.separator( style='none' )
		cmds.separator( style='none' )
		cmds.separator( style='none' )

		global pUDfs
		pUDfs = cmds.floatSliderGrp( 'PanUpDown' , label='Pan Up/Down', field=True, minValue=-2, maxValue=2, fieldMinValue=-100, fieldMaxValue=100, value=0, pre=3, enable=0 )
		
		buttonHeight=27
		buttonWidth=25

		global strongUpButton
		strongUpButton=cmds.button(
			label='˄˄',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbStrongUpButton,
			enable=0)

		global upButton
		upButton=cmds.button(
			label='˄',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbUpButton,
			enable=0)

		global downButton
		downButton=cmds.button(
			label='ˇ',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbDownButton,
			enable=0)

		global strongDownButton
		strongDownButton=cmds.button(
			label='ˇˇ',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbStrongDownButton,
			enable=0)

		global pLRfs
		pLRfs = cmds.floatSliderGrp( 'PanLeftRight' , label='Pan Left/Right', field=True, minValue=-2, maxValue=2, fieldMinValue=-100.0, fieldMaxValue=100.0, value=0, pre=3, enable=0)
		
		global strongLeftButton
		strongLeftButton=cmds.button(
			label='<<',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbStrongLeftButton,
			enable=0)

		global leftButton
		leftButton=cmds.button(
			label='<',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbLeftButton,
			enable=0)

		global rightButton
		rightButton=cmds.button(
			label='>',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbRightButton,
			enable=0)

		global strongRightButton
		strongRightButton=cmds.button(
			label='>>',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbStrongRightButton,
			enable=0)

		global zIOfs
		zIOfs= cmds.floatSliderGrp( 'ZoomInOut' , label='Zoom In/Out', field=True, minValue=0, maxValue=2.0, fieldMinValue=0, fieldMaxValue=100, value=1, pre=3, enable=0 )
		
		global strongZoomInButton
		strongZoomInButton=cmds.button(
			label='++',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbStrongZoomInButton,
			enable=0)

		global zoomInButton
		zoomInButton=cmds.button(
			label='+',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbZoomInButton,
			enable=0)

		global zoomOutButton
		zoomOutButton=cmds.button(
			label='-',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbZoomOutButton,
			enable=0)

		global strongZoomOutButton
		strongZoomOutButton=cmds.button(
			label='--',
			width=buttonWidth,
			height=buttonHeight,
			command= self.cbStrongZoomOutButton,
			enable=0)
	
		#panneau rétractable 'Easy PZ' (fin)---------------------------------------------
		
		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form

		#panneau rétractable 'Selection Option' (début)-------------------------------------------
		
		
		# mode de disposition en panneau rétractable
		self.layoutSelection = cmds.frameLayout("FrameLayoutSelectionOption", label='Selection Option', collapsable=True, mw=60)
		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.layoutSelection,'left' , 0],
				[self.layoutSelection,'right', 0],
				[self.layoutSelection,'top'  , 0]),
			attachControl=(
				[self.layoutSelection,'top', 0, self.layoutEasyPZ])
		)

		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=2)  
		
		cmds.button(
			label='Curve Selection',
			width=190,
			height=40,
			command= self.cbCurveSelection)
			
		cmds.button(
			label='All Selection',
			width=190,
			height=40,
			command= self.cbAllSelection)


		
		#ADDING QUICK SELECTION

		cmds.separator( height=40, style='out' )
		cmds.separator( height=40, style='out' )

		cmds.button(
			label='Create Quick Selection',
			width=190,
			height=40,
			command= self.cbCreateQuickSelection)

		cmds.separator( style='none' )

		self.Textlist2= cmds.textScrollList("QuickSelectList", w=150, h=100, allowMultiSelection=True, doubleClickCommand=self.textlist_doubleClick2, deleteKeyCommand=self.textlist_delete2)
		

		#panneau rétractable 'Selection Option' (fin)-----------------------------------------------------


		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form
		
		#panneau rétractable 'Animation Option' (début)---------------------------------------------------
		
		
		# mode de disposition en panneau rétractable
		self.AnimationOption = cmds.frameLayout("FrameLayoutAnimationOption", label='Animation Option', collapsable=True,cl=1,  mw=15)

		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.AnimationOption,'left' , 0],
				[self.AnimationOption,'right', 0],
				[self.AnimationOption,'top'  , 0]),
			attachControl=(
				[self.AnimationOption,'top', 0, self.layoutSelection])
		)

		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=3)  

		global animationModeCollection
		global stMode
		global spMode
		global auMode

		animationModeCollection=cmds.radioCollection()
		stMode=cmds.radioButton(l="", enable=0)
		spMode=cmds.radioButton(l="",enable=0)
		auMode=cmds.radioButton(l="",enable=0)

		currentMode=cmds.keyTangent(q=1, g=1)

		if currentMode[0]=="auto":
			cmds.radioCollection( animationModeCollection, edit=True, select=auMode )
			print "auto"
		if currentMode[0]=="flat":
			cmds.radioCollection( animationModeCollection, edit=True, select=stMode )
			print "flat"
		if currentMode[0]=="spline":
			cmds.radioCollection( animationModeCollection, edit=True, select=spMode )
			print "spline"







			
		cmds.button(
			label='Stepped Mode',
			width=150,
			height=self.buttonHeight,
			command= self.cbSteppedMode)
			
		cmds.button(
			label='Spline Mode',
			width=150,
			height=self.buttonHeight,
			command= self.cbSplineMode)
			
		cmds.button(
			label='Auto Mode',
			width=150,
			height=self.buttonHeight,
			command= self.cbAutoMode)
		

		global atek        
		atek = cmds.checkBox(l='Apply to existing keys',value=False, changeCommand=self.cbApplyToExistingKeysToggled)
  
		global atso      
		atso= cmds.checkBox(l='Apply to selected objects only',value=True, enable=0)

		cmds.separator( height=40, style='none' )
		cmds.button(
			backgroundColor=[0.85,0.85,0],
			label='Select All Animation Curves',
			width=150,
			height=self.buttonHeight,
			command= self.cbSelectAllAnimCurves)
		cmds.separator( height=40, style='in', hr=False )
		
		cmds.button(
			label='Ghost Current Pose',
			width=150,
			height=self.buttonHeight,
			command= self.cbGhostPose)

		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		#cmds.text( label='Move Keyframes' ) 
		cmds.separator( height=20, style='out' )

		cmds.button(
			label='Key ALL keyed Frames',
			width=150,
			height=40,
			command= self.cbKeyframeAll)

		global otaCB      
		otaCB= cmds.checkBox(l='Only transform attributes',value=True)

		global oftCB      
		oftCB= cmds.checkBox(l='Only for Timeline',value=True)

		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )

		cmds.button(
			label='Bake From A To B',
			width=150,
			height=40,
			command= self.cbTransferBake)

		global rtoaCB      
		rtoaCB= cmds.checkBox(l='Reset Transform on A',value=True)

		
		global HighFidelityCB     
		HighFidelityCB= cmds.checkBox(l='High Fidelity',value=False)
		

		#cmds.separator( height=20, style='none' )

		cmds.separator( height=20, style='out' )
		cmds.text( label='Move Keyframes' ) 
		cmds.separator( height=20, style='out' )

		cmds.button(
			label='<',
			width=75,
			height=self.buttonHeight,
			command=self.cbMoveKeysLeft)

		self.textboxFrameIncrement = cmds.textField(width=150,enable=1, text="1")

		cmds.button(
			label='>',
			width=75,
			height=self.buttonHeight,
			command=self.cbMoveKeysRight)

		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )    

		cmds.button(
			label='Change Rotate Order',
			width=150,
			height=40,
			command= self.cbChangeRotateOrder)

		global rotateOrderV
		rotateOrderV=cmds.optionMenu( label='Choose:', height=20)
		cmds.menuItem( label='xyz' )
		cmds.menuItem( label='yzx' )
		cmds.menuItem( label='zxy' )
		cmds.menuItem( label='xzy' )
		cmds.menuItem( label='yxz' )
		cmds.menuItem( label='zyx' )
		cmds.optionMenu(rotateOrderV, edit=True, value='zxy')

		cmds.separator( height=20, style='none' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )  

		cmds.button(
			label='SnapHeal keys',
			backgroundColor=[0,0.85,0],
			width=75,
			height=self.buttonHeight,
			command=self.cbSnapHealKeys)
		
		global snapToleranceTF
		
		cmds.text( label='Snap time width tolerence =' ) 
		snapToleranceTF = cmds.textField(width=20,enable=1, text="0.25")
		cmds.separator( height=15, style='none' )

		cmds.text( label='SnapHeal Time:' )
		snapHealWhat=cmds.optionMenu( height=20)
		cmds.menuItem( label='All keyframes')
		cmds.menuItem( label='Selected Playblack Range' )
		cmds.menuItem( label='Selected Shot' )
		cmds.menuItem( label='Current Timeline' )
		global snapHealWhat

		cmds.separator( height=15, style='none' )





		#panneau rétractable 'Animation Option' (fin)-----------------------------------------------------

		
		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form

		#panneau rétractable 'Camera Sequencer Option' (début)------------------------------------------------

		# mode de disposition en panneau rétractable
		self.LayoutCameraSequencerOption = cmds.frameLayout("FrameLayoutCameraSequencerOption", label='Camera Sequencer Option', collapsable=True, cl=1, mw=15)
		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.LayoutCameraSequencerOption,'left' , 0],
				[self.LayoutCameraSequencerOption,'right', 0],
				[self.LayoutCameraSequencerOption,'top'  , 0]),
			attachControl=(
				[self.LayoutCameraSequencerOption,'top', 0, self.AnimationOption])
		)
		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=3)

		cmds.button(
			label='Order Cam Sequencer',
			width=150,
			height=self.buttonHeight,
			command=self.cbOrderCamSequencer)

		cmds.button(
			label='Frame Selected Shot',
			width=150,
			height=self.buttonHeight,
			command=self.cbFrameSelectedShot)

		cmds.button(
			label='Place shotCam on View',
			width=150,
			height=self.buttonHeight,
			command=self.cbPlaceShotCam)

		#cmds.separator( height=40, style='none' )
		global renameShotCB     
		renameShotCB= cmds.checkBox(l='Also Rename Shot',value=True)
		cmds.separator( height=20, style='none' )
		cmds.separator( height=20, style='none' )

		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )		


		cmds.button(
			backgroundColor=[0.85,0,0],
			label='Destroy Shot',
			width=150,
			height=self.buttonHeight,
			command=self.cbDestroyShot)
		cmds.button(
			backgroundColor=[0.85,0.85,0],
			label='Swap Shots',
			width=150,
			height=self.buttonHeight,
			command=self.cbSwapShots)

		cmds.separator( height=20, style='none' )

		global destroyCamerasCB     
		destroyCamerasCB= cmds.checkBox(l='Also destroy Cameras',value=True)		

		global swapNameSpacesCB     
		swapNameSpacesCB= cmds.checkBox(l='Also swap Namespaces',value=False)

		cmds.separator( height=20, style='none' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='none' )

		cmds.button(
			label='Create Shot',
			width=150,
			height=self.buttonHeight,
			command=self.cbCreateShot)

		cmds.separator( height=20, style='none' )

		cmds.text( label='Use this NameSpace:' )
		global NameSpaceTF
		NameSpaceTF = cmds.textField(width=150,enable=1, text="caStandard_Seq_")

		cmds.separator( height=20, style='none' )

		cmds.text( label='Camera Rig:' )
		global cameraRigOM
		cameraRigOM = cmds.optionMenu()
		cmds.menuItem( label='Simple')
		cmds.menuItem( label='No rig (just camera)')
		cmds.menuItem( label='Crane (N/A yet)')
		cmds.menuItem( label='Cart (N/A yet)')

		cmds.separator( height=20, style='none' )

		cmds.text( label='Film standard')
		global filmStandardOM
		filmStandardOM = cmds.optionMenu()
		cmds.menuItem(label='Full HD1080')
		cmds.menuItem(label='Full 1024')
		cmds.menuItem(label='--Other options N/A yet--')

		cmds.separator( height=20, style='none' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )
		cmds.separator( height=20, style='out' )

		cmds.separator( height=10, style='none' )
		cmds.text( label='Transform sequence into shot', height=20 )
		cmds.separator( height=10, style='none' )

		#Defining shotlist to use in option Menu
		isShot=cmds.ls(type="shot")
		shotDict={}
		for i in isShot:
			iSF=i+".startFrame"
			shotDict[i] = int(cmds.getAttr(iSF))

		shotOrderedDict=OrderedDict(sorted(shotDict.items(), key=lambda t: t[1]))
		cmds.text( label='Keep shots from, to:', height=20 )
		global shotFromOM
		shotFromOM = cmds.optionMenu()
		cmds.menuItem(label="Start of timeline")
		for i in shotOrderedDict:
			cmds.menuItem(label=i)
		global shotToOM
		shotToOM = cmds.optionMenu()
		cmds.menuItem(label="End of timeline")
		for i in shotOrderedDict:
			cmds.menuItem(label=i)

		global offsetBackCB     
		offsetBackCB= cmds.checkBox(l='Offset shots back to:',value=False, changeCommand=self.CCoffsetBackCB)
		global offsetBackTF
		offsetBackTF = cmds.textField(width=150,enable=0, text="1001")

		cmds.button(
			label='Refresh shot list',
			width=150,
			height=self.buttonHeight,
			command=self.cbRefreshSL)

		cmds.separator( height=20, style='none' )

		cmds.button(
			label='Sequence into shot',
			width=150,
			height=self.buttonHeight,
			command=self.cbSplitIntoShot)

		#panneau rétractable 'Camera Sequencer Option' (fin)---------------------------------------------------
		
		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form
  
		#panneau rétractable 'Mass Attribute Edit' (début)-------------------------------------------
				
		# mode de disposition en panneau rétractable
		self.LayoutMassAttributeEdit = cmds.frameLayout("FrameLayoutMassAttributeEdit", label='Mass Edit', collapsable=True, cl=1, mw=82.5, mh=5)
		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.LayoutMassAttributeEdit,'left' , 0],
				[self.LayoutMassAttributeEdit,'right', 0],
				[self.LayoutMassAttributeEdit,'top'  , 0]),
			attachControl=(
				[self.LayoutMassAttributeEdit,'top', 0, self.LayoutCameraSequencerOption])
		)
		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=2)

		cmds.text( label='What to Edit' )
		self.menuWhatToEdit = cmds.optionMenu(changeCommand= self.changeWhatToEdit )
		cmds.menuItem( label='Selected' )
		cmds.menuItem( label='Camera' )
		cmds.menuItem( label='Lights' )
		cmds.menuItem( label='Polygon' )
		cmds.menuItem( label='Nurb Curve' )
		cmds.menuItem( label='Joint' )
		cmds.menuItem( label='Namespace')
		cmds.menuItem( label='Shot')

		global maeObjAttr
		maeObjAttr="selected"

		global wtnCB
		wtnCB = cmds.checkBox(l='With this name:',value=False,changeCommand=self.cbUseNameToggled)
		global wtnTF
		wtnTF = cmds.textField(width=110,enable=0)   

		cmds.text( label='Attribute Edit',font="boldLabelFont")
		cmds.separator( style='out', height=40 )

		cmds.text( label='Attribute Name' )

		global AttributeNameTF
		AttributeNameTF = cmds.textField(width=150,enable=1, text="translateX")

		cmds.text( label='Value Input' )     
		global valueInputTF
		valueInputTF = cmds.textField(width=150,enable=1)
 
		cmds.separator( style='none' )

		global changeAttributeButton
		changeAttributeButton=cmds.button(
			label='Change Attribute',
			width=150,
			height=self.buttonHeight,
			command=self.cbChangeAttribute)

		cmds.text( label='Rename Edit',font="boldLabelFont")
		cmds.separator( style='out', height=40 )
		
		cmds.text(label="New Name")

		global newNameTF
		newNameTF=cmds.textField(width=150, enable=1, text="seq_322_shot_#0010#_ex")

		cmds.text( label='Number Padding' )
		global numberPaddingList
		numberPaddingList= cmds.optionMenu(changeCommand=self.cbChangePadding)
		cmds.menuItem( label='1' )
		cmds.menuItem( label='01' )
		cmds.menuItem( label='001' )
		cmds.menuItem( label='0010' )
		cmds.menuItem( label='0001' )
		cmds.optionMenu(numberPaddingList, edit=True, value='0010')

		global fromTF
		global toTF
		global fromCB

		fromCB=cmds.checkBox(l="     from:", value=0, changeCommand=self.cbFromToggled, width=20)
		fromTF=cmds.textField(width=110, enable=0, text="0020")
		cmds.text(l="   to:")
		toTF=cmds.textField(width=110, enable=0, text='"0050" or "-" for unlimited')


		cmds.separator( style='none' )
		cmds.button(
			label='Rename',
			width=150,
			height=self.buttonHeight,
			command=self.cbRename)

		cmds.text( label='Replace Edit',font="boldLabelFont")
		cmds.separator( style='out', height=40 )

		cmds.text( label='Replace:', height=20)
		global replaceX
		replaceX=cmds.textField(width=100, enable=1, text="prx")

		cmds.text( label='With:',height=20)
		global withY
		withY=cmds.textField(width=100, enable=1, text="rig")

		cmds.separator( style='none' )

		global replaceButton
		replaceButton=cmds.button(
			label='Replace',
			width=150,
			height=self.buttonHeight,
			command=self.cbReplace)

					
			
		#panneau rétractable 'Mass Attribute Edit' (fin)---------------------------------------------

		
		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form
		
		
		#panneau rétractable 'Advanced Skeleton Options' (début)-------------------------------------------
		
		
		# mode de disposition en panneau rétractable
		self.layoutAdvancedSkel = cmds.frameLayout(label='Advanced Skeleton Options', collapsable=True, cl=1)
		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.layoutAdvancedSkel,'left' , 0],
				[self.layoutAdvancedSkel,'right', 0],
				[self.layoutAdvancedSkel,'top'  , 0]),
			attachControl=(
				[self.layoutAdvancedSkel,'top', 0, self.LayoutMassAttributeEdit])
		)

		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=1)  


		global usingAS       

		usingAS = cmds.checkBox(l='Use MTT for Advanced Skeleton',value=False,changeCommand=self.checkbox_toggled2, onCommand=self.UseAdvancedSkel)


		#panneau rétractable 'Advanced Skeleton Options' (Fin)-------------------------------------------

		# remonter de 2 niveaux dans l'hiérarchie 
		cmds.setParent('..') # frame > subform
		cmds.setParent('..') # subform > form
		
		#panneau rétractable 'File Options' (début)-------------------------------------------

		# mode de disposition en panneau rétractable
		self.layoutFileOptions = cmds.frameLayout(label='File Options', collapsable=True, cl=1)
		
		# définition des contraintes de disposition
		cmds.formLayout(
			self.layoutFormContent, edit=True,
			attachForm=(
				[self.layoutFileOptions,'left' , 0],
				[self.layoutFileOptions,'right', 0],
				[self.layoutFileOptions,'top'  , 0]),
			attachControl=(
				[self.layoutFileOptions,'top', 0, self.layoutAdvancedSkel])
		)

		
		# mode de disposition à  l'intérieur du frame layout
		cmds.rowColumnLayout(numberOfColumns=4)  

		cmds.button(
			label='Individually Export All Selected',
			width=175,
			height=self.buttonHeight,
			command=self.cbExportAll)

		useExportOption=0

		global exportNScb
		exportNScb = cmds.checkBox(l="Use NameSpace", value=False,changeCommand=self.changeExportOption)

		global NameSpaceExportTF
		NameSpaceExportTF=cmds.textField(width=150, enable=0, text="<- Hit checkbox")

		cmds.separator( style='none' )

		#cmds.text( label='File Type' , enable=1)

		global fileTypeMenu
		fileTypeMenu = cmds.optionMenu(enable=1, height=30)
		cmds.menuItem( label='mayaAscii' )
		cmds.menuItem( label='mayaBinary' )
		cmds.menuItem( label='OBJ' )



		#panneau rétractable 'File Options' (Fin)-------------------------------------------
		self.UpdateCMTList()




		#======================Définition des contraintes de disposition et de quelles fonctions les boutons appelents (Fin)==================== 
 
		
		#=====================Définition des fonctions (Début)=================================================================================== 
		


	 
	def destroy(self):

		#Deleting all nodes before closing the window
		destroying=0

		if destroying==0:
			selectedcontroller=cmds.ls(sl=1)
			cmds.select(cl=1)

			MTTexist=cmds.select('MTT*')

	  
			cmds.select('MTT*')
			cmds.delete(hi='both')
			global nCounter
			nCounter=0
			global list1
			global listMTTMT

			listMTTMT=[]
			try:
				del list1[:]       
			except NameError:
				print "There was no motion trails to delete"

			try:
				cmds.select(selectedcontroller)
			except ValueError:
				print "Expected a ValueError"


			selectedcontroller=None
			destroying=destroying+1

		if destroying==1:
			
			#Closing the window

			if cmds.window(self.window, exists=True):
				cmds.deleteUI(self.window, window=True)
				print "destroy window" 
			
			if self.isDockable:
				if cmds.dockControl(self.windowDock, exists=True):
					cmds.deleteUI(self.windowDock, control=True)
					print "destroy dock"
			
	 
	def callbackMenuQuit(self, *args):
		self.destroy()
	
	def callbackMenuHelp(self, *args):
		cmds.launch(web='http://christonoel.wix.com/motiontrailtool')

	# fonctions de callback des boutons 

	def cbDeleteAll(self, *args):
		#Delete all
		selectedcontroller=cmds.ls(sl=1)
		cmds.select(cl=1)

		MTTexist=cmds.select('MTT*')
		cmds.select(cl=1)
		cmds.delete("MTT_group")
		global nCounter
		nCounter=0
		global list1
		global listMTTMT

		listMTTMT=[]
		try:
			del list1[:]       
		except NameError:
			print "There was no motion trails to delete"

		try:
			cmds.select(selectedcontroller)
		except ValueError:
			print "Expected a ValueError"


		selectedcontroller=None

		cmds.textScrollList(self.Textlist, edit=True, removeAll=1)

		print 'command: DELETE ALL'
		pymel.warning('Deleted MTT_Group, kept MTT_Lights')   
	  


	def cbHide(self, *args):

		global switchHide

		if switchHide>1:
			switchHide=0

		try:
			cmds.select('MTT_motionTrail*')
		except ValueError:
			print "There was no previously created MTT_motionTrails"

		motionTrailList=cmds.ls(sl=1)


		if switchHide==1:
			for i in motionTrailList:
				cmds.hide(i)

		if switchHide==0:
			for i in motionTrailList:
				cmds.showHidden(i)

		switchHide=switchHide+1

		#Old way of hiding the trails: was to switch between showing trails or not
		"""
		i=0
		while i<10 :
			if cmds.modelPanel('modelPanel'+str(i), ex=1):
				cmds.modelEditor( 'modelPanel'+str(i) , edit=True, motionTrails=False)            
			i=i+1
		print 'command: HIDE'
		"""
		  

	def cbCreate(self, *args):

		#Create

		result = cmds.promptDialog(
		title='Name the Motion Trail',
		message='Enter Name:',
		button=['OK', 'Cancel'],
		defaultButton='OK',
		cancelButton='Cancel',
		dismissString='Cancel')

		if result == 'OK':
			MTTCname = str(cmds.promptDialog(query=True, text=True))

		if result== 'Cancel':
			cmds.error("MTT : No motion trail was created")

		
		cmds.namespace( set=':')

		global nCounter
		global list1
		global listMTTMT
		global NMTT
		global str1

		str1=[]
		
		shFM=cmds.checkBox(shFMCB, q=1, v=1)
				
		str1=cmds.ls(sl=1,r=1)
		selectedcontroller=cmds.ls(sl=1, r=1)

		if len(str1)==0:
			pymel.warning("No selection was made. Please select one vertex, or [possibly multiple] polygon object(s), Nurb Curve controller(s), or joint(s)")
			  
		if nCounter==0:
			list1=[str1]
		else:
			list1.append(str1)

		NMTT="MTT_Locator"+str(nCounter)

		if nCounter==0:
			listMTTMT=[NMTT]
		   
		notObject=0
		global slctVrtx
		global slctFace
		slctVrtx= cmds.filterExpand(sm=31)
		slctCV=cmds.filterExpand(sm=28)
		slctPol=cmds.filterExpand(sm=12)
		slctCtrl=cmds.filterExpand(sm=9)
		slctEdge=cmds.filterExpand(sm=32)
		slctSurfParPoint=cmds.filterExpand(sm=41)
		slctCurveParPoint=cmds.filterExpand(sm=39)
		slctSurfIso=cmds.filterExpand(sm=45)
		slctFace=cmds.filterExpand(sm=34)



		if slctCV != None:
			notObject=1

		if slctFace != None:

			cmds.ConvertSelectionToEdges()

			stE=cmds.ls(sl=1)

			cmds.select(str1, r=1)
			cmds.ConvertSelectionToVertices()
			aFaceVtx=cmds.ls(sl=1)
			print "This is aFaceVtx "+str(aFaceVtx)

			listTransformX=[]
			listTransformY=[]
			listTransformZ=[]
			aFaceVtxEval=[]
			
			
			for oFaceVtx in aFaceVtx:
				listCheck=oFaceVtx.split("[")[1][:-1]

				if ":" in listCheck:
					
					lower=int(listCheck.split(":")[0])
					upper=int(listCheck.split(":")[1])+1

					for i in range(lower, upper):
						aFaceVtxEval.append(oFaceVtx.split("[")[0]+"["+str(i)+"]")
				else:
					aFaceVtxEval.append(oFaceVtx)

			global avrgLoc
			avrgLoc=[]

			for oFaceVtxEval in aFaceVtxEval:
				cmds.select(oFaceVtxEval, r=1)
				print "Creating rivet for " +str(oFaceVtxEval)
				str1=oFaceVtxEval
				cmds.ConvertSelectionToEdges()

				stE=cmds.ls(sl=1)[0]

				#This is the edge index of a single edge
				EdgeIndex= ((stE.split(":")[-1]).split("[")[-1]).split("]")[0]
				print "EdgeIndex is" + EdgeIndex

				nameObject=cmds.ls(sl=1)[0].split("[")[0]
				print "nameObject is "+ nameObject

				EdgeName= nameObject + "[" + EdgeIndex + "]"
				print "EdgeName is "+ EdgeName

				cmds.select(EdgeName)
				print "selection was a vertex. Converted it to one edge:"+ EdgeName

				self.rivet(self.rivet_selection())

				global slctVrtx2
				slctVrtx2=1

			cmds.spaceLocator(n="MTT_Locator"+str(nCounter))
			cmds.parentConstraint(avrgLoc, "MTT_Locator"+str(nCounter))

			notObject=1

		if slctVrtx != None:
			#Need to filter out so there is only one edge remaining in the selection
			cmds.ConvertSelectionToEdges()

			stE=cmds.ls(sl=1)[0]

			#This is the edge index of a single edge
			EdgeIndex= ((stE.split(":")[-1]).split("[")[-1]).split("]")[0]
			print "EdgeIndex is" + EdgeIndex

			nameObject=cmds.ls(sl=1)[0].split("[")[0]
			print "nameObject is "+ nameObject

			EdgeName= nameObject + "[" + EdgeIndex + "]"
			print "EdgeName is "+ EdgeName

			cmds.select(EdgeName)
			print "selection was a vertex. Converted it to one edge:"+ EdgeName

			notObject=1

		if slctEdge != None:
			notObject=1

		if slctSurfParPoint != None:
			notObject=1

		if slctCurveParPoint != None:
			notObject=1

		if slctSurfIso != None:
			notObject=1


		if notObject==1:
			print "notObject="+str(notObject)
			print "selection is not an object. Creating a rivet for it."
			#selection is not an object
			#creating a rivet for the selection

			if slctFace!=None:
				print "The rivets are created by iterating the four corners of the face."

			else:
				self.rivet(self.rivet_selection())


		if notObject==0:
			print "notObject="+str(notObject)
			print "selection is an object"
			#selection is an object
			cmds.select(cl=1)
			cmds.spaceLocator(n="MTT_Locator"+str(nCounter))
			cmds.select(str1)
			cmds.select("MTT_Locator"+str(nCounter), add=True)           
			cmds.parentConstraint(st="none", sr="none")

		#Creating the Motion trail itself
		
		cmds.select("MTT_Locator"+str(nCounter), r=1)

		startFrame = cmds.playbackOptions(query=True, minTime=True)
		endFrame = cmds.playbackOptions(query=True, maxTime=True)
		currentFrame = startFrame


		if len(MTTCname)==0: #if there was no name specified, give the MTT a generic name
			motionTrail=cmds.snapshot(n="MTT_motionTrail"+str(nCounter),mt=1,st=startFrame, et=endFrame,increment=1)
			motiontrailName="MTT_motionTrail"+str(nCounter)

		if len(MTTCname)!=0: #if there was a name specified, name the MTT with it
			motionTrail=cmds.snapshot(n="MTT_motionTrail"+MTTCname+"_"+str(nCounter),mt=1,st=startFrame, et=endFrame,increment=1)
			motiontrailName="MTT_motionTrail"+MTTCname+"_"+str(nCounter)


		cmds.setAttr(str(motiontrailName) +'HandleShape.showFrames', True)
		cmds.setAttr(str(motiontrailName) +'HandleShape.showFrameMarkers', shFM)       
		
		cmds.hide("MTT_Locator"+str(nCounter))
		cmds.setKeyframe('MTT_Locator'+str(nCounter), at="scaleX")
						
		cmds.select('MTT*')

		strMT=motiontrailName+"Handle"

		if cmds.objExists('MTT_group')==0:
			print "MTT_group did not exist, creating it now"
			cmds.select(cl=1)
			cmds.group(n='MTT_group', em=1)
			cmds.parent('MTT_Locator'+str(nCounter), strMT, 'MTT_group')
			#cmds.parent('MTT_ObjectOffset_group'+str(nCounter), strMT, 'MTT_group')
		else:
			print "MTT group did exist, parenting MTT_ObjectOffset_group to it"
			cmds.select(cl=1)
			cmds.parent('MTT_Locator'+str(nCounter), strMT, 'MTT_group')
			#cmds.parent('MTT_ObjectOffset_group'+str(nCounter), strMT, 'MTT_group')
		#Motion trail created, attributes set, merged with MTT group  

		if slctFace:
			for locator in avrgLoc:
				cmds.hide(locator)
				cmds.parent(locator, 'MTT_group')

		print "nCounter is now at: " + str(nCounter) 

		if len(MTTCname)==0:
			cmds.textScrollList(self.Textlist, edit=True, append=["MTT_MotionTrail"+str(nCounter)], uniqueTag=[str(nCounter)])

		if len(MTTCname)!=0:
			cmds.textScrollList(self.Textlist, edit=True, append=["MTT_MotionTrail"+MTTCname+"_"+str(nCounter)], uniqueTag=[str(nCounter)])

		#Adding created Locator to listMTTMT, for use in update all function
		if nCounter != 0:
			listMTTMT.append(NMTT)

		#Iterating the
		nCounter=nCounter+1

		#Emptying variables
		str1=[]
		str2=[]
		str3=[]
		oPnt=[]

		print "After iteration, the nCounter is now: " + str(nCounter)

		try:
			cmds.select(selectedcontroller, r=1)
		except ValueError:
			print "Expected a ValueError"
		   
		#Below is exception for not selecting a vertex, polygon or nurbs curve controller. Although, the script does work with joints, so this is useless for the moment    
		"""
		elif len(str1)!=None and slctVrtx==0 and slctPol==0 and slctCtrl==0 :
			pymel.warning("Please select one vertex, or [possibly multiple] polygon object(s), Nurb Curve controller(s), or joint(s)")
		"""        
				 
	def cbCreateForArticulation(self, *args):
		"""(create articulation)"""

		listJ=cmds.ls(type='joint')

		cmds.namespace( set=':')
		
		global usingASS
		global usingAS

		usingASS=cmds.checkBox(usingAS, q=1, v=1)

		ucnsS=cmds.checkBox(ucns, q=1, v=1)
	   
		global strJ
		global nCounter
		global listJ
		global stopJ

		stopJ=0


		selectedcontroller=cmds.ls(sl=1)
		str1= str(cmds.ls(sl=1))
		cmds.select(cl=1)

		shFM=cmds.checkBox(shFMCB, q=1, v=1)
		
		print "STR1 IS:" + str(str1)
		print "STR1 IS THIS LONG:" + str(len(str1))
		print "LIST J IS:" + str(listJ)
		print "LIST J IS THIS LONG:"+ str(len(listJ))
		
		if stopJ==0 :
				
			for index in range(len(listJ)):                     #Pour tout les éléments de la liste complète des joints de la scène
			   
				
				cmds.select(cl=1)
								
				cmds.select(listJ[index], r=1)                  #Sélectionne l'élément courant de la liste
				strJ= cmds.ls(sl=1)                             #Identifie la variable strJ comme étant cet élément
				print "STRING J IS:" + str(strJ)                #Écrit son nom
				print "STRING J IS THIS LONG" + str(len(strJ))


				#L'utilisateur n'utilise pas l'option "Use MTT for Advanced Skeleton"
				if usingASS ==0:

					if ucnsS==1:  
						#Si l'utilisateur veut utiliser un "Character Name Space" alors évalue si le nom de la case associée se retrouve dans le nom du joint et du controlleur   

						if (cmds.textField(self.CharNameSpaceTF, query=True, text=True)).upper() in str1.upper() and (cmds.textField(self.CharNameSpaceTF, query=True, text=True)).upper() in str(strJ).upper():
							   
							for indexA in listL:                                #Pour chaque élément de la liste des termes identifiant la GAUCHE
								if indexA in str1 and indexA in str(strJ):      #Regarde si l'élément est dans le nom du controlleur et du joint en présente évaluation
									print "A"                                   #Si oui, écrit que tu as passé l'étape A et passe à la prochaine évaluation
									
									for indexB in listDF:                       #Pour chaque élément de la liste des termes identifiant un controlleur de PIED                      
										if indexB in str1:                      #Regarde si l'élément est dans le nom du controlleur
											print "B"                           #Si oui, écrit que tu as passé l'étape B et passe à la prochaine évaluation
												
											for indexC in listAF:               #Pour chaque élément de la liste des termes identifiant une articulation de GENOU
												if indexC in str(strJ):         #Regarde si l'élément est dans le nom du joint en courante évaluation
													print "C"                   #Si oui, écrit que tu as terminé à l'étape C et exécute le code pour créer un motion trail
													self.MakeMTforJoint()               #Le controlleur était donc le PIED GAUCHE du "Character Name Space" spécifié
													stopJ=1
													return stopJ
													
												   
									for indexD in listDH:                       #Comme le controlleur n'était pas un controlleur de pied, pour chaque élément de la liste identifiant un controlleur de MAIN
										if indexD in str1:                      #Regarde si l'élément est dans le nom du controlleur
											print "D"                           #Si oui, écrit que tu as passé à l'étape A et passe à la prochaine évaluation
													
											for indexE in listAH:               #Pour chaque élément de la liste identifiant une articulation de COUDE
												if indexE in str(strJ):         #Regarde si l'élément est dans le nom du joint en courante évaluation
													print "E"                   #Si oui, écrit que tu as terminé à l'étape E et exécute le code pour créer un motion trail
													self.MakeMTforJoint()               #Le controlleur était donc la MAIN GAUCHE du "Character Name Space" spécifié
													stopJ=1 
													return stopJ 
																								   
													
							else:
								for indexF in listR:                            #Pour chaque élément de la liste des termes identifiant la DROITE
									if indexF in str1 and indexF in str(strJ):  #Regarde si l'élément est dans le nom du controlleur et du joint en présente évaluation
										print "F"                               #Si oui, écrit que tu as passé l'étape F et passe à la prochaine évaluation
										
										for indexG in listDF:                   #Pour chaque élément de la liste des termes identifiant un controlleur de PIED        
											if indexG in str1:                  #Regarde si l'élément est dans le nom du controlleur
												print "G"                       #Si oui, écrit que tu as passé l'étape G et passe à la prochaine évaluation
													
												for indexH in listAF:           #Pour chaque élément de la liste des termes identifiant une articulation de GENOU
													if indexH in str(strJ):     #Regarde si l'élément est dans le nom du joint en courante évaluation
														print "H"               #Si oui, écrit que tu as terminé à l'étape H et exécute le code pour créer un motion trail
														self.MakeMTforJoint()           #Le controlleur était donc le PIED DROIT du "Character Name Space" spécifié
														stopJ=1
														return stopJ
														
														
										for indexI in listDH:                   #Comme le controlleur n'était pas un controlleur de pied, pour chaque élément de la liste identifiant un controlleur de MAIN
											if indexI in str1:                  #Regarde si l'élément est dans le nom du controlleur
												print "I"                       #Si oui, écrit que tu as passé à l'étape I et passe à la prochaine évaluation
														
												for indexJ in listAH:           #Pour chaque élément de la liste identifiant une articulation de COUDE
													if indexJ in str(strJ):     #Regarde si l'élément est dans le nom du joint en courante évaluation
														print "J"               #Si oui, écrit que tu as terminé à l'étape E et exécute le code pour créer un motion trail
														self.MakeMTforJoint()           #Le controlleur était donc la MAIN DROITE du "Character Name Space" spécifié
														stopJ=1
														return stopJ
						if index == len(listJ) -1 :
							cmds.warning('No Name Space match, please review spelling. Field IS NOT case sensitive') 



					#Sinon, c'est que l'utilisateur ne veut pas utiliser de "Character Name Space" et qu'il ne travaille que sur un personnage à la fois.
					else : 
						for indexA in listL:                                    #Pour chaque élément de la liste des termes identifiant la GAUCHE
							if indexA in str1 and indexA in str(strJ):          #Regarde si l'élément est dans le nom du controlleur et du joint en présente évaluation
								print "A"                                       #Si oui, écrit que tu as passé l'étape A et passe à la prochaine évaluation
								
								for indexB in listDF:                           #Pour chaque élément de la liste des termes identifiant un controlleur de PIED                      
									if indexB in str1:                          #Regarde si l'élément est dans le nom du controlleur
										print "B"                               #Si oui, écrit que tu as passé l'étape B et passe à la prochaine évaluation
											
										for indexC in listAF:                   #Pour chaque élément de la liste des termes identifiant une articulation de GENOU
											if indexC in str(strJ):             #Regarde si l'élément est dans le nom du joint en courante évaluation
												print "C"                       #Si oui, écrit que tu as terminé à l'étape C et exécute le code pour créer un motion trail
												self.MakeMTforJoint()                   #Le controlleur était donc le PIED GAUCHE
												stopJ=1
												return stopJ
												
											   
								for indexD in listDH:                           #Comme le controlleur n'était pas un controlleur de pied, pour chaque élément de la liste identifiant un controlleur de MAIN
									if indexD in str1:                          #Regarde si l'élément est dans le nom du controlleur
										print "D"                               #Si oui, écrit que tu as passé à l'étape A et passe à la prochaine évaluation
												
										for indexE in listAH:                   #Pour chaque élément de la liste identifiant une articulation de COUDE
											if indexE in str(strJ):             #Regarde si l'élément est dans le nom du joint en courante évaluation
												print "E"                       #Si oui, écrit que tu as terminé à l'étape E et exécute le code pour créer un motion trail
												self.MakeMTforJoint()                   #Le controlleur était donc la MAIN GAUCHE
												stopJ=1 
												return stopJ 
																							   
												
						else:
							for indexF in listR:                                #Pour chaque élément de la liste des termes identifiant la DROITE
								if indexF in str1 and indexF in str(strJ):      #Regarde si l'élément est dans le nom du controlleur et du joint en présente évaluation
									print "F"                                   #Si oui, écrit que tu as passé l'étape F et passe à la prochaine évaluation
									
									for indexG in listDF:                       #Pour chaque élément de la liste des termes identifiant un controlleur de PIED        
										if indexG in str1:                      #Regarde si l'élément est dans le nom du controlleur
											print "G"                           #Si oui, écrit que tu as passé l'étape G et passe à la prochaine évaluation
												
											for indexH in listAF:               #Pour chaque élément de la liste des termes identifiant une articulation de GENOU
												if indexH in str(strJ):         #Regarde si l'élément est dans le nom du joint en courante évaluation
													print "H"                   #Si oui, écrit que tu as terminé à l'étape H et exécute le code pour créer un motion trail
													self.MakeMTforJoint()               #Le controlleur était donc le PIED DROIT
													stopJ=1
													return stopJ
													
													
									for indexI in listDH:                       #Comme le controlleur n'était pas un controlleur de pied, pour chaque élément de la liste identifiant un controlleur de MAIN
										if indexI in str1:                      #Regarde si l'élément est dans le nom du controlleur
											print "I"                           #Si oui, écrit que tu as passé à l'étape I et passe à la prochaine évaluation
													
											for indexJ in listAH:               #Pour chaque élément de la liste identifiant une articulation de COUDE
												if indexJ in str(strJ):         #Regarde si l'élément est dans le nom du joint en courante évaluation
													print "J"                   #Si oui, écrit que tu as terminé à l'étape E et exécute le code pour créer un motion trail
													self.MakeMTforJoint()               #Le controlleur était donc la MAIN DROITE
													stopJ=1
													return stopJ

				#L'utilisateur utilise l'option "Use MTT for Advanced Skeleton"
				#La démarche reste la même, mais plutôt que de chercher dans des dictionnaires généraux, le script cherche des termes précis communs à tout les rigs Advanced Skeleton
				elif usingASS==1 :

					str1adv=str1
					strJadv=str(strJ)


					if ucnsS==1:

						if (cmds.textField(self.CharNameSpaceTF, query=True, text=True)).upper() in str1.upper() and (cmds.textField(self.CharNameSpaceTF, query=True, text=True)).upper() in str(strJ).upper():

							if str1adv.endswith("_R']") and strJadv.endswith("_R']"): #Regarde si l'élément est un élément de la droite AdvSkel
								print "A AdvSkel"

								if 'IKArm' in str1adv :     
									print "B AdvSkel"

									if 'IKXElbow' in strJadv:
										print "C AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ

								if 'FKWrist' in str1adv:     
									print "B AdvSkel"

									if 'FKXElbow' in strJadv:
										print "C AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ

								elif 'IKLeg' in str1adv:
									print "D AdvSkel"

									if 'IKXKnee' in strJadv:
										print "E AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ

								elif 'FKAnkle' in str1adv:
									print "D AdvSkel"

									if 'FKOffsetKnee' in strJadv:
										print "Hello AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ



							elif str1adv.endswith("_L']") and strJadv.endswith("_L']"): #Regarde si l'élément est un élément de la gauche AdvSkel
								print "F AdvSkel"

								if 'IKArm' in str1adv:     
									print "B AdvSkel"

									if 'IKXElbow' in strJadv:
										print "C AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ

								if 'FKWrist' in str1adv:     
									print "B AdvSkel"

									if 'FKXElbow' in strJadv:
										print "C AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ

								elif 'IKLeg' in str1adv:
									print "D AdvSkel"

									if 'IKXKnee' in strJadv:
										print "E AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ

								elif 'FKAnkle' in str1adv:
									print "D AdvSkel"

									if 'FKOffsetKnee' in strJadv:
										print "Hello AdvSkel"
										self.MakeMTforJoint()               
										stopJ=1
										return stopJ

					elif ucnsS==0:

						if str1adv.endswith("_R']") and strJadv.endswith("_R']"): #Regarde si l'élément est un élément de la droite AdvSkel
							print "A AdvSkel"

							if 'IKArm' in str1adv :     
								print "B AdvSkel"

								if 'IKXElbow' in strJadv:
									print "C AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ

							if 'FKWrist' in str1adv:     
								print "B AdvSkel"

								if 'FKXElbow' in strJadv:
									print "C AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ

							elif 'IKLeg' in str1adv:
								print "D AdvSkel"

								if 'IKXKnee' in strJadv:
									print "E AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ

							elif 'FKAnkle' in str1adv:
								print "D AdvSkel"

								if 'FKOffsetKnee' in strJadv:
									print "Hello AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ


						elif str1adv.endswith("_L']") and strJadv.endswith("_L']"): #Regarde si l'élément est un élément de la gauche AdvSkel
							print "F AdvSkel"
							
							if 'IKArm' in str1adv :     
								print "B AdvSkel"

								if 'IKXElbow' in strJadv:
									print "C AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ

							if 'FKWrist' in str1adv:     
								print "B AdvSkel"

								if 'FKXElbow' in strJadv:
									print "C AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ

							elif 'IKLeg' in str1adv:
								print "D AdvSkel"

								if 'IKXKnee' in strJadv:
									print "E AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ

							elif 'FKAnkle' in str1adv:
								print "D AdvSkel"

								if 'FKOffsetKnee' in strJadv:
									print "Hello AdvSkel"
									self.MakeMTforJoint()               
									stopJ=1
									return stopJ


						
				
			
			cmds.select(selectedcontroller)
			selectedcontroller=None
			global itCounter
			
			itCounter=0       
			
	def MakeMTforJoint(self, *args):

		cmds.namespace( set=':')
		
		global stopJ
		global shFM
		global nCounter
		global strJ
		global list1
		global listMTTMT
		global NMTT
		
		shFM=cmds.checkBox(shFMCB, q=1, v=1)
		
		cmds.select(cl=1)

		NMTT="MTT_Locator"+str(nCounter)

		if nCounter==0:
			listMTTMT=[NMTT]
		else :
			listMTTMT.append(NMTT)
		
		if nCounter==0:
			list1=[strJ]
		else:
			list1.append(strJ)
							 
		cmds.spaceLocator(n="MTT_Locator"+str(nCounter))
		cmds.select(strJ, r=1)
		cmds.select("MTT_Locator"+str(nCounter), add=True)
		cmds.parentConstraint(st="none", sr="none")
		cmds.select(cl=1)
		cmds.select("MTT_Locator"+str(nCounter),r=1)
		
		startFrame = cmds.playbackOptions(query=True, minTime=True)
		endFrame = cmds.playbackOptions(query=True, maxTime=True)
		currentFrame = startFrame
		motionTrail=cmds.snapshot(n="MTT_motionTrail"+str(nCounter),mt=1,st=startFrame, et=endFrame,increment=1)
		
		cmds.setAttr('MTT_motionTrail'+ str(nCounter) +'HandleShape.showFrameMarkers', shFM)

		
		cmds.hide("MTT_Locator"+str(nCounter))
		
		cmds.select('MTT*')
		
		if cmds.objExists('MTT_group')==0:
			cmds.group(n='MTT_group')
		else:
			cmds.select('MTT_group',deselect=1)
			cmds.parent(cmds.ls(sl=1), 'MTT_group')


		cmds.textScrollList(self.Textlist, edit=True, append=["MTT_motionTrail"+str(nCounter)], uniqueTag=[str(nCounter)])


		nCounter= nCounter+1
		

		stopJ=1
		return stopJ
		
		strJ=None

		print "COMMAND: CREATE FOR ARTICULATION"
		


	def cbUpdateAll(self, *args):
		"""(Update All)"""

		cmds.namespace( set=':')

		selectedcontroller=cmds.ls(sl=1)
		cmds.select(cl=1)

		global nCounter

		if nCounter==0:
			cmds.warning('Cannot update: no Motion Trail exist')

		else:
			
			global list1
			
			cmds.select('MTT_motionTrail*')  
			cmds.delete()
			cmds.select(cl=1)
			
			nCounter=0
			
			shFM=cmds.checkBox(shFMCB, q=1, v=1)
			
			strUP=None
			strUP=[]

			#print listMTTMT
			
			for index in range(len(listMTTMT)):                

				cmds.select(cl=1)
								
				cmds.select(listMTTMT[index], r=1)
				print "selected locator is " + str(cmds.ls(sl=1)[0])

				startFrame = cmds.playbackOptions(query=True, minTime=True)
				endFrame = cmds.playbackOptions(query=True, maxTime=True)
				currentFrame = startFrame
				cmds.snapshot(n="MTT_motionTrail"+str(nCounter),mt=1,st=startFrame, et=endFrame,increment=1)

				cmds.setAttr('MTT_motionTrail'+ str(nCounter) +'HandleShape.showFrames', True)
				cmds.setAttr('MTT_motionTrail'+ str(nCounter) +'HandleShape.showFrameMarkers', shFM)       
				
				strMT="MTT_motionTrail"+str(nCounter)+"Handle"

				cmds.parent( strMT, 'MTT_group')
		  
				cmds.select(cl=1)

				nCounter=nCounter+1

				cmds.warning("Updated all MTT MotionTrails")

		
		cmds.select(selectedcontroller, r=1)

			
	def callbackButtonCommand8(self, *args):
		
		print 'Test du checkbox AutoUpdate'
		
		"""
		global nCounter
		global list1
		
		if nCounter > 0 :
			for index in range(len(list1)):
				
				cmds.select(list1[index],r=1)
				
				s1=str(cmds.ls(sl=1))
				
				if s1.startswith("[u'"):
					s2=s1.replace("[u'", "")
				if s2.endswith("']"):
					s3=s2.replace("']","")
					
				cmds.scriptJob(attributeChange=['pSphere1.translateX', bitch])   
				cmds.scriptJob(attributeChange=['pSphere1.translateY', bitch])
				cmds.scriptJob(attributeChange=['pSphere1.translateZ', bitch]) 
				cmds.scriptJob(attributeChange=[str(s3)+'.translateX', self.cbUpdateAll])
				cmds.scriptJob(attributeChange=[str(s3)+'.translateY', self.cbUpdateAll])
				cmds.scriptJob(attributeChange=[str(s3)+'.translateZ', self.cbUpdateAll])
	  
				#cmds.scriptJob( kill=updateJob, force=True)
		else:
			print 'There are no MTT Motion Trail to Auto Update'       
		"""
	   

	#Declaring variable to be used by the "Viewing Option" modes.
	global lastUsedPanel
	lastUsedPanel=None	


	def cbAnimationPbMode(self, *args):
		"""Animation Playblast mode"""

		global viewMode
		viewMode="AnimationPbMode"

		self.changeViewMode()   
			  
	def cbBeautyPbMode(self, *args):
		"""Beauty Playblast mode"""

		global viewMode
		viewMode="BeautyPbMode"

		self.changeViewMode()

	def cbAnimationDpMode(self, *args):
		"""Animation Display mode"""

		global viewMode
		viewMode="AnimationDpMode"

		self.changeViewMode()


	def cbCurveSelection(self, *args):            
			cmds.selectType(alo=0,c=1)
			
	def cbAllSelection(self, *args):        
			cmds.selectType(alo=1)     

	def cbSteppedMode(self, *args): 
		#Stepped Mode
			
			atekV=cmds.checkBox(atek,q=1,v=1)
			atsoV=cmds.checkBox(atso,q=1,v=1)

			if atekV==0 :
				cmds.keyTangent(g=1, ott='step', itt='flat')

				cmds.radioCollection( animationModeCollection, edit=True, select=stMode )


			else :

				if atsoV==1 :
					cmds.selectKey()
					cmds.keyTangent(ott='step', itt='flat')

				else :
					cmds.select(cl=1)
					cmds.select(all=True)
					cmds.selectType(ak=1)
					cmds.keyTangent(ott='step', itt='flat')
					cmds.select(cl=1)  

			print "In and out Tangent mode changed to Step"    
			   
	def cbSplineMode(self, *args): 
		#Spline Mode
			
			atekV=cmds.checkBox(atek,q=1,v=1)
			atsoV=cmds.checkBox(atso,q=1,v=1)

			if atekV==0 :
				cmds.keyTangent(g=1, ott='spline', itt='spline')
				cmds.radioCollection( animationModeCollection, edit=True, select=spMode )
			else :

				if atsoV==1 :
					cmds.selectKey()
					cmds.keyTangent(ott='spline', itt='spline')

				else :
					cmds.select(cl=1)
					cmds.select(all=True)
					cmds.selectType(ak=1)
					cmds.keyTangent(ott='spline', itt='spline')
					cmds.select(cl=1)  

			print "In and out Tangent mode changed to Spline"       
			   
	def cbAutoMode(self, *args):  
		#Auto Mode
			
			atekV=cmds.checkBox(atek,q=1,v=1)
			atsoV=cmds.checkBox(atso,q=1,v=1)

			if atekV==0 :
				cmds.keyTangent(g=1, ott='auto', itt='auto')
				cmds.radioCollection( animationModeCollection, edit=True, select=auMode )
			else :

				if atsoV==1 :
					cmds.selectKey()
					cmds.keyTangent(ott='auto', itt='auto')

				else :
					cmds.select(cl=1)
					cmds.select(all=True)
					cmds.selectType(ak=1)
					cmds.keyTangent(ott='auto', itt='auto')
					cmds.select(cl=1)  

			print "In and out Tangent mode changed to Auto"

	def cbCreateSticky(self, *args):  
			#Create sticky Cam

			if cmds.ls(sl=1):

				try:
					cmds.delete("stickyCam_grp")
				except ValueError:
					print "No previously created stickyCam"
					

				cmds.namespace( set=':')

				global txcbV
				global tycbV
				global tzcbV
				global rxcbV
				global rycbV
				global rzcbV
				global txcb
				global tycb
				global tzcb
				global rxcb
				global rycb
				global rzcb

				Tcstrn=[]
				Rcstrn=[]

				currentpanel=None
				global currentpanel         
				currentpanel=cmds.getPanel(wf=1)
				print currentpanel

				currentcamera=None

				global currentcamera
				currentcamera=cmds.modelEditor(currentpanel, q=True, camera=True)
				print currentcamera

				selectedobjects=cmds.ls(sl=1)

				cameraPosition = cmds.cameraView(camera=currentcamera)
				obj = cmds.camera()
				cmds.rename(obj[0],"stickyCam")

				cmds.select("stickyCam")
				cmds.group( em=True, n='stickyCam_grp')
				print "those are the selected objects"
				print selectedobjects
				cmds.parentConstraint(selectedobjects,"stickyCam_grp", name="stickyTemp", sr=["x", "y", "z"])
				cmds.delete("stickyTemp")

				#cmds.group(n='stickyCam_grp')
				cmds.parent("stickyCam", "stickyCam_grp")

				cmds.cameraView(cameraPosition, e=True, camera='stickyCam', sc=True)
				cmds.select(selectedobjects, r=1)
				cmds.select("stickyCam_grp", add=1)

				#defining what constraints do we want
				print "Tcstrn is:" +str(Tcstrn)
				print "Rcstrn is:" +str(Rcstrn) 
				
				txcbV=cmds.checkBox(txcb, q=1, v=1)
				tycbV=cmds.checkBox(tycb, q=1, v=1)
				tzcbV=cmds.checkBox(tzcb, q=1, v=1)
				rxcbV=cmds.checkBox(rxcb, q=1, v=1)
				rycbV=cmds.checkBox(rycb, q=1, v=1)
				rzcbV=cmds.checkBox(rzcb, q=1, v=1)

				if txcbV==0 :
				   Tcstrn.append("x")
				   
				if tycbV==0 :
				   Tcstrn.append("y")
				   
				if tzcbV==0 :
				   Tcstrn.append("z") 
					  
				if rxcbV==0 :
				   Rcstrn.append("x")
				   
				if rycbV==0 :
				   Rcstrn.append("y")

				if rzcbV==0 :
				   Rcstrn.append("z")        
				
				print "Tcstrn is:" +str(Tcstrn)
				print "Rcstrn is:" +str(Rcstrn)  

				#applying constraint conform to what was specified   

				cmds.parentConstraint(mo=1, n="stickyCam_cstrn", st=Tcstrn, sr=Rcstrn)

				mel.eval('lookThroughModelPanel '+ 'stickyCam '+ currentpanel)
					
			else:
				cmds.warning("MTT: Please choose at least one object to create StickyCam")

	def cbDestroySticky(self, *args):  
			#Destroy Sticky Cam


			if cmds.keyframe("persp", sl=False, q=True) <=0:

				currentpanel1=cmds.getPanel(wf=1)
				currentcamera1=cmds.modelEditor(currentpanel1, q=True, camera=True)
				cameraPosition1 = cmds.cameraView(camera=currentcamera1)
				cmds.cameraView(cameraPosition1, e=True, camera='persp', sc=True)

			cmds.select( 'stickyCam_grp', deselect=True )

			selected=cmds.ls(sl=1)

			cmds.namespace( set=':')

			global currentpanel
			global currentcamera

			#cmds.select('stickyCam_grp', r=1)
			cmds.delete("stickyCam_grp")
			try:
				global currentcamera
				global currentpanel
				mel.eval('lookThroughModelPanel '+ currentcamera + " " + currentpanel)
			except RuntimeError:
				print "Expected a RuntimeError"

			cmds.select(selected)
			selected=[]

	def cbChangeAttribute(self, *args):
			#Change Attribute
			
			wtnTFV=cmds.textField(wtnTF, query=True, text=True)
			wtnCBV=cmds.checkBox(wtnCB, q=1, v=1)

			cmds.namespace( set=':')

			global vOverscan

			global maeObjAttr

			global attrCounter
			attrCounter=0

			global nameAttr

			global value    
			value=cmds.textField(valueInputTF, query=True, text=True)

			AttrText= cmds.textField(AttributeNameTF, query=True, text=True)   

			selected=cmds.ls(sl=1) #all selection

			AttrWords= AttrText.split(" ")   

			if len(AttrWords)>1:   #if the attribute name is specified in more than one word 

				nameAttr=AttrWords[0].lower()

				del AttrWords[0]

				for word in AttrWords:
				   
					word=word[0].upper()+word[1:].lower()
					nameAttr+=word
				
			elif len(AttrWords)==1:     #if the attribute name is specified in one word
				nameAttr=AttrText    


			if maeObjAttr=="Namespace":
				pymel.warning("MTT: Cannot change attribute on Namespace, choose something else.")
				import sys
				sys.exit()

			if maeObjAttr=="selected":  #if the Object type is "selected"

				for i in selected:

					cmds.select(i, hi=1)
					list2= cmds.ls(sl=1) #for all selection, select the actual nodes (cause most selection are actually shapes, not the nodes we want)
											
					for index in list2:  #so for all nodes under that which was selected
						self.changeAttribute(index)

			elif maeObjAttr=="light": #if the object type is "light"
									  #then creat a list of all the different light types to change their attributes
				cmds.select(cl=1)
				cmds.select(cmds.ls(type="directionalLight"))
				cmds.select(cmds.ls(type="pointLight"), add=1)
				cmds.select(cmds.ls(type="areaLight"), add=1)
				cmds.select(cmds.ls(type="volumeLight"), add=1)
				cmds.select(cmds.ls(type="spotLight"), add=1)
				cmds.select(cmds.ls(type="ambientLight"), add=1)

				listOther=cmds.ls(sl=1)

				for index in listOther:  #so for all nodes under that which was selected
					self.changeAttribute(index)

			elif maeObjAttr=="Shot":
				cmds.select(cl=1)
				cmds.select(cmds.ls(type="shot"))
				listOther=cmds.ls(sl=1)

				for index in listOther:  #so for all nodes under that which was selected
					self.changeAttribute(index)

			else: #if the object type is any other type

				listOther=cmds.ls(type=str(maeObjAttr))  
									
				for index in listOther:  #so for all nodes under that which was selected

					self.changeAttribute(index)

			if attrCounter==0:
				pymel.warning('No object has attribute "{0}", please check your spelling'.format(nameAttr))

			#Done with all the changing attributes. Selecting back what was selected before
			cmds.select(selected, r=1)
			selected=None    

	def changeAttribute(self, toChange):

		wtnTFV=cmds.textField(wtnTF, query=True, text=True)
		wtnCBV=cmds.checkBox(wtnCB, q=1, v=1)

		global value
		global nameAttr
		global attrCounter

		if wtnCBV==1:
			if wtnTFV not in toChange:				
				import sys
				sys.exit()

		iAttr= toChange+"."+nameAttr
		cmds.select(cl=1)
		cmds.select(toChange, r=1)                            
										
		if cmds.attributeQuery(nameAttr, node=toChange, ex=True)==1: #if the attribute do so exists (which it should)
			
			fValue=None

			try:
				fValue=float(value)
			except ValueError:
				cmds.setAttr(iAttr,str(value),type="string")

			if type(fValue) is not str and type(fValue) is not unicode and fValue is not None :
				pymel.setAttr(iAttr, fValue)                       #Change the attribute to the value specified
			
			attrCounter=attrCounter+1
			iAttr=None  

	def callbackButtonClose(self, *args):
		self.destroy()

	def cbUseChNamespaceToggled(self, *args):
		ucnsS=cmds.checkBox(ucns, q=1, v=1)
		cmds.textField(self.CharNameSpaceTF, edit=True, enable=ucnsS)


	def checkbox_toggled2(self, *args):
		usingASS=cmds.checkBox(usingAS, q=1, v=1)


	def cbApplyToExistingKeysToggled(self, *args):
		atekV=cmds.checkBox(atek, q=1, v=1)
		cmds.checkBox(atso, edit=True, enable=atekV)


	def cbUseEZPZtoggled(self, *args):
		#This is the function for Toggling Use 2D Pan/Zoom checkbox under the Easy PZ subsection

		global zIOfs
		global pUDfs
		global pLRfs


		selectedobjects=cmds.ls(sl=1)

		usePZV=cmds.checkBox(usePZ, q=1, v=1)

		if usePZV==0:
			self.destroyEasyPZ()


		if usePZV==1:

			if cmds.objExists('EasyPZCam_grp'):
				cmds.delete('EasyPZCam_grp')

			if cmds.objExists('EasyPZCam'):
				cmds.delete('EasyPZCam')
			print "creating EasyPZ camera"

			global currentpanelEZPZ
			currentpanelEZPZ=cmds.getPanel(wf=1)
			print currentpanelEZPZ

			global currentcameraEZPZ
			currentcameraEZPZ=cmds.modelEditor(currentpanelEZPZ, q=True, camera=True)
			print currentcameraEZPZ

			cameraPositionEZPZ = cmds.cameraView(camera=currentcameraEZPZ)
			obj = cmds.camera()
			cmds.rename(obj[0],"EasyPZCam")

			cmds.select("EasyPZCam")
			cmds.group(n='EasyPZCam_grp')

			cmds.cameraView(cameraPositionEZPZ, e=True, camera='EasyPZCam', sc=True)
			cmds.select(selectedobjects, r=1)
			cmds.select("EasyPZCam_grp", add=1)

			cmds.parentConstraint(currentcameraEZPZ, "EasyPZCam")
		
			cmds.setAttr("EasyPZCam.panZoomEnabled", 1)

			#reverseZoom=float('ZoomInOut')*-1
			cmds.connectControl( 'PanLeftRight', 'EasyPZCamShape.horizontalPan')
			cmds.connectControl( 'PanUpDown', 'EasyPZCamShape.verticalPan')
			cmds.connectControl( 'ZoomInOut', 'EasyPZCamShape.zoom')

			mel.eval('lookThroughModelPanel '+ 'EasyPZCam '+ currentpanelEZPZ)

		cmds.select(selectedobjects,r=1)

		cmds.floatSliderGrp(pUDfs, edit=True, enable= usePZV)
		cmds.floatSliderGrp(pLRfs, edit=True, enable= usePZV)
		cmds.floatSliderGrp(zIOfs, edit=True, enable= usePZV)

		listButton=[strongUpButton, upButton, downButton, strongDownButton, strongLeftButton, leftButton, rightButton, strongRightButton, strongZoomInButton, zoomInButton, zoomOutButton, strongZoomOutButton]

		for button in listButton:
			cmds.button(button, edit=True, enable=usePZV)      


	def destroyEasyPZ(self, *args):

		
		global currentpanelEZPZ

		global currentcameraEZPZ
		mel.eval('lookThroughModelPanel '+ currentcameraEZPZ + " " + currentpanelEZPZ)

		if cmds.objExists('EasyPZCam_grp'):
			cmds.delete('EasyPZCam_grp')

		if cmds.objExists('EasyPZCam'):
			cmds.delete('EasyPZCam')


	def UseAdvancedSkel(self, *args):
		#cmds.select('jointLayer')
		cmds.setAttr('jointLayer.displayType',0)

	def changeWhatToEdit(self, *args):
		#print "Menu changed"
		optionmenuValue=cmds.optionMenu(self.menuWhatToEdit, query=True, value=True)
		
		global maeObjAttr


		cmds.textField(replaceX, edit=True, enable=False)
		cmds.textField(withY, edit=True, enable=False)
		cmds.button(replaceButton, edit=True, enable=False)

		cmds.textField(AttributeNameTF, edit=True, enable=True)
		cmds.textField(valueInputTF, edit=True, enable=True)
		cmds.button(changeAttributeButton, edit=True, enable=True)


		if optionmenuValue=="Joint":
			maeObjAttr="joint"

		if optionmenuValue=="Camera":
			maeObjAttr="camera"
			cmds.textField(replaceX, edit=True, enable=True)
			cmds.textField(withY, edit=True, enable=True)
			cmds.button(replaceButton, edit=True, enable=True)

		if optionmenuValue=="Selected":
			maeObjAttr="selected"
			cmds.textField(replaceX, edit=True, enable=True)
			cmds.textField(withY, edit=True, enable=True)
			cmds.button(replaceButton, edit=True, enable=True)

		if optionmenuValue=="Lights":
			maeObjAttr="light"

		if optionmenuValue=="Polygon":
			maeObjAttr="mesh"

		if optionmenuValue=="Nurb Curve":
			maeObjAttr="nurbsCurve"

		if optionmenuValue=="Namespace":
			maeObjAttr="Namespace"

			cmds.textField(wtnTF, edit=True, text="Specify Namespace (or part)", enable=True)

			cmds.checkBox(wtnCB, edit=True, value=True)
			cmds.textField(replaceX, edit=True, enable=True)
			cmds.textField(withY, edit=True, enable=True)
			cmds.button(replaceButton, edit=True, enable=True)

			cmds.button(changeAttributeButton, edit=True, enable=False)
			cmds.textField(AttributeNameTF, edit=True, enable=False)
			cmds.textField(valueInputTF, edit=True, enable=False)

		if optionmenuValue=="Shot":
			maeObjAttr="Shot"


	def textlist_doubleClick(self, *args):
		#Command when an item is double clicked in the created motion trail list

		#Below is the code to focus, select and update the MTT (when double clicking on it in the list)

		
		selected=cmds.ls(sl=1)
		print selected

		#Focusing on the locator of the selected motion trail

		cmds.select(cl=1)

		#cmds.select(cmds.textScrollList(self.Textlist, query=True, selectItem=True)[0], r=1)
		print "select item is"
		print cmds.textScrollList(self.Textlist, query=True, selectItem=True)[0]

		itemTag=cmds.textScrollList(self.Textlist, query=True, selectUniqueTagItem=True)[0]
		print "itemTag is "+ str(itemTag)

		#The viewFit depends on the scale of the scene. 0.25 seems to be good with bigger scenes, but problematic with smaller ones. 
		#cmds.viewFit(an=0, f=0.25)
		print cmds.ls(sl=1)
		nameOfThingToFocus="MTT_Locator"+itemTag+"Shape"
		cmds.select(nameOfThingToFocus, r=1)
		cmds.viewFit(an=0)


		#Updating selected motion trail
		
		cmds.select(cl=1)

		MTTnumber=cmds.textScrollList(self.Textlist, query=True, selectUniqueTagItem=True)[0]
			   
		cmds.select("MTT_motionTrail"+MTTnumber+"Handle", r=1)
		 
		cmds.delete()

		cmds.select("MTT_Locator"+MTTnumber, r=1)

		global shFM
		shFM=cmds.checkBox(shFMCB, q=1, v=1)

		startFrame = cmds.playbackOptions(query=True, minTime=True)
		endFrame = cmds.playbackOptions(query=True, maxTime=True)
		currentFrame = startFrame
		cmds.snapshot(n="MTT_motionTrail"+MTTnumber,mt=1,st=startFrame, et=endFrame,increment=1)

		cmds.setAttr('MTT_motionTrail'+ str(MTTnumber) +'HandleShape.showFrames', True)
		cmds.setAttr('MTT_motionTrail'+ str(MTTnumber) +'HandleShape.showFrameMarkers', shFM)       
		
		strMT="MTT_motionTrail"+str(MTTnumber)+"Handle"

		cmds.parent( strMT, 'MTT_group')
  
		cmds.select(cl=1)


		cmds.select(selected, r=1)
		selected=None  
		

	def textlist_delete(self, *args):
		#Command when an item is selected and deleted in the list of created motion trail

		selected=cmds.ls(sl=1)

		itemToRemove=cmds.textScrollList(self.Textlist, query=True, selectItem=True)
		itemTag=cmds.textScrollList(self.Textlist, query=True, selectUniqueTagItem=True)[0]

		#cmds.select("MTT_Locator"+itemTag+"*", r=1)
		#cmds.select("MTT_motionTrail"+itemTag+"*", add=1)

		print "this is the nametag"+str(itemTag)

		cmds.select("MTT*")
		itemsToDelete=[]

		#NEED TO REMOVE ITEM FROM MTT LIST

		locatorToRemove="MTT_Locator"+str(itemTag)
		listMTTMT.remove(locatorToRemove)

		for i in cmds.ls(sl=1):
			if itemTag in i:
				itemsToDelete.append(i)

		cmds.delete(itemsToDelete)

		cmds.select(selected, r=1)
		selected=None    

		cmds.textScrollList(self.Textlist, edit=True, removeItem=itemToRemove)


	def textlist_doubleClick2(self, *args):
		#This command is for the double click of the quick select list

		ToSelect=cmds.textScrollList(self.Textlist2, query=True, selectItem=True)[0]

		FromDict=QSdict[ToSelect]

		cmds.select(FromDict)



		#cmds.select(cmds.textScrollList(self.Textlist2, query=True, selectItem=True)[0], r=1)

	def textlist_delete2(self, *args):

		itemToRemove=cmds.textScrollList(self.Textlist2, query=True, selectItem=True)[0]

		cmds.textScrollList(self.Textlist2, edit=True, removeItem=itemToRemove)

		del QSdict[itemToRemove]

	def cbCreateQuickSelection(self, *args):
		#this funtion adds an item to the quick select list

		global QScounter
		result = cmds.promptDialog(
		title='Name the Quick Selection ',
		message='Enter Name:',
		button=['OK', 'Cancel'],
		defaultButton='OK',
		cancelButton='Cancel',
		dismissString='Cancel')

		if result == 'OK':
			QSname = str(cmds.promptDialog(query=True, text=True))
		
		#trying to detect if name is already used; doesn't seem to work.
		if QSname in QSdict:
			pymel.error("MTT : Please select a different name or delete the entry with the same name")


		QSdict[QSname]=cmds.ls(sl=1)

		#slctnumber=slctnumber+1

		cmds.textScrollList(self.Textlist2, edit=True, append=[QSname])

		print "QS dict is: "+str(QSdict)
		
		#for i in cmds.ls(sl=1):
			#cmds.textScrollList(self.Textlist2, edit=True, append=[i])
			
	def cbMoveKeysLeft(self, *args):

		global timeDirection
		timeDirection=-1
		self.cbMoveKeys()

	def cbMoveKeysRight(self, *args):

		global timeDirection
		timeDirection=1
		self.cbMoveKeys()

	
	def cbMoveKeys(self, *args):

		#This function moves in time the keyframes highlighted in the timeslider for the selected object(s).
		#They are moved by the number corresponding to keyOffset, and in the direction (positive is to the right, negative is to the left) of the timeDirection variable.
		

		selection=cmds.ls(sl=1)
		shotList=[]
		selectionList=[]
		isShot=cmds.ls(type="shot")

		containKeyframes=0

		global keyOffset    
		keyOffset=int(cmds.textField(self.textboxFrameIncrement, query=True, text=True))

		timeOffset=keyOffset*timeDirection

		for i in isShot:
			if i in selection:
				shotList.append(i)

		for i in selection:
			selectionList.append(cmds.objectType(i))

		if len(shotList):

			SFList=[]
			EFList=[]

			for i in shotList: 
				iSF=i+".startFrame"
				SFList.append(cmds.getAttr(iSF))
				iEF=i+".endFrame"
				EFList.append(cmds.getAttr(iEF))

			

			#Trying to find a pythonic way of selecting the animation curves. Relied on a maya.mel.eval instead (lack of time and comprehension)
			
			maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')

			aAnimLayer=cmds.ls(type='animLayer')

			if aAnimLayer:
				for oAnimLayer in aAnimLayer:
					if cmds.animLayer(oAnimLayer, query=True, lock=True):
						cmds.error("MTT: Please unlock all animation layers to proceed")
						import sys
						sys.exit()

			try:
				cmds.keyframe(edit=True,relative=True,timeChange=timeOffset,time=( min(SFList) , max(EFList) ))
			except RuntimeError:
				cmds.error("MTT: Please make sure there are no keys in between your shots")


			for i in shotList:

				iSF=i+".startFrame"
				currentiSF=cmds.getAttr(iSF)
				cmds.setAttr(iSF,int(currentiSF+timeOffset))

				iEF=i+".endFrame"
				currentiEF=cmds.getAttr(iEF)
				cmds.setAttr(iEF,int(currentiEF+timeOffset))

				isSF=i+".sequenceStartFrame"
				currentisSF=cmds.getAttr(isSF)
				cmds.setAttr(isSF,int(currentisSF+timeOffset))

				itrack=i+".track"
				cmds.setAttr(itrack, 1)

			cmds.select(selection)
			pymel.warning("MTT : Moved all of the keyframes in the corresponding shot")

		#cmds.playbackOptions(minTime=min(SFList), maxTime=max(EFList))


		else:
			print "there is no shot in the selection, moving keys around"

			aPlayBackSliderPython = maya.mel.eval('$tmpVar=$gPlayBackSlider')

			Range=cmds.timeControl(aPlayBackSliderPython, query=True, rng=1)
			print "this is the range "+ str(Range)
			RangeNumber=Range.split('"')[1]

			rnA= RangeNumber.split(":")[0]
			print "rnA is " + str(rnA)
			rnB= int(RangeNumber.split(":")[1])-1
			print "rnB is " + str(rnB)

			timelineSelection=0
			keyframeGraphSelection=0

			if (int(rnB)-int(rnA))>0:
				timelineSelection=1

			if cmds.keyframe(q=1, selected=1):
				keyframeGraphSelection=1

			if timelineSelection==1 and keyframeGraphSelection==1:
				#If both keys on the timeline and on the graph editor are selected, ask user what he wants to do
				resultDialog=cmds.confirmDialog( title='Keyframe selection conflict', message="Please choose which selected keys to move:", button=['Keys in the Graph Editor','Keys on the Timeline', 'Cancel'], defaultButton='Yes', cancelButton='Cancel', dismissString='Cancel' )
				print "your mom"

				if resultDialog=="Cancel":
					import sys
					sys.exit()
				if resultDialog=="Keys in the Graph Editor":
					keyframeGraphSelection=1
					timelineSelection=0

				if resultDialog=="Keys on the Timeline":
					keyframeGraphSelection=0
					timelineSelection=1

			if timelineSelection==1 and keyframeGraphSelection==0:
				#Move the keys selected on the timeline		
				cmds.selectKey(clear=1)	
				cmds.keyframe(edit=True,relative=True,timeChange=timeOffset,time=(rnA, rnB))

			if timelineSelection==0 and keyframeGraphSelection==1:
				#Move the keys selected on the graph editor		
				cmds.keyframe(edit=True,relative=True,timeChange=timeOffset)		

	def cbDisplayFilmGates(self, *args):
		#Display film gates

		global wasOn

		if wasOn>1:
			wasOn=0

		nfdcV=cmds.checkBox(nfdc, q=1, v=1)

		if nfdcV==1:
			camList=cmds.ls(type="camera")
			listname=["persp", "left", "top", "side", "bottom", "back"]

			for cam in listname:
				try:
					camList.remove(str(cam)+"Shape")
				except:
					print "there is no camera named "+str(cam)+"Shape"

		else:
			camList=cmds.ls(type="camera")

		#Counting the numbers of camera that have film gates acivated vs not activated
		
		switchList=0
		notswitchList=0

		print len(camList)

		for i in camList:

			iAttr=i+".displayFilmGate"

			if cmds.getAttr(iAttr):
				switchList=switchList+1
			else:
				notswitchList=notswitchList+1

		for i in camList:
			#cmds.select(i, hi=1)
			#list2= cmds.ls(sl=1)

			iAttr=i+".displayFilmGate"
			iOverscan=i+".overscan"
			iGateMask=i+".displayGateMask"

			if switchList > notswitchList:
				wasOn=0

			if switchList==len(camList):
				wasOn=1

			if wasOn==0:
				cmds.setAttr(iAttr, 1)
				cmds.setAttr(iOverscan, 1.3)
				cmds.setAttr(iGateMask, 1)

			if wasOn==1:
				cmds.setAttr(iAttr, 0)
				cmds.setAttr(iOverscan, 1.0)
				cmds.setAttr(iGateMask, 0)

		wasOn=wasOn+1


	def cbBlackAndOpaque(self, *args):
		#Black & Opaque
		global wasOn2

		nfdcV=cmds.checkBox(nfdc, q=1, v=1)

		if nfdcV==1:
			camList=cmds.ls(type="camera")
			listname=["persp", "left", "top", "side", "bottom", "back"]

			for cam in listname:
				try:
					camList.remove(str(cam)+"Shape")
				except:
					print "there was no camera of that name"

		else:
			camList=cmds.ls(type="camera")

		if wasOn2>1:
			wasOn2=0

		for i in camList:

			iAttr=i+".displayGateMaskOpacity"
			iGateMaskColor=i+".displayGateMaskColor"
			iGateMask=i+".displayGateMask"

			if wasOn2==0:
				cmds.setAttr(iAttr, 1)
				cmds.setAttr(iGateMaskColor, 0,0,0)
				cmds.setAttr(iGateMask, 1)


			if wasOn2==1:
				cmds.setAttr(iAttr, 0.7)
				cmds.setAttr(iGateMaskColor, 0.5,0.5,0.5)
				#cmds.setAttr(iGateMask, 0)



		wasOn2=wasOn2+1



		print "Black and opaque button"

	def cbOrderCamSequencer(self, *args):
		#Order cam sequencer

		global renameShotCB
		renameShotCBV=cmds.checkBox(renameShotCB, q=1, v=1)

		#Instead of applying changes on that selection, just make it do it on all shots?
		shotList=[]
		isSelected=cmds.ls(sl=1)
		isShot=cmds.ls(type="shot")


		for i in isShot:
			if i in isSelected:
				shotList.append(i)

		if len(shotList)==0:
			shotList=cmds.ls(type="shot")
			pymel.warning("No shot was selected, ordered all the shots instead")

		for i in shotList:

			isSF=i+".sequenceStartFrame"
			isEF=i+".sequenceEndFrame"
			iSF=i+".startFrame"
			iEF=i+".endFrame"
			iS=i+".scale"
			itrack=i+".track"
			iSN=i+".shotName"

			
			#These lines will set the frames of the shot to be the same as the real time. 

			cmds.setAttr(iEF, cmds.getAttr(isEF))
			cmds.setAttr(iSF, cmds.getAttr(isSF))
			cmds.setAttr(iS, 1)
			
			#This line will also put all the shots on the first track of the camera sequencer
			cmds.setAttr(itrack, 1)

			#These lines will also rename the shot corresponding to the camera's name
			
			if renameShotCBV:
				currentCam=cmds.shot(i, currentCamera=1, q=1)
			
				try:
					camName=currentCam.split(":")[0]
				except IndexError:
					camName=str(currentcamera)
				
				cmds.setAttr(iSN,"shot_"+camName,type="string" )
				cmds.rename(i, "shot_"+camName)

			isSF=[]
			isEF=[]
			iSF=[]
			iEF=[]
			itrack=[]
			shotList=None

		self.cbRefreshSL()

	global shotList
	global shotList2
	shotList=[]
	shotList2=[]


	def cbFrameSelectedShot(self, *args):
		#Frame Selected Shot(s)
		dblClickVar=2
		global shotList
		global shotList2
		shotListEmpty=[]

		AlreadyFramed=0

		#shotList=[]
		isSelected=cmds.ls(sl=1)
		isShot=cmds.ls(type="shot")


		for i in isShot:
			if i in isSelected:
				shotListEmpty.append(i)

		if len(shotListEmpty)==0:
			#shotList=cmds.ls(type="shot")
			pymel.warning("No shot was selected, framed all the shots instead")
			cmds.playbackOptions(minTime=cmds.getAttr("sequencer1.minFrame"), maxTime=cmds.getAttr("sequencer1.maxFrame"))
			cmds.playbackOptions(animationStartTime=cmds.getAttr("sequencer1.minFrame"), animationEndTime=cmds.getAttr("sequencer1.maxFrame"))
							

		else:
	   
			if shotList:

				shotList2=[]
				for i in isShot:
					if i in isSelected:
						shotList2.append(i)

				if shotList==shotList2:
					dblClickVar=1
				else:
					dblClickVar=0
					shotList=shotList2
			else:
				shotList=[] 
				for i in isShot:
					if i in isSelected:
						shotList.append(i)


			SFList=[]
			EFList=[]

			for i in shotList: 
				iSF=i+".startFrame"
				SFList.append(cmds.getAttr(iSF))
				iEF=i+".endFrame"
				EFList.append(cmds.getAttr(iEF))

			currentMin=cmds.playbackOptions(query=True, minTime=True)
			currentMax=cmds.playbackOptions(query=True, maxTime=True)

			if currentMin==min(SFList) and currentMax==max(EFList):
				
				AlreadyFramed=1

			"""
			print "_____________________________________"
			print "shotList= " + str(shotList)
			print "shotListEmpty= " + str(shotListEmpty)
			print "shotList2= " + str(shotList2)
			print "dblClickVar= " +str(dblClickVar)
			print "_____________________________________"
			"""

			if dblClickVar==0 or dblClickVar==2:
				cmds.playbackOptions(minTime=min(SFList), maxTime=max(EFList))
			
			if dblClickVar==1 or AlreadyFramed==1:
				shotList=[]
				cmds.playbackOptions(minTime=min(SFList), maxTime=max(EFList))
				cmds.playbackOptions(animationStartTime=min(SFList), animationEndTime=max(EFList))

		#shotList=None

	def cbPlaceShotCam(self, *args):
		#This will place the camera controller of the current camera in the Camera Sequencer onto the currently used camera 

		currentpanelCS=cmds.getPanel(wf=1)

		currentcameraCS=cmds.modelEditor(currentpanelCS, q=True, camera=True)

		currentShot=cmds.sequenceManager(currentShot=1, q=1)

		cmds.select(cl=1)
		shotCamera=cmds.shot(currentShot, currentCamera=1, q=1)

		cmds.pickWalk(shotCamera, direction='up')

		cameraCtrl=cmds.ls(sl=1)[0]


		#The following block is for internal use of MTT
		try:
			cmds.parentConstraint(currentcameraCS, cameraCtrl, n="toDestroy")
		except RuntimeError:
			cmds.parentConstraint(currentcameraCS,shotCamera, n="toDestroy" )
		cmds.delete("toDestroy")



		#The following commented block is for MTT open version
		"""
		#The script will try to place the camera itself, for productions that directly move the camera around
		try:
			cmds.parentConstraint(currentcameraCS, shotCamera, n="toDestroy")
			cmds.delete("toDestroy")
			cameraWasMoved=1
			 
		#if it fails (if the camera attributes are locked) it will try to move the object containing the camera instead        
		except RuntimeError:
			cmds.parentConstraint(currentcameraCS, cameraCtrl, n="toDestroy")
			cmds.delete("toDestroy")
			cameraWasMoved=0

		#Since some productions do not want to move the cameras, the script will warn it has moved the camera
		if cameraWasMoved==1:
			cmds.warning("The CAMERA itself was moved. Lock its attribute if you want to move the controller")

		"""


	def cbDestroyShot(self, *args):

		destroyReferencedCameras=0
		askToDestroyReferencedCameras=1

		shotList=[]
		isSelected=cmds.ls(sl=1)
		isShot=cmds.ls(type="shot")

		for i in isShot:
			if i in isSelected:
				shotList.append(i)

		SFList=[]
		EFList=[]

		for i in shotList: 
			print "Destroying shot: "+i
			iSF=i+".startFrame"
			SFList.append(cmds.getAttr(iSF))
			iEF=i+".endFrame"
			EFList.append(cmds.getAttr(iEF))
			cmds.shot(i, e=True, lock=0)
			camToDelete=cmds.shot(i, currentCamera=1, q=1)

			#cmds.objExists

			try:
				if cmds.checkBox(destroyCamerasCB, q=1, v=1):

					if destroyReferencedCameras==0:

						if cmds.referenceQuery(camToDelete, isNodeReferenced=True):
						
							if askToDestroyReferencedCameras==1:
								result =cmds.confirmDialog(
									title='MTT: WARNING',
									message='You are trying to delete referenced cameras. ',
									button=['Yes, delete all Cameras', 'No, keep referenced cameras'],
									defaultButton='OK',
									cancelButton='Cancel',
									dismissString='Cancel')
								askToDestroyReferencedCameras=0

								if result=="Yes, delete all Cameras":
									destroyReferencedCameras=1
								if result=="No, keep referenced cameras":
									destroyReferencedCameras=0

							else:
								pass
						else:
							cmds.delete(camToDelete)

					if destroyReferencedCameras==1:
					
						if cmds.referenceQuery(camToDelete, isNodeReferenced=True):
							print str(camToDelete)+" is a referenced node"
							cmds.file(rr=1, rfn=cmds.referenceQuery(camToDelete, referenceNode=1))
							print "Deleted camera: "+camToDelete

						else:
							cmds.delete(camToDelete)



			except RuntimeError:
				pass

			cmds.select(cl=1)
			maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')

			cmds.cutKey( time=(cmds.getAttr(iSF), cmds.getAttr(iEF)), clear=1)


			cmds.delete(i)

		#cmds.keyframe(edit=True,relative=True,timeChange=timeOffset,time=(min(SFList), max(EFList)))

		cmds.select(cl=1)
		maya.mel.eval('select -cl')
		self.unselect()


	def unselect(self, *args):
		cmds.select(cl=1)


	#Functions used to create a rivet
	def rivet_selection(self, *args):

		global nCounter
		print "rivet_selection is evaluated First"

		
		list = cmds.filterExpand( sm = 31) or [] # Polygon Vertices.
		if len(list) != 0:
			#cmds.ConvertSelectionToEdges() # We simply convert to Edges.
			cmds.select(cmds.ls(sl=1)[0], r=1)
			return list

		list = cmds.filterExpand( sm = 32) or [] # Polygon Edges
		
		if len(list) != 0:
			print "Selection corresponds to these edges:"
			print "Polygon Edges : {0}".format(list)
			return list
	 
			
		list = cmds.filterExpand( sm = 39) or [] # Curve Parameter Points
		
		if len(list) != 0:
			print "Selection corresponds to these Curve Parameter Points"
			print "Curve Parameter Points : {0}".format(list)
			return list
			
		list = cmds.filterExpand( sm = 41) or [] # Surface Parameter Points
		
		if len(list) != 0:
			print "Selection corresponds to these Surface Parameter Points"
			print "Surface Parameter Points : {0}".format(list)
			return list
			
		list = cmds.filterExpand( sm = 45) or [] # Surface Isoparms
		
		if len(list) != 0:
			print "Selection corresponds to these Surface Isoparms"
			print "Surface Isoparms: {0}".format(list)
			return list

		cmds.error("MTT: No edges or point selected")
		
	global locCounter
	locCounter=1

	def rivet(self, list):

		print "rivet is evaluated First"
		print "This is what is selected: " +str(cmds.ls(sl=1))
		global nCounter
		global locCounter
		global avrgLoc
		global slctVrtx2

		nameObject = ""
		namePOSI = ""
		
		parts = []
		
		size = len(list)
		slFlag = 0
		cFlag = 0
		
		cPr = 0.0
		
		if size >= 2:
			
			parts = list[0].split('.')      
			nameObject = parts[0]
			e1 = list[0].split('[')[1].split(']')[0]
			e2 = list[1].split('[')[1].split(']')[0]
			
			nameCFME1 = cmds.createNode ("curveFromMeshEdge", name = "rivetCurveFromMeshEdge1")
			cmds.setAttr (".ihi", 1)
			cmds.setAttr (".ei[0]",  int(e1))
			nameCFME2 = cmds.createNode ("curveFromMeshEdge", name = "rivetCurveFromMeshEdge2")
			cmds.setAttr (".ihi", 1)
			cmds.setAttr (".ei[0]",  int(e2))
			
			nameLoft = cmds.createNode( "loft", name = "rivetLoft1")
			cmds.setAttr ( ".ic", size = 2)
			cmds.setAttr (".u", True)
			cmds.setAttr (".rsn", True)
			
			namePOSI = cmds.createNode ("pointOnSurfaceInfo", name = "rivetPointOnSurfaceInfo1")
			cmds.setAttr (".turnOnPercentage", 1)
			cmds.setAttr (".parameterU", 0.5)
			cmds.setAttr (".parameterV", 0.5)
			
			cmds.connectAttr ("{0}.os".format(nameLoft), "{0}.is".format(namePOSI), force = True)
			cmds.connectAttr ("{0}.oc".format(nameCFME1), "{0}.ic[0]".format(nameLoft))
			cmds.connectAttr ("{0}.oc".format(nameCFME2), "{0}.ic[1]".format(nameLoft))
			cmds.connectAttr ("{0}.w".format(nameObject), "{0}.im".format(nameCFME1))
			cmds.connectAttr ("{0}.w".format(nameObject), "{0}.im".format(nameCFME2))

		
		if size < 2:
			

			list = cmds.filterExpand( sm = 41) or [] # Surface Parameter Points 
			size = len(list) 
			
			if size == 1:
				
				parts = list[0].split('.')      
				nameObject = parts[0]
				u = list[0].split('[')[1].split(']')[0]
				v = list[0].split('[')[2].split(']')[0]
				
				namePOSI = cmds.createNode ("pointOnSurfaceInfo", name = "rivetPointOnSurfaceInfo1")
				cmds.setAttr (".turnOnPercentage", 0)
				cmds.setAttr (".parameterU", float(u))
				cmds.setAttr (".parameterV", float(v))
				cmds.connectAttr("{0}.ws".format(nameObject), "{0}.is".format(namePOSI));
				slFlag = 1

			
			list = cmds.filterExpand( sm = 39) or [] # Curve Parameter Points
			size = len(list)
		
			if size == 1:

				parts = list[0].split('.')      
				nameObject = parts[0]
				cPr = list[0].split('[')[1].split(']')[0]
				namePOSI = cmds.pointOnCurve (ch = True)
				slFlag = 1
				cFlag = 1

		
			list = cmds.filterExpand( sm = 45) or [] # Surface Isoparms 
			size = len(list)
		
			if size == 1:
							
				parts = list[0].split('.')      
				nameObject = parts[0]
				namePOSI = cmds.pointOnCurve (ch = True)
				slFlag = 1
				cFlag = 2
		
			list = cmds.filterExpand (sm = 32) or [] # Polygon Edge
			size = len(list)
		
			if (size == 1):
				
				parts = list[0].split('.')      
				nameObject = parts[0]
				namePOSI = cmds.pointOnCurve (ch = True)
				slFlag = 1;
				cFlag = 3;  

			print "Trigger A"
			list = cmds.filterExpand( sm = 31) or [] # Vertex
			print "Trigger B"
			size = len(list)
			print "Trigger C"
			print slctFace


			"""
			if slctFace != None and slctVrtx2!=None:
				print "Trigger D"
				parts = list[0].split('.')      
				print "Trigger E"
				nameObject = parts[0]
				print "Trigger F"
				MTTLocatorName="MTT_LocatorCornerAvrg"+str(locCounter)
				locCounter=locCounter+1

				avrgLoc.append("MTT_LocatorCornerAvrg"+str(locCounter))
				namePOSI = cmds.pointOnCurve (ch = True)
				slFlag=1
				cFlag = 4;  
			"""
			slctVrtx2=0

			if slctFace:
				slctVrtx2=1
				print "Trigger G"
				MTTLocatorName="MTT_LocatorCornerAvrg"+str(locCounter)
				avrgLoc.append("MTT_LocatorCornerAvrg"+str(locCounter))
				locCounter=locCounter+1

			else:
				MTTLocatorName="MTT_Locator"+str(nCounter)
		
			if slFlag == 0:
				cmds.error("MTT: No edges or point selected")
				return ""
			
				cFlag=3
				print "not creating the locator here"


			nameLocator = cmds.createNode ("transform", name = MTTLocatorName)
			cmds.createNode ("locator", name = "{0}Shape".format(nameLocator), parent = nameLocator)
			
			nameAC = cmds.createNode ("aimConstraint", parent = nameLocator, name = "{0}_AimConstraint".format(nameLocator))
			cmds.setAttr (".tg[0].tw", 1)
			cmds.setAttr (".a", 0, 1, 0, type="double3")
			cmds.setAttr (".u", 0, 0, 1, type="double3")
			cmds.setAttr (".v", keyable = False )
			cmds.setAttr (".tx",keyable = False )
			cmds.setAttr (".ty",keyable = False )
			cmds.setAttr (".tz",keyable = False )
			cmds.setAttr (".rx",keyable = False )
			cmds.setAttr (".ry",keyable = False )
			cmds.setAttr (".rz",keyable = False )
			cmds.setAttr (".sx",keyable = False )
			cmds.setAttr (".sy",keyable = False )
			cmds.setAttr (".sz",keyable = False )
			
			if cFlag == 0: # 2 Edges, Surface Point

				cmds.addAttr (nameLocator, longName = "Tangent", attributeType= "enum", enumName = "V:U:")
				cmds.setAttr ("{0}.Tangent".format(nameLocator), edit = True, keyable = True) 
				cmds.addAttr (nameLocator, longName = "parameterU", attributeType = "double")
				cmds.setAttr ("{0}.parameterU".format(nameLocator), edit = True, keyable = True)
				cmds.addAttr (nameLocator, longName = "parameterV", attributeType = "double")
				cmds.setAttr ("{0}.parameterV".format(nameLocator), edit = True, keyable = True) 
				
				nameTDC = cmds.createNode ("condition", name = "{0}_TCondition".format(nameLocator))
				
				cmds.setAttr ("{0}.secondTerm".format(nameTDC), 1)
				cmds.setAttr ("{0}.operation".format(nameTDC), 0)
				
				cmds.connectAttr ("{0}.Tangent".format(nameLocator), "{0}.firstTerm".format(nameTDC), force = True)
				cmds.connectAttr ("{0}.tangentU".format(namePOSI), "{0}.colorIfTrue".format(nameTDC), force = True)
				cmds.connectAttr ("{0}.tangentV".format(namePOSI), "{0}.colorIfFalse".format(nameTDC), force = True)
				
				cPr = cmds.getAttr ("{0}.parameterU".format(namePOSI))
				cmds.setAttr ("{0}.parameterU".format(nameLocator), cPr)
				cmds.connectAttr ("{0}.parameterU".format(nameLocator), "{0}.parameterU".format(namePOSI), force = True)
				cPr = cmds.getAttr ("{0}.parameterV".format(namePOSI))
				cmds.setAttr ("{0}.parameterV".format(nameLocator), cPr)
				cmds.connectAttr ("{0}.parameterV".format(nameLocator), "{0}.parameterV".format(namePOSI), force = True)
				
				cmds.connectAttr ("{0}.position".format(namePOSI), "{0}.translate".format(nameLocator))
				cmds.connectAttr ("{0}.n".format(namePOSI), "{0}.tg[0].tt".format(nameAC))
				
				cmds.connectAttr ("{0}.outColor".format(nameTDC), "{0}.worldUpVector".format(nameAC), force = True)
				
				cmds.setAttr ("{0}.Tangent".format(nameLocator), 1)

			
			
			else: # 1 Edge, Isoparm, Curve Point
				
				cmds.connectAttr ("{0}.position".format(namePOSI), "{0}.translate".format(nameLocator), force = True)
				cmds.connectAttr ("{0}.n".format(namePOSI), "{0}.tg[0].tt".format(nameAC))
				cmds.connectAttr ("{0}.tangent".format(namePOSI), "{0}.worldUpVector".format(nameAC), force = True)
				cmds.addAttr (nameLocator, longName = "parameter", attributeType='double')
				cmds.setAttr ("{0}.parameter".format(nameLocator), edit = True,  keyable = True)
				cmds.connectAttr ("{0}.parameter".format(nameLocator), "{0}.parameter".format(namePOSI), force = True)
				
				if cFlag == 1:
					cmds.setAttr ("{0}.parameter".format(nameLocator), float(cPr))
				if cFlag == 2:
					cmds.setAttr ("{0}.parameter".format(nameLocator), 0)
					
				if cFlag == 3:
					cmds.setAttr ("{0}.parameter".format(nameLocator), 1.5)
					
					if slctVrtx != None or slctVrtx2==1: #if the selection was a vertex
						cmds.setAttr("{0}.parameter".format(nameLocator), 1) #Try putting the locator at one side of the edge corresponding the vertex
						
						if cmds.pointPosition(str1) != cmds.pointPosition(nameLocator): #If that didn't put the locator on the right spot, use the other side of the edge
							cmds.setAttr("{0}.parameter".format(nameLocator), 2)
					
					#if slctFace != None: #if the selection is a face



				cmds.connectAttr ( "{0}.crx".format(nameAC), "{0}.rx".format(nameLocator))
				cmds.connectAttr ( "{0}.cry".format(nameAC), "{0}.ry".format(nameLocator))
				cmds.connectAttr ( "{0}.crz".format(nameAC), "{0}.rz".format(nameLocator))
				
				cmds.select (nameLocator, replace = True)
				return nameLocator  
		
	#This function updates the "Created Motion Trails" list with any previously created motion trails
	def  UpdateCMTList(self, *args):

		nCounter=0
		cmds.select(cl=1)
		try:
			cmds.select('MTT_motionTrail*')
		except ValueError:
			print "There was no previously created MTT_motionTrails"


		motionTrailList=cmds.ls(sl=1)
		motionTrailShapeList=[]

		for i in motionTrailList:
			if "Shape" in i:
				motionTrailShapeList.append(i)

		for i in motionTrailShapeList:
			cleanName=i[:-11]
			cmds.textScrollList(self.Textlist, edit=True, append=[cleanName], uniqueTag=[str(nCounter)])

			LocatorNumber=cleanName[-1]
			LocatorName= "MTT_Locator"+ str(LocatorNumber)
			print "this is the locator name"+str(LocatorName)

			listMTTMT=[]
			listMTTMT.append(LocatorName)

			
			#Trying to find a way to query the last part of the string (which should be the number)
			"""
			def is_number(s):
				try:
					float(s)
					return True
				except ValueError:
					return False

			count=0
			while (is_number(i[:-count])==True):
				count=count+1
				print i[count]
			"""



			global nCounter
			nCounter=nCounter+1
			print "nCounter is " + str(nCounter)

		if motionTrailShapeList:
			print "These are the currently created motion trails " +str(motionTrailShapeList)

	def  cbSelectAllAnimCurves(self, *args):

		maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')

		if cmds.ls(sl=1):
			cmds.warning('MTT: Selected All Animation Curves. Be careful.')
		else:
			cmds.warning('MTT: There are no Animation Curves in this scene')


	def cbGhostPose(self, *args):

		if cmds.ls(sl=1):

			oSel=str(cmds.ls(sl=1)[0]).split("_")[0]

			geometry=[]

			for Geo in cmds.ls(type="geometryShape"):
				if oSel in Geo:
					geometry.append(Geo)

			try:
				cmds.delete("MTT_ghost_grp")
			except ValueError:
				print "The group did not exist"

			cmds.select(geometry, r=1)
			cmds.select(cmds.filterExpand(sm=12), r=1)

			cmds.duplicate(rr=1)

			cmds.group(name="MTT_ghost_grp")
			try:
				cmds.parent("MTT_ghost_grp", "MTT_group")   
			except ValueError:
				cmds.group(empty=1, n="MTT_group")
				cmds.parent("MTT_ghost_grp", "MTT_group")

			cmds.setAttr ("MTT_ghost_grp.overrideEnabled", 1)

			cmds.setAttr ("MTT_ghost_grp.overrideDisplayType", 1)
		else:
			cmds.warning("MTT: Please select part of the rig you want to Ghost")


	def cbKeyframeAll(self, *args):

		onlyForTransform=cmds.checkBox(otaCB, q=1, v=1)
		onlyForTimeline=cmds.checkBox(oftCB, q=1, v=1)

		aSel=cmds.ls(sl=1)
		aAtt=["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]

		if onlyForTimeline==1:

			iCurrentMin=cmds.playbackOptions(query=True, minTime=True)
			iCurrentMax=cmds.playbackOptions(query=True, maxTime=True)

			aKeyframeAll=set(cmds.keyframe(time=(iCurrentMin,iCurrentMax), query=True))

			aKeyframeStep=[]

			for sAtt in aAtt:
				if cmds.keyframe(attribute=sAtt,time=(iCurrentMin,iCurrentMax), query=True):
					aKeyframeStep.extend(cmds.keyframe(attribute=sAtt,time=(iCurrentMin,iCurrentMax), query=True))

			aKeyframeTrans=set(aKeyframeStep)


		if onlyForTimeline==0:

			aKeyframeAll=set(cmds.keyframe(query=True))
			aKeyframeStep=[]

			for sAtt in aAtt:
				if cmds.keyframe(attribute=sAtt, query=True):
					aKeyframeStep.extend(cmds.keyframe(attribute=sAtt, query=True))

			aKeyframeTrans=set(aKeyframeStep)


		#this will set keyframes on all attributes for all selected objects, on all their attributes
		if onlyForTransform==0:
			for vKeyframe in aKeyframeAll:
				for oSel in aSel:
					if cmds.keyframe(oSel, time=(vKeyframe, vKeyframe), query=True):
						pass
						#print "no keyframe created"
					else:                
						cmds.setKeyframe(oSel, time=[vKeyframe], insert=1)

		#this will set keyframes on transform attributes for all selected objects
		if onlyForTransform==1:
			for vKeyframe in aKeyframeTrans:
				for oSel in aSel:
					for sAtt in aAtt:
						if cmds.keyframe(oSel, attribute=sAtt, time=(vKeyframe, vKeyframe), query=True):
							pass
							#print "no keyframe created"
						else:
							cmds.setKeyframe(oSel, attribute=sAtt, time=[vKeyframe], insert=1)


	def cbTransferBake(self, *args):

		Sel1=cmds.ls(sl=1)[0] #From
		Sel2=cmds.ls(sl=1)[1] #To
		aAtt=["translate", "rotate", "tx", "ty", "tz", "rx", "ry", "rz"]

		resetA=cmds.checkBox(rtoaCB, q=1, v=1)
		HighFidelityCBV=cmds.checkBox(HighFidelityCB, q=1, v=1)

		cmds.spaceLocator(n="bakingLocator")

		cmds.parentConstraint(Sel1,"bakingLocator",n="bakeConstraint")


		if HighFidelityCBV==1:
			cmds.bakeResults("bakingLocator", simulation=True, smart=(True, 1.0), minimizeRotation=True,time=(cmds.playbackOptions(query=True, minTime=True),cmds.playbackOptions(query=True, maxTime=True)))
		else:
			cmds.bakeResults("bakingLocator", smart=True, minimizeRotation=True,time=(cmds.playbackOptions(query=True, minTime=True),cmds.playbackOptions(query=True, maxTime=True)))

		cmds.delete("bakeConstraint")

		cmds.parentConstraint("bakingLocator", Sel2, n="bakeConstraint")



		#cmds.cutKey(Sel1, shape=1)

		for sAtt in aAtt:
			sAtt2=str(Sel1)+"."+sAtt
			pymel.disconnectAttr(sAtt2)

		if resetA==1:
			for sAtt in aAtt[2:]:
				sAtt2=str(Sel1)+"."+sAtt
				cmds.setAttr(sAtt2,0)
		else:
			print "Did not reset Transform on A"

		
		if HighFidelityCBV==1:
			cmds.bakeResults(Sel2, simulation=True, smart=(True, 1.0), minimizeRotation=True,time=(cmds.playbackOptions(query=True, minTime=True),cmds.playbackOptions(query=True, maxTime=True)))
		else:
			cmds.bakeResults(Sel2, smart=True, minimizeRotation=True,time=(cmds.playbackOptions(query=True, minTime=True),cmds.playbackOptions(query=True, maxTime=True)))
		
		cmds.delete("bakingLocator")
			
	global i2x
	i2x=0
	global i2y
	i2y=0
	global i2z
	i2z=0

	def cbAnnotate(self, *args):

		global AnnotateCounter
		global i2x
		global i2y
		global i2z
		xlist=[]
		ylist=[]
		zlist=[]


		proceedVar=0
		AnnotateCounter=1
		selected=cmds.ls(sl=1)

		for i in selected:

			if "caHD" in str(i):
				selectionIsCam=1                  
				nameOfAnnotation= "shotCam_"+i.split("_")[1]+"_"+i.split("_")[2][:4]
				
			else:
				selectionIsCam=0
				nameOfAnnotation= str(i)


			if cmds.getAttr(str(i+".translateX")) in xlist and cmds.getAttr(str(i+".translateY")) in ylist and cmds.getAttr(str(i+".translateZ")) in zlist:
				alreadyInList=1
				#Could there be a way to identify if that location is already in use and then name that location with one single name?


			else:
				alreadyInList=0
				
			i2x=cmds.getAttr(str(i+".translateX"))
			xlist.append(cmds.getAttr(str(i+".translateX")))

			i2y=cmds.getAttr(str(i+".translateY"))
			ylist.append(cmds.getAttr(str(i+".translateY")))

			i2z=cmds.getAttr(str(i+".translateZ"))
			zlist.append(cmds.getAttr(str(i+".translateZ")))
			
			ix=i2x+2
			iy=i2y+2
			iz=i2z+2
		  
			while (proceedVar==0):

				if cmds.objExists("annotationLocator"+str(AnnotateCounter)):            
					AnnotateCounter=AnnotateCounter+1

				else:
					proceedVar=1

			cmds.spaceLocator(n="annotationLocator"+str(AnnotateCounter))

			iPosition=cmds.xform(i, q=True, translation=True, ws=True)
			cmds.move(iPosition[0],iPosition[1],iPosition[2], "annotationLocator"+str(AnnotateCounter), ws=1)

			cmds.setAttr(str("annotationLocator"+str(AnnotateCounter)+".visibility"), 0)

			cmds.parent("annotationLocator"+str(AnnotateCounter), i)

			annotationItself=cmds.annotate(i, text=nameOfAnnotation, p=(ix, iy, iz))
			
			if alreadyInList==0:
				cmds.move(iPosition[0]+2, iPosition[1]+2, iPosition[2]+2, annotationItself, ws=1)
			
			if alreadyInList==1:
				cmds.move(iPosition[0]+2+random.random()*1.5, iPosition[1]+2+random.random()*1.5, iPosition[2]+2+random.random()*1.5, annotationItself, ws=1)

			AnnotateCounter=AnnotateCounter+1

		xlist=[]
		ylist=[]
		zlist=[]


	def cbChangeRotateOrder(self, *args):
		aSel=cmds.ls(sl=1)

		rotateOrderVV=cmds.optionMenu(rotateOrderV, q=1, v=1)

		listRotate=["xyz", "yzx", "zxy", "xzy", "yxz", "zyx"]

		ROtoUse=listRotate.index(rotateOrderVV)

		for oSel in aSel:

			if cmds.keyframe(oSel, query=True, keyframeCount=True):
				hadKeys=1
			else:
				hadKeys=0

			cmds.spaceLocator(n="changeRotateLocator")
			rotateAttr="changeRotateLocator."+"rotateOrder"
			cmds.setAttr(rotateAttr, ROtoUse)

			cmds.parentConstraint(oSel, "changeRotateLocator", n="RotateOrderConstraint")

			cmds.bakeResults("changeRotateLocator", smart=True, minimizeRotation=True,time=(cmds.playbackOptions(query=True, minTime=True),cmds.playbackOptions(query=True, maxTime=True)))
			
			oSelAttr=str(oSel)+".rotateOrder"
			cmds.setAttr(oSelAttr, ROtoUse)

			cmds.cutKey(oSel, shape=1)
			cmds.parentConstraint("changeRotateLocator" , oSel, n="RotateOrderConstraint")				

			cmds.bakeResults(oSel, smart=True, minimizeRotation=True,time=(cmds.playbackOptions(query=True, minTime=True),cmds.playbackOptions(query=True, maxTime=True)))
			
			cmds.delete("changeRotateLocator")


			if hadKeys==0:
				print str(oSel)+" had no keys"
				cmds.setKeyframe(oSel)
				cmds.cutKey(oSel, clear=0)
				oSelScale=str(oSel)+".scale"

				try:		
					cmds.setAttr(oSelScale, 1, 1, 1, type="double3")
				except RuntimeError:
					print "attribute non-existing or locked"

				oSelVisibility=str(oSel)+".visibility"

				try:
					cmds.setAttr(oSelVisibility, 1)
				except RuntimeError:
					print "attribute non-existing or locked"

		cmds.select(aSel)

	def cbUseNameToggled(self, *args):
		#print "empty"
		
		wtnCBV=cmds.checkBox(wtnCB, q=1, v=1)
		cmds.textField(wtnTF, edit=True, enable=wtnCBV, text="Specify Namespace (or part)")
		
	def cbChangePadding(self, *args):
		#print "empty"
		
		numberPaddingValue=cmds.optionMenu(numberPaddingList, q=1, v=1)

		nameOutput="seq_322_shot_#"+str(numberPaddingValue)+"#_ex"

		cmds.textField(newNameTF, edit=True, text=nameOutput)
	
	def changeViewMode(self, *args):

		global viewMode
		global defaultMaterial

		print " "

		if viewMode=="AnimationDpMode":
			print "changing view mode to AnimationDpMode"
		if viewMode=="AnimationPbMode":
			print "changing view mode to AnimationPbMode"
		if viewMode=="BeautyPbMode":
			print "changing view mode to BeautyPbMode"

		global lastUsedPanel

		greasePencilTest=cmds.ls("greasePencil*")

		if greasePencilTest!=0:

			defaultMaterial=0

		if greasePencilTest==[]:
			defaultMaterial=1

		if viewMode=="AnimationPbMode" or viewMode=="AnimationDpMode":
			cmds.setAttr('hardwareRenderingGlobals.ssaoEnable', False)
			cmds.setAttr('hardwareRenderingGlobals.lineAAEnable', False)
			cmds.setAttr('hardwareRenderingGlobals.multiSampleEnable', False)

		if viewMode=="BeautyPbMode":

			if len(cmds.ls(type="light")) >0 :
				print "There is light"

			if len(cmds.ls(type="light")) ==0 :
				print "There is no light"
				cmds.directionalLight(n="Light01", i=0.75, rotation=(324.94811, -90, 0))
				cmds.directionalLight(n="Light02", i=0.75, rotation=(144.94811, 30, -180))     
				cmds.directionalLight(n="Light03", i=0.75, rotation=(324.94811, 30, 0))
				cmds.group(n="MTT_Lights", em=1)
				cmds.parent("Light01", "Light02", "Light03", "MTT_Lights")
				
				print "There was light"
				pymel.warning("Created 3 directionalLights to light the scene")

			cmds.select(cl=1)
		   
			#cameralist=cmds.ls(type='camera')		

			cmds.setAttr('hardwareRenderingGlobals.ssaoEnable', True)
			cmds.setAttr('hardwareRenderingGlobals.lineAAEnable', True)
			cmds.setAttr('hardwareRenderingGlobals.bloomEnable', False)
			cmds.setAttr('hardwareRenderingGlobals.multiSampleEnable', True)
			cmds.setAttr('hardwareRenderingGlobals.motionBlurEnable', False) 


		fcvoC=cmds.checkBox(fcvo, q=1, v=1)

		aVisPanel=cmds.getPanel(vis=1)
		aModelPanel=cmds.getPanel(type="modelPanel")

		aPanelSearch=[]

		for oVisPanel in aVisPanel:
			if oVisPanel in aModelPanel:
				aPanelSearch.append(oVisPanel)

		print "aPanelSearch is" +str(aPanelSearch[0])

		if len(aPanelSearch)==1:
			lastUsedPanel=aPanelSearch[0]

		else:
			if lastUsedPanel:
				print "Last Panel is:" +lastUsedPanel

			else:
				lastUsedPanel=cmds.getPanel(wf=1)

				print "Last Panel now is:" +lastUsedPanel

				if "model" in str(lastUsedPanel):
					print "panel is a model panel"
				else:
					cmds.warning("MTT:Please click on a viewport before using that function")
					lastUsedPanel=None
					import sys
					sys.exit()


		useLastUsedPanel=0

		if len(aPanelSearch)==1:		
			self.changeViewport(viewMode, lastUsedPanel)


		if fcvoC==1 and len(aPanelSearch)>1 :
			try:
				self.changeViewport(viewMode, cmds.getPanel(wf=1))

				lastUsedPanel=cmds.getPanel(wf=1)

			except RuntimeError:
				useLastUsedPanel=1

			if useLastUsedPanel==1:
				self.changeViewport(viewMode, lastUsedPanel)

		else :

			for oPanel in aPanelSearch:
				self.changeViewport(viewMode, oPanel)

		if fcvoC==1:
			panelString="Current Viewport display changed to "
		else:
			panelString="All Viewports display changed to "

		if viewMode=="AnimationPbMode":
			print panelString+"Animation Playblast mode"
		if viewMode=="AnimationDpMode":
			print panelString+"Animation Display mode"
		if viewMode=="BeautyPbMode":
			print panelString+"Beauty Playblast mode"
			cmds.warning("MTT: Beauty Playblast mode is graphics heavy and will slow down your playback and playblast speed.")


	def changeViewport(self, viewMode, Panel):

		if viewMode=="AnimationPbMode":
			cmds.modelEditor(Panel,displayAppearance='smoothShaded', rendererName='base_OpenGL_Renderer',edit=True, imagePlane=False,alo=0,pm=1, nc=0,ns=0,cv=0,hu=0, dtx=0,lt=0,dl='default',pv=0,ha=0,m=0,swf=1,gr=0,hud=0,sel=0, motionTrails=False, greasePencils=True, udm=defaultMaterial, wireframeOnShaded=False)
				
		if viewMode=="AnimationDpMode":
			cmds.modelEditor(Panel,displayAppearance='smoothShaded', rendererName='base_OpenGL_Renderer',edit=True, locators=1,  imagePlane=True, alo=0,pm=1, nc=1,ns=1,cv=1,hu=1, dtx=0,lt=1,dl='default',pv=1,ha=1,m=1,swf=1,gr=1,hud=1,sel=1,motionTrails=True, greasePencils=True, udm=defaultMaterial , wireframeOnShaded=False, dim=1)
				
		if viewMode=="BeautyPbMode":
			cmds.modelEditor(Panel,displayAppearance='smoothShaded', rendererName='vp2Renderer',edit=True, imagePlane=False, alo=0,pm=1, nc=0,ns=0,cv=0,hu=0, displayTextures=1,lt=0,dl='all',pv=0,ha=0,m=0,swf=1,gr=0,hud=0,sel=0, motionTrails=False, greasePencils=False,udm=0, wireframeOnShaded=False)
			currentCam =cmds.modelEditor(Panel,q=1,camera=1)
			cmds.camera(str(currentCam),e=1,dof=0)

		if viewMode=="ImagePlaneMode":
			cmds.modelEditor(Panel,displayAppearance='smoothShaded', rendererName='base_OpenGL_Renderer',edit=True, locators=0,  imagePlane=True, alo=0,pm=0, nc=0,ns=0,cv=0,hu=0, dtx=0,lt=0,dl='default',pv=0,ha=0,m=0,swf=0,gr=0,hud=0,sel=0,motionTrails=False, greasePencils=False, udm=defaultMaterial , wireframeOnShaded=False, dim=0)
			

	def cbRename(self, *args):
		
		global originalSelection
		originalSelection=cmds.ls(sl=1)

		global newSelection
		newSelection=[]

		global Number
		Number=1
		
		aSelected=cmds.ls(sl=1)
		global sToReplace
		global newNameString
		global numberPaddingValue

		global maeObjAttr

		newNameString=cmds.textField(newNameTF, query=True, text=True)
		wtnCBV=cmds.checkBox(wtnCB, q=1, v=1)
		wtnTFV=cmds.textField(wtnTF, query=True, text=True)
		numberPaddingValue=cmds.optionMenu(numberPaddingList, q=1,v=1)

		fromCBV=cmds.checkBox(fromCB, q=1, v=1)
		fromTFV=cmds.textField(fromTF, q=1, text=1)
		toTFV=cmds.textField(toTF, q=1, text=1)

		global ToMAX
		global FromMIN
		PaddingJumpValue=0
		indexNumberMIN=0
		indexNumberMAX=0

		if fromCBV:

			for i in range(len(numberPaddingValue)):
				if PaddingJumpValue==0:
					if int(numberPaddingValue[i])>0:
						PaddingJumpValue=pow(10,(len(numberPaddingValue)-(i+1)))


			for i in range(len(numberPaddingValue)):
				if indexNumberMIN==0:
					if int(fromTFV[i])>0:
						indexNumberMIN=i
					 
			for i in range(len(numberPaddingValue)):
				if indexNumberMAX==0:
					if int(toTFV[i])>0:
						indexNumberMAX=i          
								  
			if indexNumberMIN<len(numberPaddingValue):
				FromMIN=int(fromTFV[indexNumberMIN-1:])/PaddingJumpValue

			if indexNumberMAX<len(numberPaddingValue):
				ToMAX=int(toTFV[indexNumberMAX-1:])/PaddingJumpValue
			

		if isinstance(int(newNameString.split("#")[1])/10, int ): #if the padding includes a 0 at the end
			if int(newNameString.split("#")[1])/10!=0:
				Number=int(newNameString.split("#")[1])/10 			  #then translate it's value for "Number" value to function
				initNumber=int(newNameString.split("#")[1])/10
		else:
			Number=int(newNameString.split("#")[1])
			initNumber=int(newNameString.split("#")[1])

		print "maeObjAttr is " +str(maeObjAttr)
		

		if wtnCBV==1:
			try:
				if "*" in wtnTFV[0]:
					wtnTFV=wtnTFV[1:]
				if "*" in wtnTFV[-1]:
					wtnTFV=wtnTFV[:-1]

			except IndexError:
				cmds.warning("MTT: Please specify a name (or part of it) to edit.")
				
				import sys
				sys.exit()


			
		sToReplace="#"+newNameString.split("#")[1]+"#"

		if maeObjAttr=="Namespace":

			cmds.namespace(set=":")
			aNewNameSpace=[]
			aNameSpace=cmds.namespaceInfo(lon=True)

			if fromCBV:

				listToModify=[]
				
				for i in range(FromMIN,ToMAX+1):
					listToModify.append(str(int(i)*PaddingJumpValue).zfill(len(numberPaddingValue)))
				
				for oNameSpace in aNameSpace:
					for oShot in listToModify:
						if oShot in oNameSpace:
							aNewNameSpace.append(oNameSpace)

				aNameSpace=aNewNameSpace

			for oNameSpace in aNameSpace:	

						  #for every Namespace in all the Namespaces
				if Number<=(ToMAX+initNumber):


					if wtnTFV in oNameSpace:
													  #If the "With this name" text field value is in the Namespace			

						if sToReplace==str(int(numberPaddingValue)*Number).zfill(len(numberPaddingValue)):
							maxwhile=1
							while sToReplace!=str(int(numberPaddingValue)*Number).zfill(len(numberPaddingValue)):
								Number=Number+1
								maxwhile=maxwhile+1
								if maxwhile>25:
									break

						newNameSpace=newNameString.replace(sToReplace,str(int(numberPaddingValue)*Number).zfill(len(numberPaddingValue)))		
						
						try:

							cmds.namespace(rename=(oNameSpace,newNameSpace ))

							#print "Trying to rename "+oNameSpace+" to "+str(newNameSpace)

						except RuntimeError:
							print "Namespace was already existing"

					else:
						pass		

					Number=Number+1

			mel.eval("updateNamespaceEditor")

		if maeObjAttr=="selected":  			#if the Object type is "selected"

			for oSelected in aSelected:
				self.renameF(oSelected)

		elif maeObjAttr=="light": 		#if the object type is "light"
										#then creat a list of all the different light types to change their attributes

			cmds.select(cl=1)
			cmds.select(cmds.ls(type="directionalLight"))
			cmds.select(cmds.ls(type="pointLight"), add=1)
			cmds.select(cmds.ls(type="areaLight"), add=1)
			cmds.select(cmds.ls(type="volumeLight"), add=1)
			cmds.select(cmds.ls(type="spotLight"), add=1)
			cmds.select(cmds.ls(type="ambientLight"), add=1)
			aLight=cmds.ls(sl=1)

		
			for oLight in aLight:

				oLightTransform=oLight.split("Shape")[0]+oLight.split("Shape")[1]
				newLightTransformName=newNameString.replace(sToReplace,str(int(numberPaddingValue)*Number).zfill(len(numberPaddingValue)))+"_Shape"
				cmds.rename(oLight,newLightTransformName)
				self.renameF(oLightTransform)

		elif maeObjAttr=="camera":

			listCam=cmds.ls(type="camera")
			listname=["persp", "left", "top", "side", "bottom", "back", "front"]

			for cam in listname:
				try:

					listCam.remove(str(cam)+"Shape")

				except:
					print "there was no camera of that name"
			
			for cam in listCam:

				camTransform=cam.split("Shape")[0]+cam.split("Shape")[1]

				newCamTransformName=newNameString.replace(sToReplace,str(int(numberPaddingValue)*Number).zfill(len(numberPaddingValue)))+"_Shape"
				
				cmds.rename(cam,newCamTransformName)
				self.renameF(camTransform)

		elif maeObjAttr=="Shot":
			cmds.select(cl=1)
			cmds.select(cmds.ls(type="shot"))

			listShot=cmds.ls(sl=1)

			for shot in listShot:
				self.renameF(shot)


		else: #if the object type is any other type

			listOther=cmds.ls(type=str(maeObjAttr))	

			for oOther in listOther:
				self.renameF(oOther)

		#cmds.select(aSelected)
		aSelected=None
		cmds.select(newSelection)

	def renameF(self, toChange):
		print " "
		global ToMAX
		global Number
		global sToReplace
		global newNameString
		global numberPaddingValue
		global newSelection
		print numberPaddingValue

		if Number<=ToMAX:
			definitiveString=newNameString.replace(sToReplace,str(int(numberPaddingValue)*Number).zfill(len(numberPaddingValue)))
			wtnCBV=cmds.checkBox(wtnCB, q=1, v=1)
			wtnTFV=cmds.textField(wtnTF, query=True, text=True)

			if toChange in originalSelection:
				newSelection.append(definitiveString)

			if wtnCBV==1:
				if wtnTFV not in toChange:
					import sys
					sys.exit()

			try:
				cmds.select(toChange)

				if cmds.ls(sl=1, type="shot"):
					iSN=str(toChange)+".shotName"
					cmds.setAttr(iSN, definitiveString ,type="string" )

				cmds.rename(toChange,definitiveString)
				

			except:
				print "failed"
			Number=Number+1

	def cbReplace(self, *args):
		
		global maeObjAttr

		if maeObjAttr=="Namespace":
			print "Replacing string in Namespace"

			replaceXS=cmds.textField(replaceX, query=True, text=True)
			withYS=cmds.textField(withY, query=True, text=True)

			cmds.namespace(set=":")

			aNameSpace=cmds.namespaceInfo(lon=True)

			for oNameSpace in aNameSpace:							  #for every Namespace in all the Namespaces
				
				if replaceXS in oNameSpace:							  #If the "With this name" text field value is in the Namespace			

					try:
						self.replaceFunction(oNameSpace)
					except RuntimeError:
						print "Namespace was already existing"					

			try:
				mel.eval("updateNamespaceEditor") #Update the namespace editor window.
			except:
				print "Namespace window wasn't opened, couldn't update it"

		if maeObjAttr=="selected":

			aSel=cmds.ls(sl=1)
			
			for oSel in aSel:
				self.replaceFunction(oSel)

		if maeObjAttr=="camera":

			listCam=cmds.ls(type="camera")
			listname=["persp", "left", "top", "side", "bottom", "back", "front"]

			for cam in listname:
				try:
					listCam.remove(str(cam)+"Shape")
				except:
					print "there was no camera of that name"
			
			for cam in listCam:
				print "this is cam: "+str(cam)
				camTransform=cam.split("Shape")[0]
				self.replaceFunction(cam)
				self.replaceFunction(camTransform)

		else:
			cmds.warning("MTT: This functionnality only works with Namespace, Selected, and Camera in the 'What to Edit' dropdown menu")


	def replaceFunction(self, oReplace ):
		replaceXS=cmds.textField(replaceX, query=True, text=True)
		withYS=cmds.textField(withY, query=True, text=True)

		try:
			newName=oReplace.split(replaceXS)[0]+str(withYS)+oReplace.split(replaceXS)[1]
		except IndexError:
			newName=oReplace.split(replaceXS)[0]+str(withYS)

		if maeObjAttr== "Namespace":
			cmds.namespace(rename=(oReplace, newName))

		else:
			cmds.rename(oReplace, newName)


	def cbStrongUpButton(self, *args):
		self.changePan(1, 1, 1)

	def cbUpButton(self, *args):
		self.changePan(1, 1, 0)

	def cbDownButton(self, *args):
		self.changePan(1, -1, 0)

	def cbStrongDownButton(self, *args):
		self.changePan(1, -1, 1)

	def cbStrongLeftButton(self, *args):
		self.changePan(0, -1, 1)

	def cbLeftButton(self, *args):
		self.changePan(0, -1, 0)

	def cbRightButton(self, *args):
		self.changePan(0, 1, 0)

	def cbStrongRightButton(self, *args):
		self.changePan(0, 1, 1)

	def cbStrongZoomInButton(self, *args):
		self.changeZoom(-1,1)

	def cbZoomInButton(self, *args):
		self.changeZoom(-1,0)

	def cbZoomOutButton(self, *args):
		self.changeZoom(1,0)

	def cbStrongZoomOutButton(self, *args):
		self.changeZoom(1,1)

	def changePan(self, VH, AS, SN):
		print "empty function as of now"
		#VH= vertical/horiztonal
		#AS= add/substract
		#SN= strong/normal

		if VH==1:
			attributePan="EasyPZCamShape.verticalPan"
		if VH==0:
			attributePan="EasyPZCamShape.horizontalPan"
		
		if SN==1:
			factor=0.05
		if SN==0:
			factor=0.005

		currentValue=cmds.getAttr(attributePan)
		newValue=currentValue+(AS*factor)
		cmds.setAttr(attributePan, newValue)

	def changeZoom(self, AS, SN):
		
		
		if SN==1:
			factor=0.05
		if SN==0:
			factor=0.005

		currentValue=cmds.getAttr("EasyPZCamShape.zoom")
		newValue=currentValue+(AS*factor)
		cmds.setAttr("EasyPZCamShape.zoom", newValue)

	def cbExportAll(self, *args):
		singleFilter = "All Files (*.*)"

		dialog=cmds.fileDialog2(fileMode=2, fileFilter=singleFilter, dialogStyle=2, caption="Choose directory to export to", okc="Export here")

		aSel=cmds.ls(sl=1)

		exportNScbV=cmds.checkBox(exportNScb, q=1, v=1)

		NamespaceStr= cmds.textField(NameSpaceExportTF, query=True, text=True)

		FileTypeValue=cmds.optionMenu(fileTypeMenu, query=True, value=True)

		if FileTypeValue=="mayaAscii":
			fileExtensionStr=".ma"
		if FileTypeValue=="mayaBinary":
			fileExtensionStr=".mb"
		if FileTypeValue=="OBJ":
			fileExtensionStr=".obj"

		fileCount=0

		for oSel in aSel:
			if exportNScbV: 
				filePath2=dialog[0]+"/"+NamespaceStr+str(oSel)+fileExtensionStr
			else:
				filePath2=dialog[0]+"/"+str(oSel)+fileExtensionStr

			cmds.select(oSel,r=1)
			cmds.file(str(filePath2), exportSelected=1, force=1, type=FileTypeValue)
			fileCount=fileCount+1

		if fileCount>1:
			exportMessage="MTT Exported: "+str(fileCount)+" files in folder: "+dialog[0]
		if fileCount==1:
			exportMessage="MTT Exported: "+filePath2

		print exportMessage
		cmds.warning(exportMessage)

		cmds.select(aSel, r=1)

	def changeExportOption(self, *args):

		exportNScbV=cmds.checkBox(exportNScb, q=1, v=1)
		cmds.textField(NameSpaceExportTF, edit=True, enable=exportNScbV, text="Namespace")




	def cbSetHotKeys(self, *args):


		HKwindow = cmds.window( title="Set Hotkeys", iconName='Set Hotkeys', widthHeight=(250, 125) )
		cmds.columnLayout( adjustableColumn=True )
		cmds.button(
			label='Set frame skipping to Arrow Keys',
			command=self.cbSetFrameSkipHotkeys)
		cmds.button(
			label='Set Ctrl+Shift+R to reset channelBox',
			command=self.cbSetResetCBHK)
		cmds.button(
			label='Set all of the above',
			backgroundColor=[0,0.85,0],
			command=self.cbSetAllHK)
		cmds.button(
			label='Reset back to factory settings',
			backgroundColor=[0.85,0.85,0],
			command=self.cbResetHotKeys)
		cmds.button(label='Close',backgroundColor=[0.75,0.75,0.75], command=('cmds.deleteUI(\"'+HKwindow+'\", window=True)'))
		cmds.setParent( '..' )
		cmds.showWindow(HKwindow)



	def cbSetAllHK(self, *args):
		self.cbSetFrameSkipHotkeys
		self.cbSetResetCBHK

	def cbSetFrameSkipHotkeys(self, *args):

		pymel.hotkey(keyShortcut='Right', name='')
		pymel.hotkey(keyShortcut='Right',ctl=1, name='')
		pymel.hotkey(keyShortcut='Left', name='')
		pymel.hotkey(keyShortcut='Left',ctl=1, name='')

		cmds.nameCommand( 'NextFrame', ann='NextFrameHotKey', c="nextOrPreviousFrame next")
		cmds.hotkey( keyShortcut='Right', name='NextFrame' )

		cmds.nameCommand( 'NextKey', ann='NextKeyHotKey', c='currentTime -edit `findKeyframe -timeSlider -which next`' )
		cmds.hotkey( keyShortcut='Right', ctrlModifier=True, name='NextKey' )

		cmds.nameCommand( 'PreviousFrame', ann='PreviousFrameHotKey', c="nextOrPreviousFrame previous")
		cmds.hotkey( keyShortcut='Left', name='PreviousFrame' )

		cmds.nameCommand( 'PreviousKey', ann='PreviousKeyHotKey', c='currentTime -edit `findKeyframe -timeSlider -which previous`' )
		cmds.hotkey( keyShortcut='Left', ctrlModifier=True, name='PreviousKey' )

		print "MTT: Hotkeys for next/previous frame and keyframe have been set to right/left and ctrl+right/ctrl+left"
		cmds.warning("MTT:Hotkeys for next/previous frame and keyframe have been set to right/left and ctrl+right/ctrl+left ")
		
	def cbSetResetCBHK(self, *args):

		commandToreset="for i in cmds.ls(sl=1):	cmds.setAttr(str(i)+'.rotate', 0,0,0);cmds.setAttr(str(i)+'.translate', 0,0,0);cmds.setAttr(str(i)+'.scale', 1,1,1)"

		cmds.nameCommand( 'ResetCB', 
			ann='ResetCBHotKey',
			c="""python("for i in cmds.ls(sl=1):	cmds.setAttr(str(i)+'.rotate', 0,0,0);cmds.setAttr(str(i)+'.translate', 0,0,0);cmds.setAttr(str(i)+'.scale', 1,1,1)")""")
		cmds.hotkey( keyShortcut='R', ctrlModifier=True, name='ResetCB' )



	def cbResetHotKeys(self, *args):
		result =cmds.confirmDialog(
		title='MTT: WARNING',
		message='Would you like to reset hotkeys to factory settings?',
		button=['OK', 'Cancel'],
		defaultButton='OK',
		cancelButton='Cancel',
		dismissString='Cancel')

		if result == 'OK':
			cmds.warning("MTT: Hotkeys were reverted back to factory settings")
			cmds.hotkey(factorySettings=1)
			print "!"
			hotkeySet=0

		if result== 'Cancel':
			cmds.warning("MTT: Hotkeys were unchanged")


	def cbLockCamera(self, *args):

		nfdcV=cmds.checkBox(nfdc, q=1, v=1)

		camList=cmds.ls(type="camera")

		if nfdcV:
			listname=["persp", "left", "top", "side", "bottom", "back"]
			
			for cam in listname:
				try:
					camList.remove(str(cam)+"Shape")
				except:
					print "there is no camera named "+str(cam)+"Shape"

		aAtt=["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]

		for i in camList:
			for oAtt in aAtt:
				attributeTC=str(i)+"."+str(oAtt)
				
				lockedCounter=0
				if cmds.getAttr(attributeTC.replace("Shape", ""),lock=True):
					lockedCounter+=1

				try:
					if lockedCounter:
						cmds.setAttr(attributeTC.replace("Shape",""), lock=False)
					else:
						cmds.setAttr(attributeTC.replace("Shape",""), lock=True)

				except ValueError:
					print "Camera "+str(i)+"Could not be found"
				except RuntimeError:
					print "Camera "+str(i)+" is referenced and cannot be locked/unlocked"

	def cbSnapHealKeys(self, *args):
		#Delete Wacky Keys

		global snapToleranceTF
		snapTolerance=float(cmds.textField(snapToleranceTF, query=True, text=True))

		if snapTolerance>=0.5:
			cmds.textField(snapToleranceTF, edit=True, text="0.4999")
			cmds.error("MTT: Snap tolerence must be between 0 and 0.499")
			

		if snapTolerance<0:
			cmds.textField(snapToleranceTF, edit=True, text="0")
			cmds.error("MTT: Snap tolerence must be between 0 and 0.499")

		usingRange=0
		snapHealWhatV=cmds.optionMenu(snapHealWhat, q=1, v=1)


		if snapHealWhatV=="Selected Playblack Range":

			aPlayBackSliderPython = maya.mel.eval('$tmpVar=$gPlayBackSlider')

			Range=cmds.timeControl(aPlayBackSliderPython, query=True, rng=1)

			RangeNumber=Range.split('"')[1]

			rnA= RangeNumber.split(":")[0]

			rnB= int(RangeNumber.split(":")[1])-1

			usingRange=1

		if snapHealWhatV=="Current Timeline":
			
			rnA=cmds.playbackOptions(query=True, minTime=True)
			rnB=cmds.playbackOptions(query=True, maxTime=True)
			usingRange=1

		if snapHealWhatV=="Selected Shot":

			SFList=[]
			EFList=[]

			selection=cmds.ls(sl=1)
			isShot=cmds.ls(type="shot")
			shotlist=[]
			global shotlist

			for i in isShot:
				if i in selection:
					shotlist.append(i)


			for i in shotlist:
				iSF=i+".startFrame"
				SFList.append(cmds.getAttr(iSF))
				iEF=i+".endFrame"
				EFList.append(cmds.getAttr(iEF))

			rnA=min(SFList)
			rnB=max(EFList)

			usingRange=1
			

		if snapHealWhatV=="All keyframes":
			usingRange=0
		
		cmds.scriptEditorInfo(suppressWarnings=True, suppressInfo=True,suppressErrors=True)

		aSel=cmds.ls(sl=1)
		framesDict={}
		numberProbFrames=[]
		numberProbOjects=[]
		PercentageStart=[]
		PercentageEnd=[]

		cmds.undoInfo(openChunk=1)
		for oSel in aSel:

			if usingRange:
				listKeyframes=cmds.keyframe(oSel, time=(rnA, rnB),  query=True )
				
			else:
				listKeyframes=cmds.keyframe(oSel,  query=True )
				

			if listKeyframes:
				for kf in listKeyframes:
					PercentageStart.append(cmds.keyframe(oSel, time=(kf,kf), query=True, eval=True)[0])
					if kf-int(kf)!=0:
						numberProbFrames.append(kf)
						numberProbOjects.append(oSel)
			else:
				cmds.warning("MTT: No keyframes found")
				pass

			if type(listKeyframes)=="NoneType":
				cmds.warning("MTT: No keyframes found")
				pass

		if len(numberProbFrames)==0:
			cmds.warning("MTT: No problematic frames found on selected object(s)")
			import sys
			sys.exit()	

		else:
			
			probMessage= "there are "+str(len(numberProbFrames))+" problematic frames on "+str(len(set(numberProbOjects)))+" problematic selected objects, fix all?"

			resultDialog=cmds.confirmDialog( title='Confirm', message=probMessage, button=['Yes','No', 'Select Problematic Keys'], defaultButton='Yes', cancelButton='No', dismissString='No' )
			

		if resultDialog=="Select Problematic Keys":

			cmds.selectKey(unsnappedKeys=1)
		
			
			cmds.warning("MTT: Selected problematic keyframes")
			import sys
			sys.exit()	



		if resultDialog=="Yes":

			for oSel in aSel:
				if usingRange:
					listKeyframes=cmds.keyframe(oSel, time=(rnA, rnB),  query=True )

				else:
					listKeyframes=cmds.keyframe(oSel,  query=True )

				"""		
				if type(listKeyframes)=="NoneType":
					cmds.warning("MTT: No keyframes found")
					pass
				"""
				if listKeyframes:
					for kf in listKeyframes:
						if (kf).is_integer():
							pass
						else:
							kfFraction= float(kf)-float(int(kf))

							if kfFraction < snapTolerance or kfFraction >(1 - snapTolerance): #This setting should be controllable by the user
								
								#This line is trying to shut the warning messages we get from the snapKey command, it doesn't seem to work...
								cmds.scriptEditorInfo(suppressWarnings=True, suppressInfo=True,suppressErrors=True)
								

								cmds.snapKey()
								cmds.cutKey(oSel, time=(kf, kf))
								cmds.snapKey()

							else:
								cmds.setKeyframe(time=[float(int(kf-1)), float(int(kf+1))], lw=1, rk=1, insert=1)


							cmds.cutKey( oSel, time=(kf,kf))

			aSel=cmds.ls(sl=1)

			numberProbFrames=[]
			numberProbOjects=[]			

			for oSel in aSel:
				if usingRange:
					listKeyframes=cmds.keyframe(oSel, time=(rnA, rnB),  query=True )

				else:
					listKeyframes=cmds.keyframe(oSel,  query=True )

				if listKeyframes:
					for kf in listKeyframes:
						PercentageEnd.append(cmds.keyframe(oSel, time=(kf,kf), query=True, eval=True)[0])
						if kf-int(kf)!=0:
							numberProbFrames.append(kf)
							numberProbOjects.append(oSel)


			meanStart=sum(PercentageStart)/float(len(PercentageStart))
			meanEnd=sum(PercentageEnd)/float(len(PercentageEnd))			

			percentageChange=abs(meanStart-meanEnd)/meanStart*100
			percentageStr=str(abs(int(percentageChange)))

			if numberProbOjects or numberProbFrames:
				cmds.warning("MTT:Keys changed, Some dirty keys were left in the selected objects' curves")
			else:

				warningMessage="MTT: All keys dealt with "+percentageStr+" %, change"
				cmds.warning(warningMessage)

			cmds.undoInfo(closeChunk=1)

			if percentageChange>10.0:
				#percentageStr=str(percentageChange)[:2]

				probMessage= "Animation keys changed by "+percentageStr+" %, keep changes?"

				resultDialog=cmds.confirmDialog( title='Confirm', message=probMessage, button=['Yes','No'], defaultButton='Yes', cancelButton='No', dismissString='No' )

				if resultDialog=="No":
					cmds.undo()

		else:
			cmds.warning("MTT: Keys left unchanged")


		cmds.scriptEditorInfo(suppressWarnings=False, suppressInfo=False,suppressErrors=False)


	def cbClassify(self, *args):

		pymel.undoInfo(openChunk=True)

		global aAttr
		aAttr=[".tx", ".ty", ".tz", ".rx", ".ry", ".rz", ".sx", ".sy", ".sz"]

		aSel = pymel.selected()
		aCameraTerm=["caStandard", "caK", "camera"]
		aGroupAdd=[]

		if aSel:

			for oSel in aSel:
				if oSel.name().split(":")[0][-2:].isdigit():
					sNamespace = oSel.name().split(":")[0].split("_")[0][2:]+"_grp"+oSel.name().split(":")[0][-2:]
					aGroupAdd.append(sNamespace)
				else:
					sNamespace = oSel.name().split(":")[0].split("_")[0][2:]+"_grp"

				
				for oCameraTerm in aCameraTerm:
					if str(oCameraTerm) in str(oSel):

						if pymel.objExists("Cameras_grp"):
							pymel.parent(oSel, "Cameras_grp")
						else:
							oGrp=pymel.group(em=1, n="Cameras_grp")
							pymel.parent(oSel, "Cameras_grp")

						break

					else:

						if pymel.objExists(sNamespace):
							pymel.parent(oSel, sNamespace)
						else:
							pymel.select(cl=True)

							oGrp = pymel.group(em=1, n=sNamespace)
							pymel.parent(oSel, oGrp)

							for sAttr in aAttr:
								cmds.setAttr(sNamespace + sAttr, l=True, keyable=False, channelBox=False)
						

						AnType=["pp","ps","pr","pa","pf","ev","ve"]
						typeGrpName=["MainCharacter_grp","SecondaryCharacter_grp", "Props_grp", "Animals_grp", "Extras_grp", "Environment_grp", "Vehicules_grp"]

						for nType in AnType:

							if oSel.startswith(nType):
								if pymel.objExists(typeGrpName[AnType.index(nType)]):
									pymel.parent(sNamespace, typeGrpName[AnType.index(nType)])
								else:
									pymel.select(cl=True)
									oGrp=pymel.group(em=1, n=typeGrpName[AnType.index(nType)])
									pymel.parent(sNamespace, oGrp)
									for sAttr in aAttr:
										cmds.setAttr(typeGrpName[AnType.index(nType)]+sAttr, l=True, keyable=False, channelBox=False)

		else:
			pymel.warning("No Selection was made")

		pymel.undoInfo(closeChunk=True)

	global faceCamCounter
	faceCamCounter=0
	global faceWindowList
	faceWindowList=[]
	


	def cbFaceView(self, *args):

		global faceCamCounter
		global faceWindowList

		if cmds.ls("stickyFaceCam*"):

			probMessage="Another Face Cam already exists."
			resultDialog=cmds.confirmDialog( title='Face Cam already existing', message=probMessage, button=['Delete it','Keep it'], defaultButton='Yes', cancelButton='No', dismissString='No' )
		
			if resultDialog=="Delete it":

				cmds.delete(cmds.ls("stickyFace*"))
				faceCamCounter=1
				for oWindow in faceWindowList:

					try:
						cmds.deleteUI(oWindow, window=True)
					except RuntimeError:
						print "window was already closed by user"

				faceWindowList=[]

			if resultDialog=="Keep it":
				faceCamCounter=faceCamCounter+1

		global selectedobjects
		selectedobjects=cmds.ls(sl=1)   
		toShow=[]
		sNameSpace=str(cmds.ls(sl=1)[0]).split(":")[0]+":"
		cmds.select(cl=1)

		aTerm=["brow",
		"mouth",
		"eye",
		"head",
		"tongue",
		"jaw",
		"hat",
		"glasse",
		"moustache",
		"beard",
		"nose",
		"hair",
		"teeth",
		"cheek",
		"lip",
		"face"]

		camName="stickyFaceCam"+str(faceCamCounter)
		grpName="stickyFaceCam_grp"+str(faceCamCounter)
		cstrnName="stickyCam_cstrn"+str(faceCamCounter)

		try:
			windowName="stickyFaceViewWindow"+str(faceCamCounter)
			cmds.window(windowName, title="MTT Face View",width=450, height=450)
		except RuntimeError:
			global faceCamCounter
			faceCamCounter=faceCamCounter+1
			self.cbFaceView()
		

		faceWindowList.append(windowName)


		cameraObj = cmds.camera()
		cmds.rename(cameraObj[0],camName)

		attName="stickyFaceCamShape"+str(faceCamCounter)+".nearClipPlane"
		cmds.setAttr(attName, 0.05)

		cmds.select(camName)
		cmds.group( em=True, n=grpName)

		cmds.parentConstraint(selectedobjects,grpName, name="stickyTemp", sr=["x", "y", "z"])
		cmds.delete("stickyTemp")

		cmds.parent(camName, grpName)

		cmds.select(selectedobjects, r=1)
		cmds.select(grpName, add=1)

		cmds.parentConstraint(mo=0, n=cstrnName)
		cmds.setAttr(str(camName+".translateX"), 0)
		cmds.setAttr(str(camName+".translateY"), 0.15)
		cmds.setAttr(str(camName+".translateZ"), 0.65)

		cmds.paneLayout()
		newPanel=cmds.modelPanel(mbv=0, camera=camName)


		#mel.eval('lookThroughModelPanel ' + 'stickyFaceCam '+ newPanel)

		mel.eval('lookThroughModelPanel ' +camName+" "+ newPanel)

		global defaultMaterial
		defaultMaterial=0
		self.changeViewport("AnimationDpMode", newPanel)
		cmds.showWindow( windowName )
		cmds.select(cl=1)

		
		NamespaceWild=sNameSpace+"*"

		allInNameSpace=cmds.ls(NamespaceWild, type="geometryShape")+cmds.ls(NamespaceWild, type="nurbsCurve")

		toIsolate=[]

		hasFace=0

		aFace=["face", "head"]

		for objInNameSpace in cmds.ls(NamespaceWild, type="mesh"):
			for oFace in aFace:
				if oFace in objInNameSpace:
					hasFace=hasFace+1
					toIsolate.append(objInNameSpace)

		if hasFace:
			print "selected rig has a separate Face Geometry"
		else:
			print "selected rig has no separate Face Geometry, need to show body."


		if hasFace:
			pass
		else:
			aTerm.append("body")

		for objInNameSpace in allInNameSpace:
			for oTerm in aTerm:
				if oTerm in objInNameSpace:
					toIsolate.append(objInNameSpace)
				if str(oTerm).capitalize() in objInNameSpace:
					toIsolate.append(objInNameSpace)

		#for i in toIsolate:
			#print '"'+i+'"'+","

		cmds.select(clear=1)
		cmds.select(toIsolate)		
		cmds.select(hi=1, add=1)
		toIsolate=cmds.ls(sl=1)
		cmds.pickWalk(direction="up")
		toIsolate=cmds.ls(sl=1)

		cmds.isolateSelect(str(newPanel), state=1)

		#animateRoll
		#animateRollFitAll
		cmds.optionVar()
		animateRollFitAllV=cmds.optionVar(q= 'animateRollFitAll' )
		animateRollV=cmds.optionVar(q= 'animateRoll' )
		cmds.optionVar( iv=('animateRollFitAll', 0))
		cmds.optionVar( iv=('animateRoll', 0))
		mel.eval("fitPanel -selected;")
		cmds.optionVar( iv=('animateRollFitAll', animateRollFitAllV))
		cmds.optionVar( iv=('animateRoll', animateRollV))

		if pymel.objExists("MTT_group"):
			cmds.parent(grpName, "MTT_group")
		else:
			cmds.group(em=1, n="MTT_group")
			cmds.parent(grpName, "MTT_group")



	global fromWastoggled
	fromWastoggled=1


	def cbFromToggled(self, *args):
		global fromWastoggled

		if fromWastoggled:
			cmds.textField(fromTF,edit=True,  enable=1)
			cmds.textField(toTF,edit=True, enable=1)
		else:
			cmds.textField(fromTF, edit=True,enable=0)
			cmds.textField(toTF,edit=True, enable=0)

		fromWastoggled=fromWastoggled-1
		if fromWastoggled<0:
			fromWastoggled=1

	global refCamCounter
	refCamCounter=0

	def cbCreateRefCam(self, *args):

		global refCamCounter

		global defaultMaterial
		defaultMaterial=0

		singleFilter = "All Files (*.*)"
		dialog=cmds.fileDialog2(fileMode=1, fileFilter=singleFilter, dialogStyle=2, caption="Pick first frame of image sequence", okc="OK")
		
		camName="MTTRefCam"
		cameraObj = cmds.camera()
		cmds.rename(cameraObj[0],camName)

		try:
			windowName="stickyFaceViewWindow"+str(refCamCounter)
		except RuntimeError:
			windowName="stickyFaceViewWindow"+str(refCamCounter*2+1)

		cmds.window(windowName, title="MTT RefCam",width=450, height=450)
		cmds.paneLayout()
		newPanel=cmds.modelPanel(mbv=0, camera=camName)
		mel.eval('lookThroughModelPanel ' +camName+" "+ newPanel)

		self.changeViewport("ImagePlaneMode", newPanel)
		cmds.showWindow( windowName )

		MTTRefPlane="MTTRefPlane"
		cmds.imagePlane( name=MTTRefPlane, camera=camName, showInAllViews=False, fileName=dialog[0])
		
		cmds.setAttr(MTTRefPlane+"Shape2.useFrameExtension", 1)
		cmds.setAttr(MTTRefPlane+"Shape2.frameOffset", -1000)

		refCamCounter=refCamCounter+1
		
	def cbSwapShots(self, *args):

		textBoxBefore=cmds.textField(self.textboxFrameIncrement, query=True, text=True)

		selection=cmds.ls(sl=1)
		shotList=[]

		isShot=cmds.ls(type="shot")

		for i in isShot:
			if i in selection:
				shotList.append(i)

		#swapping shots in sequencer
		print "Switching "+str(shotList[0])+" with "+str(shotList[1])
		A=shotList[0]
		B=shotList[1]

		#list of shot in alphanumerical order
		isShot=cmds.ls(type="shot")

		#Creating a list of shots in chronological order, since naming conventions often mess up the alphanumerical order
		shotDict={}
		for i in isShot:
			iSF=i+".startFrame"
			shotDict[i] = int(cmds.getAttr(iSF))

		shotOrderedDict=OrderedDict(sorted(shotDict.items(), key=lambda t: t[1]))

		shotOrderedList=[]
		for i in shotOrderedDict:
			shotOrderedList.append(i)
		#chronological list created
			
		#determining which shot of the two specified is the first one
		if cmds.getAttr(A+".startFrame") > cmds.getAttr(B+".startFrame"):
			firstShotStr=B
			secondShotStr=A

		else:
			firstShotStr=A
			secondShotStr=B

		#Getting all the info of the related shots
		firstShotSFStr=firstShotStr+".startFrame"
		firstShotSF=cmds.getAttr(firstShotSFStr)

		firstShotEFStr=firstShotStr+".endFrame"
		firstShotEF=cmds.getAttr(firstShotEFStr)

		firstShotsSFStr=firstShotStr+".sequenceStartFrame"
		firstShotsSF=cmds.getAttr(firstShotsSFStr)

		secondShotSFStr=secondShotStr+".startFrame"
		secondShotSF=cmds.getAttr(secondShotSFStr)

		secondShotEFStr=secondShotStr+".endFrame"
		secondShotEF=cmds.getAttr(secondShotEFStr)

		secondShotsSFStr=secondShotStr+".sequenceStartFrame"
		secondShotsSF=cmds.getAttr(secondShotsSFStr)

		firstShotLenght=firstShotEF-firstShotSF
		secondShotLenght=secondShotEF-secondShotSF


		#Disabling the treatment of adjacent shots as different from other combinations: even though the second operation is heavier, it's more stable.
		absolutelyNope=25941
		#if firstShotEF+1==secondShotSF:
		if absolutelyNope==0:
			print "Shots are adjacent to one another: simple swap"

			#setting first shot on second shot
			cmds.setAttr(firstShotSFStr,int(firstShotSF+secondShotLenght+1))
			cmds.setAttr(firstShotEFStr,int(firstShotSF+secondShotLenght+1+firstShotLenght))
			cmds.setAttr(firstShotsSFStr,int(firstShotSF+secondShotLenght+1))

			#setting second shot on first shot
			cmds.setAttr(secondShotSFStr,firstShotSF)
			cmds.setAttr(secondShotEFStr,int(firstShotSF+secondShotLenght))
			cmds.setAttr(secondShotsSFStr,firstShotsSF)

			cmds.select(cl=1)
			maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')

			#cut the keys of the second shot
			cmds.cutKey(time=(secondShotSF,secondShotEF))
			#move the keyframes of the first shot onto the second shot
			cmds.keyframe(edit=True,relative=True,timeChange=int(secondShotLenght),time=(firstShotSF, firstShotEF))
			#paste the keys of the second shot onto the first shot
			cmds.pasteKey(time=(int(firstShotSF+1),int(firstShotSF+1)),option="merge")

		else:
			print "shots are not adjacent: must reorder cam sequencer"

			cmds.select(clear=1)

			#enlarging first space
			#selecting all shots after first shot
			for i in range(int(shotOrderedList.index(firstShotStr)+1), len(shotOrderedList)):
				cmds.select(shotOrderedList[i],add=1)
			#then move all those shots to the right the same number of frames as the lenght of the second shot
			global timeDirection
			timeDirection=1
			cmds.textField(self.textboxFrameIncrement, edit=True, text=str(int(secondShotLenght+1)))
			self.cbMoveKeys()

			cmds.select(clear=1)

			#enlarging second space
			#selecting all shots after second shot
			for i in range(int(shotOrderedList.index(secondShotStr)+1), len(shotOrderedList)):
				cmds.select(shotOrderedList[i],add=1)
			#then move all those shots to the right the same number of frames as the lenght of the first shot
			global timeDirection
			timeDirection=1
			cmds.textField(self.textboxFrameIncrement, edit=True, text=str(int(firstShotLenght+1)))
			self.cbMoveKeys()

			#after moving the shots around, we must redefine their new frames position
			firstShotSFStr=firstShotStr+".startFrame"
			firstShotSF=cmds.getAttr(firstShotSFStr)

			firstShotEFStr=firstShotStr+".endFrame"
			firstShotEF=cmds.getAttr(firstShotEFStr)

			firstShotsSFStr=firstShotStr+".sequenceStartFrame"
			firstShotsSF=cmds.getAttr(firstShotsSFStr)

			secondShotSFStr=secondShotStr+".startFrame"
			secondShotSF=cmds.getAttr(secondShotSFStr)

			secondShotEFStr=secondShotStr+".endFrame"
			secondShotEF=cmds.getAttr(secondShotEFStr)

			secondShotsSFStr=secondShotStr+".sequenceStartFrame"
			secondShotsSF=cmds.getAttr(secondShotsSFStr)

			#Cuting all keys of the first shot in the gap to the right of the second shot
			cmds.select(cl=1)
			maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')
			cmds.cutKey(time=(firstShotSF,firstShotEF))
			try:
				cmds.pasteKey(time=(int(secondShotEF+1),int(secondShotEF+1)),option="merge")
			except RuntimeError:
				print "there were no keys in the shot"
				pass

			#Cuting all keys of the second shot in the gap to the right of the first shot
			cmds.select(cl=1)
			maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')
			cmds.cutKey(time=(secondShotSF,secondShotEF))
			try:
				cmds.pasteKey(time=(int(firstShotEF+1),int(firstShotEF+1)),option="merge")
			except RuntimeError:
				print "there were no keys in the shot"
				pass

			#setting first shot on gap to the right of the second shot
			cmds.setAttr(firstShotSFStr,int(secondShotEF+1))
			cmds.setAttr(firstShotEFStr,int(secondShotEF+firstShotLenght+1))
			cmds.setAttr(firstShotsSFStr,int(secondShotEF+1))

			#setting second shot on gap to the right of the first shot
			cmds.setAttr(secondShotSFStr,int(firstShotEF+1))
			cmds.setAttr(secondShotEFStr,int(firstShotEF+secondShotLenght+1))
			cmds.setAttr(secondShotsSFStr,int(firstShotEF+1))

			cmds.select(clear=1)

			#recreating the list of shots in chronological order, since it has now changed
			#list of shot in alphanumerical order
			isShot=cmds.ls(type="shot")

			#Creating a list of shots in chronological order, since naming conventions often mess up the alphanumerical order
			shotDict={}
			for i in isShot:
				iSF=i+".startFrame"
				shotDict[i] = int(cmds.getAttr(iSF))

			shotOrderedDict=OrderedDict(sorted(shotDict.items(), key=lambda t: t[1]))

			shotOrderedList=[]
			for i in shotOrderedDict:
				shotOrderedList.append(i)
			#chronological list created

			#closing the gap to the left of pasted second shot
			#selecting all shots to the right of second shot (in it's new emplacement)
			cmds.select(clear=1)
			for i in range(int(shotOrderedList.index(secondShotStr)), len(shotOrderedList)):
				cmds.select(shotOrderedList[i],add=1)
			#moving all shots the lenght of the first shot to the left
			global timeDirection
			timeDirection=-1
			cmds.textField(self.textboxFrameIncrement, edit=True, text=str(int(firstShotLenght+1)))
			self.cbMoveKeys()

			#closing the gap to the left of pasted first shot
			#selecting all shots to the right of first shot (in it's new emplacement)
			cmds.select(clear=1)
			for i in range(int(shotOrderedList.index(firstShotStr)), len(shotOrderedList)):
				cmds.select(shotOrderedList[i],add=1)
			#moving all shots the lenght of the first shot to the left
			global timeDirection
			timeDirection=-1
			cmds.textField(self.textboxFrameIncrement, edit=True, text=str(int(secondShotLenght+1)))
			self.cbMoveKeys()						

		cmds.textField(self.textboxFrameIncrement, edit=True, text=str(textBoxBefore))



		global swapNameSpacesCB
		swapNameSpacesCBV=cmds.checkBox(swapNameSpacesCB, q=1, v=1)

		if swapNameSpacesCBV:
			cmds.namespace(set=":")
			aNameSpace=cmds.namespaceInfo(lon=True)

			firstShotCam=cmds.shot(firstShotStr, currentCamera=1, q=1)	
			secondShotCam=cmds.shot(secondShotStr, currentCamera=1, q=1)

			cmds.select(firstShotCam, r=1)
			firstShotNS=str(pymel.selected()[0].namespace()[:-1])

			cmds.select(secondShotCam, r=1)
			secondShotNS=str(pymel.selected()[0].namespace()[:-1])


			cmds.namespace(rename=(firstShotNS,"firstShot"))
			cmds.namespace(rename=(secondShotNS,firstShotNS))
			cmds.namespace(rename=("firstShot",secondShotNS))

		shotsAreLocked=0
		for i in isShot:
			itrack=i+".track"
			iSN=i+".shotName"

			cmds.setAttr(itrack, 1)

			currentCam=cmds.shot(i, currentCamera=1, q=1)
			
			try:
				camName=currentCam.split(":")[0]
			except IndexError:
				camName=str(currentcamera)
			
			cmds.setAttr(iSN,"shot_"+camName,type="string" )
			try:
				cmds.rename(i, "shot_"+camName)
			except RuntimeError:
				shotsAreLocked=shotsAreLocked+1
				pass

		if shotsAreLocked:
			cmds.warning("MTT: Could not rename shots because they are locked.")

		
		cmds.select(clear=1)


	global shotCount
	shotCount=0

	def cbCreateShot(self, *args):
		global shotCount
		shotList=cmds.ls(type="shot")
		#what is the latest frame of the latest shot?

		if len(shotList)>0:
			EFList=[]
			for i in shotList: 
				iEF=i+".endFrame"
				EFList.append(cmds.getAttr(iEF))

			shotCount=len(shotList)
			shotStartTime=max(EFList)+1
		else:
			shotStartTime=1
		
		shotProperNumber=str(int(shotCount+1)*10).zfill(4)
		global NameSpaceTF
		NameSpaceTFV= cmds.textField(NameSpaceTF, query=True, text=True) 
		newNamespace=NameSpaceTFV+str(shotProperNumber)

		newShotName="shot_"+newNamespace
		cmds.namespace(add=newNamespace)
		cmds.namespace(set=newNamespace)

		shotCamera="cam"
		cameraObj = cmds.camera()
		cmds.rename(cameraObj[0],shotCamera)

		shotlenght=int(23)
		global cameraRigOM
		cameraRigOMV=cmds.optionMenu(cameraRigOM, query=True, value=True)

		camName=newNamespace+":"+shotCamera
		cmds.setAttr(camName+".rotateOrder", int(2))
		if cameraRigOMV=="Simple":
			shotCameraCtrl=cmds.spaceLocator(n="ctrl")
			cmds.setAttr(shotCameraCtrl[0]+".rotateOrder",int(2))
			cmds.parent(camName,shotCameraCtrl)	

		if cameraRigOMV=="No rig (just camera)":
			print "no camera rig setup"

		cmds.namespace( set=':' )
		cmds.shot(newShotName, shotName=newShotName,startTime=shotStartTime, endTime=shotStartTime+shotlenght, sequenceStartTime=shotStartTime, sequenceEndTime=shotStartTime+shotlenght)
		
		global filmStandardOM
		filmStandardOMV=cmds.optionMenu(filmStandardOM, query=True, value=True)

		
		if filmStandardOMV=="Full HD1080":
			horizontalFilmApertureV=.825
			verticalFilmApertureV=.446
			imageResolution=[1920,1080]

		if filmStandardOMV=="Full 1024":
			horizontalFilmApertureV=1.417
			verticalFilmApertureV=0.945
			imageResolution=[1024,768]

		else:
			cmds.error("MTT: Chosen film Standard not available yet, please choose another")
			import sys
			sys.exit()		

		cmds.setAttr(newShotName+".wResolution", imageResolution[0])
		cmds.setAttr(newShotName+".hResolution", imageResolution[1])
		cmds.setAttr(camName+".renderable", 1)
		cmds.setAttr(camName+".horizontalFilmAperture",horizontalFilmApertureV)
		cmds.setAttr(camName+".verticalFilmAperture",verticalFilmApertureV)

		#mel.eval('switchShotCamera("shot_caStandard_Seq_0010", "caStandard_Seq_0010:cam")')

		mel.eval('switchShotCamera("'+newShotName+'","'+camName+'")')	


	def CCoffsetBackCB(self, *args):
		if cmds.checkBox(offsetBackCB, query=1, value=1):
			cmds.textField(offsetBackTF, edit=1, enable=1)
		else:
			cmds.textField(offsetBackTF, edit=1, enable=0)

	def cbRefreshSL(self, *args):

		for item in cmds.optionMenu(shotFromOM, q=True, ill=True) or []:
			cmds.deleteUI(item)
		for item in cmds.optionMenu(shotToOM, q=True, ill=True) or []:
			cmds.deleteUI(item)

		isShot=cmds.ls(type="shot")
		shotDict={}
		for i in isShot:
			iSF=i+".startFrame"
			shotDict[i] = int(cmds.getAttr(iSF))

		shotOrderedDict=OrderedDict(sorted(shotDict.items(), key=lambda t: t[1]))

		cmds.menuItem(label="Start of timeline",parent=shotFromOM)
		for i in shotOrderedDict:
			cmds.menuItem(label=i, parent=shotFromOM)

		cmds.menuItem(label="End of timeline",parent=shotToOM)
		for i in shotOrderedDict:
			cmds.menuItem(label=i, parent=shotToOM)

	def cbSplitIntoShot(self, *args):

		timeLineStartF=cmds.playbackOptions(query=True, minTime=True)
		timeLineEndF=cmds.playbackOptions(query=True, maxTime=True)

		usingShot=1
		usingStart=0
		usingEnd=0

		shotsToKeep=[]

		isShot=cmds.ls(type="shot")

		shotDict={}

		for i in isShot:
			iSF=i+".startFrame"
			shotDict[i] = int(cmds.getAttr(iSF))

		shotOrderedDict=OrderedDict(sorted(shotDict.items(), key=lambda t: t[1]))
		shotselected=0			
		for i in cmds.ls(sl=1):
			if i in isShot:				
				shotselected=1

		shotFromV=cmds.optionMenu(shotFromOM, query=1, value=1)
		shotToV=cmds.optionMenu(shotToOM, query=1, value=1)

		shotOrderedList=[]
		for i in shotOrderedDict:
			shotOrderedList.append(i)

		if shotFromV=="Start of timeline":
			usingStart=1

		if shotToV=="End of timeline":
			usingEnd=1

		if usingStart:
			shotsToKeep.append(shotToV)
		if usingEnd:
			shotsToKeep.append(shotFromV)
		if usingEnd and usingStart:
			usingShot=0

		if usingShot:
			for i in range(int(shotOrderedList.index(shotFromV)),int(shotOrderedList.index(shotToV)+1)):
				shotsToKeep.append(shotOrderedList[i])

		if shotselected:
			resultDialog=cmds.confirmDialog( title='Which shots to keep?', message="Please choose which shots to keep:", button=['Shots via MTT dropdown menu','Currently selected shots', 'Cancel'], defaultButton='Yes', cancelButton='Cancel', dismissString='Cancel' )

			if resultDialog=="Shot via MTT dropdown menu":
				print "shots to keep arleady uses MTT menu's values."

			if resultDialog=="Currently selected shots":
				print "shots to keep defined as selected shots."
				shotsToKeep=[]
				for i in cmds.ls(type="shot"):
					if i in cmds.ls(sl=1):
						shotsToKeep.append(i)

			if resultDialog=="Cancel":
				import sys
				sys.exit()

		cmds.select(cl=1)
		
		if usingShot:
			for i in shotsToKeep:
				isShot.remove(i)

		cmds.select(isShot)

		#Key everything from the begginning and end of the shots to keep

		SFList=[]
		EFList=[]

		if usingShot:
			for i in shotsToKeep: 
				iSF=i+".startFrame"
				SFList.append(cmds.getAttr(iSF))
				iEF=i+".endFrame"
				EFList.append(cmds.getAttr(iEF))

		maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')
		
		if usingStart==1:
			minimalFrame=timeLineStartF
		elif usingShot:
			minimalFrame=min(SFList)

		if usingEnd==1:
			maximalFrame=timeLineEndF
		elif usingShot:
			maximalFrame=max(EFList)

		cmds.setKeyframe(time=[minimalFrame], insert=1)
		cmds.setKeyframe(time=[maximalFrame], insert=1)


		#Then destroy shots
		cmds.select(isShot)
		self.cbDestroyShot()

		#And cut any keys outside of that region
		cmds.select(cl=1)
		maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')
		listKeyframes=cmds.keyframe(query=True)

		lowerShotLimit=int(minimalFrame)-1
		upperShotLimit=int(maximalFrame)+1

		cmds.cutKey(time=(min(listKeyframes), lowerShotLimit), clear=1)
		cmds.cutKey(time=(upperShotLimit, max(listKeyframes)), clear=1)

		if cmds.checkBox(offsetBackCB, query=1, value=1):

			startPoint=cmds.textField(offsetBackTF, q=1, text=1)
			offsetFrames=int(minimalFrame)-int(startPoint)
			global timeDirection

			if offsetFrames>0:
				timeDirection=-1
				print "timeDirection set to -1, going left"
			if offsetFrames<0:
				timeDirection=1
				print "timeDirection set to +1, going right"

			cmds.textField(self.textboxFrameIncrement, edit=True, text=str(offsetFrames))
			
			#If really using only shots, move keys as standard
			if usingShot:
				cmds.select(shotsToKeep)
				self.cbMoveKeys()

			#If using timeline endframe and startframe, we need to do a custom operation since we don't know if there are shots involved or not.
			else:
				cmds.select(cl=1)
				maya.mel.eval('select `ls -typ "animCurveTL" -typ "animCurveTU" -typ "animCurveTA" -typ "animCurveTT"`')
				timeChangeV=abs(offsetFrames)*timeDirection
				print timeChangeV
				cmds.keyframe(edit=True,relative=True,timeChange=timeChangeV,time=(minimalFrame, maximalFrame))
				
				if usingShot:
					for i in shotsToKeep:

						iSF=i+".startFrame"
						currentiSF=cmds.getAttr(iSF)
						cmds.setAttr(iSF,int(currentiSF+timeOffset))

						iEF=i+".endFrame"
						currentiEF=cmds.getAttr(iEF)
						cmds.setAttr(iEF,int(currentiEF+timeOffset))

						isSF=i+".sequenceStartFrame"
						currentisSF=cmds.getAttr(isSF)
						cmds.setAttr(isSF,int(currentisSF+timeOffset))

						itrack=i+".track"
						cmds.setAttr(itrack, 1)



	#=====================Définition des fonctions (Fin)=================================================================================== 
 
# instanciation de la fenêtre 
tool = MotionTrailTool()

# initialisation et affichage de la fenêtre
tool.showUI()


cmds.select(OverAllSelection)

#MTT TOOL FINAL LINE
