def generator():
          
        
    df1=randint(20,50)
    
    TD=RealDistribution('t', df1)
    
    ineqt=randint(0,1)
    
    ineq1="leq"
    ineq2="geq"
    
    
    t1=round(uniform(-3,3),2)
    t2=round(uniform(-3,1),2)
    t3=round(uniform(t2+0.25,3),2)
    P3=round(uniform(0.2,0.99),2)
    P4=round(uniform(0.2,0.99),2)
    
    P1=TD.cum_distribution_function(t1)
    P2=TD.cum_distribution_function(t3)-TD.cum_distribution_function(t2)
     
    t4=TD.cum_distribution_function_inv(1-P3)
    t5=TD.cum_distribution_function_inv((P4+1)/2)
    
    
    if ineqt==0:
        ineq1="geq"
        ineq2="leq"
        P1=1-P1
        t4=-1*t4
    

    
    
    
    
    
    return{
        "t1":t1,
        "t2":t2,
        "t3":t3,
        "t4":t4,
        "t5":t5,
        "P1":P1,
        "P2":P2,
        "P3":P3,
        "P4":P4,
        "df1":df1,
        "ineq1":ineq1,
        "ineq2":ineq2,
        
        
        
        
        
        
    }
