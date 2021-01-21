import os
from shutil import copyfile

movlist = []

for i in range(45, 106):
    istr = str(i)
    print i
    if len(istr) == 3:
        continue
    elif len(istr) == 1:
        istr = '00' + istr
    elif len(istr) == 2:
        istr = '0' + istr
    print 'entering ' + istr
    for ishoot in range(0, 1):
        ishot = str(ishoot)
        print i
        if len(ishot) == 4:
            continue
        elif len(ishot) == 3:
            ishot = '0' + ishot
        elif len(ishot) == 2:
            ishot = '00' + ishot
        elif len(ishot) == 1:
            ishot = '000' + ishot
        print 'entering ' + ishot
        path = """//10.0.6.81/fx-prod/SHOTGUN/mnt/projects/yeti/sequences/""" + istr + '/' + istr + '_' + ishot + """/comp/images/output/Draft/"""
        try:
            for (path, dirs, files) in os.walk(path):
                tempmov = 0
                print path
                for each in files:
                    if '.mov' in each:
                        print each
                        if tempmov != 0:
                            if os.path.getmtime(path + each) > os.path.getmtime(path + tempmov):
                                print os.path.getmtime(path + each)
                                print os.path.getmtime(path + tempmov)
                                tempmov = each
                            else:
                                pass
                        else:
                            tempmov = each
                    else:
                        pass
                if tempmov != 0:
                    print 'adding ' + str(path) + str(tempmov) + 'to the movlist'
                    movlist.append(str(path) + str(tempmov))
                    tempmov = 0
        except Exception:
            pass
    print movlist

for each in movlist:
    mov = str.split(each, '/')
    print(mov[-1])
    copyfile(each, 'C:/Users/j/Desktop/yann/' + str(mov[-1]))
