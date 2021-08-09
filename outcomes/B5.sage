def generator():
          
        
    n=randint(25,35)
    
    mu=randint(-10, 100)
    sigma=randint(5,30)
    
    T = RealDistribution('gaussian', sigma)
    
    data=[0 for i in range(n)]
    
    datalist=[]
    
    for i in range(n-1):
        data[i]=round(mu+T.get_random_element())
    
    data[n-1]=mu+4*sigma*(-1)^randint(0,1)
    
    data.sort()
    
    for i in range(n):
        entry={
            'x':data[i],
        }
        datalist.append(entry)
    
    
    
    sampsd=round(std(data)*1.0,10)
    sampVar=sampsd^2
    
    popsd=round(std(data, bias="TRUE")*1.0,10)
    popVar=popsd^2
    
    
    
    med=median(data)
    mn=data[0]
    mx=data[n-1]
    
    mid=floor(n/2)
    
    firsthalf=[data[i] for i in range(mid)]
    secondhalf=[data[i] for i in range(n-mid, n-1)]
    
    Q1=median(firsthalf)
    Q3=median(secondhalf)
    
    IQR=Q3-Q1
    
    outliers=[]
    outlierslist=[]
    
    for i in range(n):
        if data[i]<Q1-1.5*IQR or data[i]>Q3+1.5*IQR:
            outliers.append(data[i])
    
    for i in range(len(outliers)):
        entry={
            'x':outliers[i],
        }
        outlierslist.append(entry)
    
    
    
    
    
    
    
    return{
        "data":datalist,
        "sampsd":sampsd,
        "sampvar":sampVar,
        "popsd":popsd,
        "popvar":popVar,
        "mn":mn,
        "Q1":Q1,
        "med":med,
        "Q3":Q3,
        "mx":mx,
        "IQR":IQR,
        "outliers":outlierslist,
        
        
        
        
    }
