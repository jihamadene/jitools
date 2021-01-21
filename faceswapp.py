facepoints = ls(sl=1)
group(em=1,n='jnf')
for each in facepoints:
	select (each)
	jnfname=each.replace('rig','jnf')
	jnfname=jnfname.replace('_facepnt','')
	joint(n=jnfname)
	parent ('jnf',jnfname)
	parentConstraint(each,jnfname)
