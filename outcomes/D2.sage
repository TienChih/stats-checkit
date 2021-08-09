def generator():
          
        
    
    ND=RealDistribution('gaussian', 1)
    
    ineqt=randint(0,1)
    
    ineq1=" is at most "
    ineq2=" is at least "
    ineqsymb1="leq"
    ineqsymb2="geq"
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose="Suppose the average height of 5 year old girls is normally distributed with mean "
        units=" cm"
        mean=round(uniform(105,115),2)
        s=round(uniform(3,8),2)
        prompt1="Find the probability that a randomly selected 5 year old girl's height is "
        prompt2=" the probability that a randomly selected 5 year old girl's height is "
        
    if scenario==1:
        prose="Suppose the braking distance of cars of a certain model travelling at 60 mph is normally distributed with mean  "
        units=" feet"
        mean=round(uniform(130,135),2)
        s=round(uniform(5,8),2)
        prompt1="Find the probability that a randomly selected car's braking distance is "
        prompt2=" the probability that a randomly selected car's braking distance is "
        
    if scenario==2:
        prose="Suppose the weekly profit of a food truck is normally distributed with mean  "
        units=" dollars"
        mean=round(uniform(700,1000),2)
        s=round(uniform(600,900),2)
        prompt1="Find the probability that a randomly selected week's profit is "
        prompt2=" the probability that a randomly selected week's profit is "
        
        
    if scenario==3:
        prose="Suppose the retirement age of professional athletes in a certain league is normally distributed with mean  "
        units=" years"
        mean=round(uniform(30,35),2)
        s=round(uniform(2,4),2)
        prompt1="Find the probability that a randomly selected athlete's retirement age is "
        prompt2=" the probability that a randomly selected athlete's retirement age is "
        
        
    if scenario==4:
        prose="Suppose the weight of adult male moose in a certain forest is normally distributed with mean  "
        units=" lbs"
        mean=round(uniform(1100,1200),2)
        s=round(uniform(200,250),2)
        prompt1="Find the probability that a randomly selected adult male moose's weight is "
        prompt2=" the probability that a randomly selected adult male moose's weight is "    
    
    
    x1=round(uniform(-3*s+mean,3*s+mean),2)
    x2=round(uniform(-3*s+mean,1*s+mean),2)
    x3=round(uniform(x2+0.25*s,3*s+mean),2)
    z1=(x1-mean)/s
    z2=(x2-mean)/s
    z3=(x3-mean)/s
    P3=round(uniform(0.2,0.99),2)
    P4=round(uniform(0.2,0.99),2)
    
    P1=ND.cum_distribution_function(z1)
    P2=ND.cum_distribution_function(z3)-ND.cum_distribution_function(z2)
     
    z4=ND.cum_distribution_function_inv(1-P3)
    z5=ND.cum_distribution_function_inv((P4+1)/2)
    
    x4=z4*s+mean
    k=z5*s
    
    
    if ineqt==0:
        ineq1=" is at least "
        ineq2=" is at most "
        P1=1-P1
        z4=-1*z4
        ineqsymb1="geq"
        ineqsymb2="leq"
    

    
    
    
    
    
    return{
        "x1":x1,
        "x2":x2,
        "x3":x3,
        "x4":x4,
        "k":k,
        "prose":prose,
        "units":units,
        "P1":P1,
        "P2":P2,
        "P3":round(P3*100),
        "P4":round(P4*100),
        "ineq1":ineq1,
        "ineq2":ineq2,
        "ineqsymb1":ineqsymb1,
        "ineqsymb2":ineqsymb2,
        "mean":mean,
        "s":s,
        "prompt1":prompt1,
        "prompt2":prompt2,
        
        
        
        
        
        
    }
