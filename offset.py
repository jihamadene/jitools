def offset():
    import pymel.core as pymel
selection = pymel.selected()
for selectedItem in selection:
    offgroup= pymel.group(em=True,name=(selectedItem.name()+'_offset'))
    offgroup.setParent(selectedItem, r=True)
    offgroup.setParent(w=True)
    selectedItem.setParent(offgroup)