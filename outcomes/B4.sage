def generator():
          
        
    n=randint(25,35)
    
    mu=uniform(-10, 100)
    sigma=uniform(5,30)
    
    T = RealDistribution('gaussian', sigma)
    
    data=[0 for i in range(n)]
    datalist=[]
    
    for i in range(n):
        data[i]=round(mu+T.get_random_element())
    
    for i in range(n):
        entry={
            'x':data[i],
        }
        datalist.append(entry)
    
    barx=mean(data)*1.0
    
    med=median(data)
    
    mde=mode(data)
    
    
    
    
    
    
    
    
    
    
    
    
    
    return{
        "data":datalist,
        "barx":barx,
        "med":med,
        "mde":mde,
        
        
        
        
    }
