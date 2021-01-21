def randAttr(_obj):
    #rotate objects around Y change here if you want other axises
    rN = rand.uniform(-90,90)
    rM = rand.uniform(-30,30)
    rB = rand.uniform(-30,30)
    rS = rand.uniform(.3,1)
    rD = rand.uniform(.3,1.4)
    rF = rand.uniform(.3,1)
    _obj.rotate.set(rB,rN,rM)
    _obj.scale.set(rS,rD,rF)


oObj = pymel.selected()[-1]
aFoll = pymel.selected()[:-1]
for oFoll in aFoll:
    oDupObj = oObj.duplicate()[0]
    randAttr(oDupObj)
    pymel.parent(oDupObj, oFoll)
    oDupObj.setTranslation(0)
