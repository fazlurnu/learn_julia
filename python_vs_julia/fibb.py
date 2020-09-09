import time

def fibb(n):
    if (n<=1):
        return n
    else:
        return (fibb(n-1) + fibb(n-2))

for i in range(25):
    start_time = time.time()
    fibb(30)
    end_time = time.time()
    print("%s" % (end_time - start_time))