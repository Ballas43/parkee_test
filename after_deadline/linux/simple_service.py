import time

while True:
    file = open("py_test.txt", "w")
    file.write(time.asctime(time.localtime()))
    file.close()
    
    time.sleep(5)


# print(time.asctime(time.localtime()))