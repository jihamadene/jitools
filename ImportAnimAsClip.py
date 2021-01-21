import maya.cmds as mc
AllAnimList=[]
projpath="C:\ilgk-rogueracers\Assets\Tokkun\Characters\\"
Charlist=[
    # 'Brooke',
# 'Calum',
'Delphine',
# 'Gin',
# 'Joshua',
# 'Sophia'
] 
for char in Charlist:
    print char
    animlist=os.listdir(projpath+char+"\Animation\\")
    print animlist
    for eachanim in animlist:
        if "meta" not in eachanim:
            AllAnimList.append(eachanim)


for each in AllAnimList:
    # char=each.split('@')[0]
    anim=(each.split('@')[1]).strip(".fbx")
    mc.file(new=1,f=1)
    mc.file(projpath+char+'\Animation\\'+ each,i=1,ifr=1,itr='override')
    mc.select("Root",hi=1)
    mc.character(n=char)
    animclip=mc.clip( char, acr=1, n=anim )[0]
    mc.select(animclip)
    melcmd='clipEditorExportClip("C:/Users/Ji/Desktop/RogueRacers/AnimationClips/'+char+'@'+anim+ '","ma")'
    mel.eval(melcmd)
    # mc.file("C:\Users\Ji\Desktop\RogueRacers\\"+  char + ".ma" ,i=1,ifr=1,itr='override') 
    
            
            
 
    
    



# for eachfile in animlist:
#     mc.file(new=1,f=1)
#     mc.file("C:\ilgk-rogueracers\Assets\Tokkun\Characters\Calum\Animation"+'/'+eachfile,i=1,ifr=1,itr='override' 

