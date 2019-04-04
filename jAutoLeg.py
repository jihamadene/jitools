from maya.cmds import *
def offset(selectedItem):

	offgroup= group(em=1,name=selectedItem+'_offset')
	parent(offgroup,selectedItem, r=1)
	parent(offgroup,w=1)
	parent(selectedItem,offgroup)
	return offgroup

def Leg(jnt_hip,jnt_knee, jnt_ankle,jnt_ball,jnt_tip):
	suff=str(jnt_hip).split('_')[-1]
	ikankle=ikHandle (n='ik_'+jnt_ankle,sj=jnt_hip ,ee=jnt_ankle,sol='ikRPsolver')
	ikball=ikHandle (n='ik_'+jnt_ball,sj=jnt_ankle ,ee=jnt_ball,sol='ikSCsolver')
	iktip=ikHandle (n='ik_'+jnt_tip,sj=jnt_ball ,ee=jnt_tip,sol='ikSCsolver') 
	rigfoot=cmds.spaceLocator (n='rig_foot_'+suff)
	parent (rigfoot,jnt_ankle,r=1)
	parent (rigfoot,w=1,a=1)
	xform(rigfoot,ro=(0,0,0))
	pivball= group (n='pivBall_'+suff, em=1,p=ikball[0])
	parent (pivball,rigfoot)
	pivout= group (n='pivOut_'+suff, em=1,p=pivball)
	pivinn= group (n='pivInn_'+suff, em=1,p=pivout)
	pivb= group (n='pivB_'+suff, em=1,p=pivinn)
	pivf= group (n='pivF_'+suff, em=1,p=iktip[0])
	pivm= group (n='pivM_'+suff, em=1,p=pivball)
	parent (pivf,pivb)
	pivtoe= group (n='pivToe_'+suff, em=1,p=pivball)
	parent (pivtoe,pivb)
	parent (iktip[0],pivtoe)
	parent (ikball[0],pivf)
	parent (ikankle[0],pivm)
	ctrlik= circle (n='ctrl_leg_ik_'+suff,nry=1,nrz=0)
	offctrlik= offset(ctrlik[0])
	parent(offctrlik,jnt_ankle,r=1)
	parent(offctrlik,w=1)
	xform(offctrlik,ro=(0,0,0))
	parentConstraint(ctrlik,rigfoot)
	
	
# def ntrx(ntrxTarget):
	# instance(ntrxTarget, [leaf=boolean], name=ntrx+'Target', [smartTransform=boolean])  ntrxTarget 
	
	
def jntofz(njnt):
	for ojnt in njnt:
		jnt_ofz = spaceLocator 


Leg ('jnt_leg_l' ,'jnt_foreleg_l','jnt_foot_l','jnt_ball_l' ,'jnt_foottip_l' )



