# taop33
# björne och antornes
#=============================================================


import numpy as np
import time
import sys
import copy

e=1

prob=" ".join(sys.argv[1:]).split('.')[0]
fil=prob+'.npz'

npzfile = np.load(fil)
npzfile.files
m=npzfile['m'] # antalet möjliga platser för lok av anläggning
n=npzfile['n'] # antalet kunder
s=npzfile['s'] # kapaciteten hos en anläggning på plats i
d=npzfile['d'] # efterfrågan hos kund j
f=npzfile['f'] # den fasta kostnaden för att öppna anläggning på plats i
c=npzfile['c'] # transportkostnaden per enhet till kund j från plats i
#print ('m:',m,' n:',n)
#print ('s:',s)
#print ('d:',d)
#print ('f:',f)
#print ('c:',c, "\n", "=============================== \n")

x=np.zeros((m,n),dtype=np.int)
y=np.zeros((m),dtype=np.int)

ss=copy.deepcopy(s)
dd=copy.deepcopy(d)
ff=copy.deepcopy(f)
cc=copy.deepcopy(c)
iterations = 0
t1=time.time()
while sum(dd)>0:
    factory_cost = 99999 #välj billigaste fabrik
    curr_factory = -1
    best_customer = -1
    transport_cost = 99999
    for facnmbr in range(len(ff)): #Välj billigaste fabrik
        if(ff[facnmbr] < 0): #om fabriken är stängd, väljs nästa fabrik
            continue
        elif(ff[facnmbr] < factory_cost): #billiger än tidigare vald fabrik?
            curr_factory = facnmbr #sätter jämförsvärde
            factory_cost = ff[facnmbr]
    for route in range(len(cc[curr_factory])): #välj billigaste transportväg till bästa kund
        if(cc[curr_factory][route] < transport_cost): #För vald fabrik, vilken är billigaste vägen att ta?
            transport_cost = cc[curr_factory][route] # sätt jämförsvärde
            best_customer = route #välj bästa kund
    cc[curr_factory][best_customer] = 999999999999999999
    y[curr_factory] = 1
    x[curr_factory, best_customer] = min(ss[curr_factory], dd[best_customer])
    if(ss[curr_factory] >= dd[best_customer]): #tillgång >= efterfrågan
        ss[curr_factory] -= int(dd[best_customer])
        dd[best_customer] = 0
        if(ss[curr_factory] == 0):
            ff[curr_factory] = -1
    else: #efterfrågan > tillgång
        dd[best_customer] -= ss[curr_factory]
        ss[curr_factory] = 0
        ff[curr_factory] = -1
    iterations += 1
    # find facility, find customer, send, at min cost
    # set x and y
    # deduct from ss and dd,
    # --------

#print("DD: ",dd)
elapsed = time.time() - t1
cost=sum(sum(np.multiply(c,x))) + e*np.dot(f,y)
print ('Problem:',prob,' \nTotalkostnad: '+str(cost))

print("Iterations: ", iterations)
print ('Tid: '+str('%.4f' % elapsed))


print ('Antal byggda fabriker:',sum(y),'(av',m,')')
print ('y:',y)
