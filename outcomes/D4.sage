def generator():
          
        
    
    ND=RealDistribution('gaussian', 1)
    
    ineqt=randint(0,3)
    
    
    scenario=randint(0,4)

    
    if scenario==0:
        prose="Suppose a group of diners order dinner together.  Each of the "
        n=randint(4,10)
        prob=round(uniform(.3, .7),2)
        unit=" diner"
        units=" diners"
        success=" orders dessert"
        success1=" ordering dessert"
        
    if scenario==1:
        prose="Suppose a bank gives out a number of loans.  Each of the "
        n=randint(3,6)
        prob=round(uniform(.1, .25),2)
        unit=" loan"
        units=" loans"
        success=" default"
        success1=" defaulting"
        
    if scenario==2:
        prose="Suppose a group of people are in a room for extended time with someone infected with a novel virus.  Each of the "
        n=randint(5,8)
        prob=round(uniform(.2, .4),2)
        unit=" person"
        units=" people"
        success=" contract the virus"
        success1=" contracting the virus"
        
        
    if scenario==3:
        prose="Suppose a group of adults are selected as test subjects for a study.  Each of the "
        n=randint(5,8)
        prob=round(uniform(.1, .2),2)
        unit=" person"
        units=" people"
        success=" have some type of phobia"
        success1=" having some type of phobia"
        
        
    if scenario==4:
        prose="Suppose a job candidiate applies for several jobs.  Each of the "
        n=randint(5,8)
        prob=round(uniform(.6, .7),2)
        unit=" employer"
        units=" employers"
        success=" offers a job"
        success1=" offering a job"
    
    Probvec=[0 for i in range(0, n+1)]
    
    for i in range(n+1):
        Probvec[i]= binomial(n,i)*prob^i*(1-prob)^(n-i)
    
    x1=randint(2,n)
    x2=randint(2,n)
    
    while x2==x1:
        x2=randint(2,n)
        
    x3=randint(1,n-1)
    
    x4=randint(1,n-1)
    x5=randint(1,n-1)
    
    while x5<=x4:
        x4=randint(1,n-1)
        x5=randint(1,n-1)
    
    P1=Probvec[x1]
    P2=Probvec[x2]
    
    P3=0
    
    if ineqt==0:
        ineq=" less than "
        ineqsymb="lneq"
        for i in range(0, x3):
            P3=P3+Probvec[i]
        
    if ineqt==1:
        ineq=" at most "
        ineqsymb="leq"
        for i in range(0, x3+1):
            P3=P3+Probvec[i]

    if ineqt==2:
        ineq=" greater than "
        ineqsymb="gneq"
        for i in range(x3+1,n+1):
            P3=P3+Probvec[i]
    
    if ineqt==3:
        ineq=" at least "
        ineqsymb="geq"
        for i in range(x3, n+1):
            P3=P3+Probvec[i]
    
    P4=0
    
    for i in range(x5-x4+1):
        P4=P4+Probvec[x4+i]
    
    return{
        "x1":x1,
        "x2":x2,
        "x3":x3,
        "x4":x4,
        "x5":x5,
        "n":n,
        "prob":prob,
        "prose":prose,
        "units":units,
        "unit":unit,
        "P1":P1,
        "P2":P2,
        "P3":P3,
        "P4":P4,
        "ineq":ineq,
        "ineqsymb":ineqsymb,
        "success":success,
        "success1":success1,
        
        
        
        
        
        
        
    }
