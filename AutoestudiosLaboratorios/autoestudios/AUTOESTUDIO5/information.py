id=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
code_comments=[100101,100102,100103,100104,100105,100106,100107,100108,100109,100110,100201,100202,100203,100204,100205,100206,100207,100208,100209,100210,100301,100302,100303,100304,100305,100306,100307,100308,100309,1003010]
comment_room =["Great time","Wonderful base in Rome","Excellent hotel","Plesant stay", "Highly recommended","Perfect stay!","Amazing service, quality rooms, great breakfast, wonderful", "Service with a smile!","Upward bound group","Great port in a storm","Great port in a storm","I will definitely make this my go-to hotel in Rapid City","Great port in a storm"]
star=[0,1,2,3,4,5]

id_1=[]
for i in code_comments:
    id_1.append(int(i)-100000)

    
print(id_1)
