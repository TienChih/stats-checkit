def generator():
          
        
    scenario=randint(0,4)
        
    if scenario==0:
        prose="A study is done comparing the Annual Rainfall (in mm) and Max Daily Temperature (C) of different sites of a geographic region."
        explanatory="Max Daily Temperature"
        response="Annual Rainfall"
        Eunit="C"
        Runit="mm"
        n=randint(15,25)
        m=uniform(-17, -16)
        b=uniform(280, 310)
        Xlist=[]
        Ylist=[]
        N = RealDistribution('gaussian', 10)
        for i in range(n):
            x=round(uniform(5,12),1)
            y=round(m*x+N.get_random_element()+b,1)
            Xlist.append(x)
            Ylist.append(y)
        x1=randint(20, 65)
        y2=round(randint(20, 65)*m+b,1)
        sample="a site"
    
    
    if scenario==1:
        prose="A study is done comparing patients Maximum Pain Tolerance (on a scale of 1-10) to their Rating of Pain Severity (also on a scale of 1-10)."
        explanatory="Maximum Pain Tolerance"
        response="Rating of Pain Severity"
        Eunit="points"
        Runit="points"
        n=randint(15,25)
        m=uniform(-0.2, -0.15)
        b=uniform(5, 6)
        Xlist=[]
        Ylist=[]
        N = RealDistribution('gaussian', 1)
        for i in range(n):
            x=round(N.get_random_element()+5.5)
            y=round(m*x+N.get_random_element()+b)
            Xlist.append(x)
            Ylist.append(y)
        x1=randint(1, 10)
        y2=round(randint(1, 10)*m+b)
        sample="a patient"   
    
    if scenario==2:
        prose="Two graders grade the same set of exams, to see how consistently points are awarded across individual graders."
        explanatory="Score by Grader 1"
        response="Score by Grader 2"
        Eunit="points"
        Runit="points"
        n=randint(15,25)
        m=uniform(0.8, 1.2)
        b=uniform(-5, 5)
        Xlist=[]
        Ylist=[]
        N = RealDistribution('gaussian', 60)
        for i in range(n):
            x=min(round(N.get_random_element()+75),100)
            y=randint(x-25, min(x+25, 100))
            Xlist.append(x)
            Ylist.append(y)
        x1=randint(60, 95)
        y2=round(randint(60, 95)*m+b)
        sample="a patient" 
            
            
    if scenario==3:
        prose="In a town, a study is conducted comparing square footage of a home, to it's prince (in thousands of dollars)."
        explanatory="Size of Home"
        response="Price of Home"
        Eunit="square feet"
        Runit="thousands of dollars"
        n=randint(15,25)
        m=uniform(0.08, 0.12)
        b=uniform(90, 100)
        Xlist=[]
        Ylist=[]
        N = RealDistribution('gaussian', 5)
        for i in range(n):
            x=round(randint(1500, 2000))
            y=round(m*x+N.get_random_element()+b)
            Xlist.append(x)
            Ylist.append(y)
        sample="a home" 
    
    if scenario==4:
        prose="A study is conducted comparing the amount of Time since Injection of a drug, with the Quantity left in the Bloodstream."
        explanatory="Time since Injection"
        response="Drug Quantity in Body"
        Eunit="hours"
        Runit="mg/ml"
        n=randint(15,25)
        m=uniform(-0.2, -0.15)
        b=uniform(2.5, 3)
        Xlist=[]
        Ylist=[]
        N = RealDistribution('gaussian', 0.2)
        for i in range(n):
            x=randint(1, 7)
            y=round(m*x+N.get_random_element()+b, 2)
            Xlist.append(x)
            Ylist.append(y)
        sample="a patient" 
    
    
    
    
    
    Datalist=[]
        
    for i in range(n):
        entry={
            'x':Xlist[i],
            'y':Ylist[i],
        }
        Datalist.append(entry)
        
    sx=std(Xlist)
    mx=mean(Xlist)
    sy=std(Ylist)
    my=mean(Ylist)
        
    R=0
        
    for i in range(n):
        R=R+(Xlist[i]-mx)*(Ylist[i]-my)/(sx*sy)
            
    R=round(R/(n-1),10)
    Rsquare=R^2
    #perc=Rsquare*100
    B1=round((sy/sx)*R,15)
    B0=round(my-B1*mx,15)
    
    
    Yhatlist=[]
    
    SSE=0
    SSXX=0
    
    for i in range(n):
        error=Ylist[i]-(B1*Xlist[i]+B0)
        SSE=SSE+error^2
        Yhatlist.append(error)
        SSXX=SSXX+(Xlist[i]-mx)^2
    
    S1=sqrt(1/(n-2)*(SSE/SSXX))
    
    tscore=B1/S1
    
    T = RealDistribution('t', n-2)
    
    t = T.cum_distribution_function_inv(1-((100-95)/200))
    LB=numerical_approx(B1-t*S1)
    UB=numerical_approx(B1+t*S1)
    
    pvalue=(1-(T.cum_distribution_function(abs(tscore))))*2
    
    
    
    
    
    
    
    return{
        "Datalist":Datalist,
        "explanatory":explanatory,
        "response":response,
        "Eunit":Eunit,
        "Runit":Runit,
        "prose":prose,
        "B0":B0,
        "B1":B1,
        "sample":sample,
        "S1":S1,
        "tscore":tscore,
        "LB":LB,
        "UB":UB,
        "pvalue":pvalue,
        
        
        
        
        
        
    }
