#--save and set presets--------------------------------------------------------------------
import pymel.core as pm
def get_preset_value(obj):
    obj = pm.PyNode(obj)
    oDict = {}
    all = obj.listAttr(k=True, m=True)
    for each in all:
        oDict[(".").join(each.name().split(".")[1:])] = each.get()
    print oDict


def set_preset_value(odict, name=None):
    if len(odict) != 0:
        if name is not None:
            for key, value in odict.iteritems():
                if isinstance(value, int) or isinstance(value, float) or isinstance(value, bool):
                    key = pm.PyNode(name + "." + key)
                    if not len(key.inputs()) != 0:
                        key.set(value, f=True)
        print True
    else:
        print False


# get_preset_value(pm.selected()[0])

##Simon Hair
odict = {u'clumpFlatness[0].clumpFlatness_Position': 0.0, u'displayColorR': 1.0, u'friction': 0.5, u'hairWidthScale[0].hairWidthScale_FloatValue': 1.0, u'hairsPerClump': 1, u'hairWidthScale[1].hairWidthScale_Position': 1.0, u'stiffnessScale[0]': (0.0, 1.0, 1.0), u'clumpCurl[0].clumpCurl_FloatValue': 0.5, u'collideGround': False, u'playFromCache': True, u'collisionFlag': 2, u'numCollideNeighbors': 4, u'currentTime': 1298.0, u'clumpWidthScale[0].clumpWidthScale_Interp': 3, u'clumpWidthScale[1].clumpWidthScale_Interp': 3, u'selfCollisionFlag': 2, u'displayColorG': 0.800000011920929, u'hairWidthScale[0]': (0.800000011920929, 1.0, 1.0), u'specularColorR': 0.3499999940395355, u'subSegments': 0, u'collide': True, u'interpolationRange': 8.0, u'specularColorB': 0.30000001192092896, u'castShadows': True, u'specularColorG': 0.3499999940395355, u'ignoreSolverWind': False, u'specularPower': 3.0, u'displayColorB': 0.0, u'subClumpMethod': 0, u'disableFollicleAnim': False, u'hairWidthScale[1].hairWidthScale_Interp': 1, u'widthDrawSkip': 2, u'lightEachHair': False, u'clumpWidthScale[1].clumpWidthScale_Position': 1.0, u'clumpInterpolation': 0.0, u'drawCollideWidth': False, u'curlFrequency': 10.0, u'specularRand': 0.4, u'stiffnessScale[0].stiffnessScale_Interp': 1, u'bendAnisotropy': 0.0, u'turbulenceFrequency': 0.2, u'ignoreSolverGravity': False, u'clumpCurl[0].clumpCurl_Interp': 1, u'turbulenceStrength': 0.0, u'selfCollide': False, u'clumpWidthScale[0]': (0.0, 1.0, 3.0), u'clumpFlatness[0].clumpFlatness_FloatValue': 0.0, u'noiseFrequency': 0.4, u'usePre70ForceIntensity': False, u'numVClumps': 15.0, u'hairColorScale[0].hairColorScale_Interp': 1, u'extraBendLinks': 0, u'displacementScale[0].displacementScale_Position': 0.0, u'clumpTwist': 0.0, u'noiseMethod': 0, u'hairWidth': 0.01, u'collideStrength': 1.0, u'noise': 0.0, u'dynamicsWeight': 1.0, u'hairWidthScale[0].hairWidthScale_Interp': 1, u'stiffnessScale[0].stiffnessScale_Position': 0.0, u'bendFollow': 1.0, u'displacementScale[0].displacementScale_Interp': 1, u'compressionResistance': 100.0, u'restLengthScale': 1.0, u'twistResistance': 0.0, u'staticCling': 0.0, u'startFrame': 980.0, u'multiStreaks': 0, u'baldnessMap': 1.0, u'groundHeight': 0.0, u'subClumpRand': 0.0, u'hairColorR': 0.30000001192092896, u'clumpWidthScale[0].clumpWidthScale_FloatValue': 1.0, u'turbulenceSpeed': 0.2, u'repulsion': 0.5, u'startCurveAttract': 3.5, u'stiffness': 0.05, u'hairColorScale[1].hairColorScale_Interp': 1, u'hairColorB': 0.15000000596046448, u'diffuseRand': 0.2, u'subClumping': 0.0, u'hairColorG': 0.25, u'stiffnessScale[0].stiffnessScale_FloatValue': 1.0, u'hairColorScale[0]': [0.0, (0.5, 0.5, 0.5), 1], u'noStretch': False, u'detailNoise': 0.0, u'iterations': 4, u'collideWidthOffset': 0.0, u'damp': 4.0, u'hairColorScale[1].hairColorScale_Color': (0.800000011920929, 0.800000011920929, 0.800000011920929), u'translucence': 0.5, u'maxSelfCollisionIterations': 1, u'bendResistance': 3.0, u'stretchResistance': 100.0, u'lengthFlex': 0.0, u'hairColorScale[2]': [1.0, (1.0, 1.0, 1.0), 1], u'satRand': 0.0, u'collisionLayer': 0.0, u'hairColorScale[0].hairColorScale_Color': (0.5, 0.5, 0.5), u'clumpFlatness[0].clumpFlatness_Interp': 1, u'bounce': 0.0, u'hairColorScale[0].hairColorScale_Position': 0.0, u'hairColorScale[1].hairColorScale_Position': 0.30000001192092896, u'hairWidthScale[0].hairWidthScale_Position': 0.800000011920929, u'hairColorScale[2].hairColorScale_Color': (1.0, 1.0, 1.0), u'attractionDamp': 0.5, u'clumpWidth': 1e-05, u'hairWidthScale[1].hairWidthScale_FloatValue': 0.20000000298023224, u'clumpWidthScale[1]': (1.0, 0.20000000298023224, 3.0), u'multiStreakSpread1': 0.3, u'noiseFrequencyW': 1.0, u'noiseFrequencyV': 1.0, u'noiseFrequencyU': 1.0, u'numUClumps': 15.0, u'clumpWidthScale[1].clumpWidthScale_FloatValue': 0.20000000298023224, u'stickiness': 0.0, u'hueRand': 0.0, u'hairWidthScale[1]': (1.0, 0.20000000298023224, 1.0), u'clumpCurl[0].clumpCurl_Position': 0.0, u'clumpCurl[0]': (0.0, 0.5, 1.0), u'displacementScale[0]': (0.0, 1.0, 1.0), u'hairColorScale[2].hairColorScale_Position': 1.0, u'curl': 0.0, u'simulationMethod': 3, u'valRand': 0.0, u'gravity': 0.98, u'thinning': 0.0, u'hairColorScale[2].hairColorScale_Interp': 1, u'opacity': 1.0, u'collideOverSample': 0, u'tangentialDrag': 0.10000000149011612, u'hairColorScale[1]': [0.30000001192092896, (0.800000011920929, 0.800000011920929, 0.800000011920929), 1], u'drag': 0.05, u'displacementScale[0].displacementScale_FloatValue': 1.0, u'clumpFlatness[0]': (0.0, 0.0, 1.0), u'multiStreakSpread2': 0.1, u'displayQuality': 100.0, u'stretchDamp': 0.0, u'selfCollideWidthScale': 1.0, u'mass': 1.0, u'clumpWidthScale[0].clumpWidthScale_Position': 0.0, u'motionDrag': 0.0}

set_preset_value(odict, name=pm.selected()[0].name())
