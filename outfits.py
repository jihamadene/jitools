import maya.cmds as cmds
import pymel.core as pm

#lists:
garbageliste=['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_eyeBrow_r', 'geom_eye_l','geom_eyeHighlight_l', 'geom_eyeHighlight_r']

outfitdict={
'ville_nocoat':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_hair', 'geom_eye_l', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_shirtBlouse', 'geom_blouse_02', 'geom_arms'],
'ville':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_hair', 'geom_eye_l', 'geom_coat', 'geom_shirt_02', 'geom_blouse', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_hands'],
'ville_nocoatbackpack':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_arms', 'geom_eyeBrow_l', 'geom_hair', 'geom_eye_l', 'geom_shirtBlouse', 'geom_blouse_02', 'grp_backpack'],
'montagne_nohatnogloves':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_jacket', 'geom_hair', 'geom_shirt_01', 'geom_eye_l', 'geom_hands'],
'montagne_googleface':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_jacket', 'geom_shirt_01', 'geom_eye_l', 'geom_helmetPosed', 'geom_hairPosed_02', 'geom_glass_02', 'geom_goggles_02', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_gloves'],
'montagne_backpack':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_pants', 'geom_gloves', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_jacket', 'geom_shirt_01', 'geom_eye_l', 'geom_helmet', 'geom_goggles_01', 'geom_glass_01', 'geom_hairPosed_01'],
'montagne_nogloves':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_jacket', 'geom_shirt_01', 'geom_eye_l', 'geom_helmet', 'geom_goggles_01', 'geom_glass_01', 'geom_hairPosed_01', 'geom_hands'],
'montagne_nohat':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_jacket', 'geom_hair', 'geom_shirt_01', 'geom_eye_l', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_gloves'],
'montagne':['geom_hairPosed_01', 'geom_helmet', 'geom_eye_l', 'geom_shirt_01', 'geom_jacket', 'geom_eyeBrow_l', 'geom_tongue', 'geom_teeth_d', 'geom_teeth_u', 'geom_pants', 'geom_eyeLash_r', 'geom_eyeLash_l', 'geom_head', 'geom_boots', 'geom_eye_r', 'geom_goggles_01', 'geom_glass_01', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_gloves'],
'ville_backpack':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_hair', 'geom_hands', 'geom_eye_l', 'geom_coat', 'geom_shirt_02', 'geom_blouse', 'grp_backpack'],
'ville':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_hair', 'geom_eye_l', 'geom_coat', 'geom_shirt_02', 'geom_blouse', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_hands'],
'montagne_nohatnogloves':['geom_eye_r', 'geom_boots', 'geom_head', 'geom_eyeLash_l', 'geom_eyeLash_r', 'geom_eyeBrow_r', 'geom_eyeHighlight_l', 'geom_eyeHighlight_r', 'geom_pants', 'geom_teeth_u', 'geom_teeth_d', 'geom_tongue', 'geom_eyeBrow_l', 'geom_jacket', 'geom_hair', 'geom_shirt_01', 'geom_eye_l', 'geom_hands'],
}
switchingitems=[]
outfitlist=[]
outfitstring=None

for each in outfitdict:
    outfitlist.append(each)
    if not outfitstring:
        outfitstring=each+':'
    else:
        outfitstring=str(outfitstring)+each+':'


for each in outfitlist:
    eachlist=outfitdict[each]
    for item in garbageliste:
        try:
            eachlist.remove(item)
        except ValueError:
           continue
    for everyone in eachlist:
       if everyone in switchingitems:
           continue
       else:
           switchingitems.insert(-1,everyone)

for item in switchingitems:
    plusmin = cmds.shadingNode('plusMinusAverage',name=item+'_sum_visi', asUtility=1)
    condi = cmds.shadingNode('condition',name=item+'_cond_visi', asUtility=1)
    cmds.connectAttr(plusmin+'.output1D',condi+'.firstTerm')
    cmds.connectAttr(condi+'.outColor.outColorR',item+'.visibility')
    cmds.connectAttr(condi+'.outColor.outColorG',item+'.template')
    cmds.setAttr(condi+'.operation',2)
    cmds.setAttr(condi+'.colorIfFalseR',0)
    cmds.setAttr(condi+'.colorIfTrueR',1)

cmds.addAttr('ctrl_cog',ln="outfit", at="enum", en=outfitstring)
setAttr ('ctrl_cog.outfit',e=1,channelBox=1)

for each in outfitlist:
    condi = cmds.shadingNode('condition',name=each+'_cond', asUtility=1)
    cmds.connectAttr('ctrl_cog.outfit',condi+'.firstTerm')
    cmds.setAttr(condi+'.secondTerm',outfitlist.index(each))
    cmds.setAttr(condi+'.colorIfFalseR',0)
    cmds.setAttr(condi+'.colorIfTrueR',1)

for each in outfitlist:
    eachlist=outfitdict[each]
    for item in garbageliste:
        try:
            eachlist.remove(item)
        except ValueError:
            continue
    myrange=len(eachlist)
    for item in xrange(0,myrange):
        elem=pm.PyNode(eachlist[item]+'_sum_visi')
        myiter = str(len(elem.inputs(p=True)))
        cmds.connectAttr(each+'_cond.outColorR',elem+'.input1D['+myiter+']',f=1)