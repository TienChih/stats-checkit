def generator():
          
        
    
    ND=RealDistribution('gaussian', 1)
    
    ineqt=randint(0,1)
    
    ineq1=" is at most "
    ineqsymb1="leq"
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose1="Suppose probability that a PC needs repairing over the course of a year is "
        prose2="A company uses "
        randvar=" number of PCs that will need repair this year"
        units=" PCs"
        n=randint(500, 1000)
        p=round(uniform(.04,.08),2)
        prompt1="Find the probability that the number of PCs that will need repair is "
        
    if scenario==1:
        prose1="Suppose probability that a eligible voter will vote in a local midterm election is "
        prose2="A voting district has "
        randvar=" number of eligible voters who will vote"
        units=" potential voters"
        n=randint(5000, 10000)
        p=round(uniform(.4,.6),2)
        prompt1="Find the probability that the number of eligible voters who will vote is "
        
    if scenario==2:
        prose1="Suppose there is a vaccine is developed to combat a novel virus.  The probability an eligible adult takes the vaccine is "
        prose2="The number of eligible adults in a town is "
        randvar=" number of adults who take the vaccine"
        units=" adults"
        n=randint(100, 1000)*100
        p=round(uniform(.3,.7),2)
        prompt1="Find the probability that the number of adults who take the vaccine is "
        
        
    if scenario==3:
        prose1="Suppose there is a mishap with the feed of a herd of cattle, and some of the cattle get sick.  When the ranchers test the cattle, the probability that each cow got sick is "
        prose2="A cattle herd has "
        randvar=" number of cattle that got sick"
        units=" cows"
        n=randint(50, 80)
        p=round(uniform(.3,.45),2)
        prompt1="Find the probability that the number of number of cattle who got sick is "
        
        
    if scenario==4:
        prose1="Suppose the probability that a person clicks on a malicious link in a scam email is "
        prose2="A scammer sends scam emails to "
        randvar=" number of people who click the link"
        units=" people"
        n=randint(80, 100)*100
        p=round(uniform(.03,.07),2)
        prompt1="Find the probability that the number of number of people who click the email is "    
    
    
    mean=n*p
    s=sqrt(n*p*(1-p))
    
    
    x1=round(uniform(-3*s+mean,1*s+mean))
    x2=round(uniform(x1+0.25*s,3*s+mean))
    z1=(x1-mean)/s
    z2=(x2-mean)/s
    P2=round(uniform(0.2,0.99),2)
    
    P1=ND.cum_distribution_function(z2)-ND.cum_distribution_function(z1)
     
    z3=ND.cum_distribution_function_inv(P2)
    
    
    
    if ineqt==0:
        ineq1=" is at least "
        z3=-1*z3
        ineqsymb1="geq"
    
    x3=z3*s+mean

    
    
    
    
    
    return{
        "x1":x1,
        "x2":x2,
        "x3":x3,
        "prose1":prose1,
        "prose2":prose2,
        "units":units,
        "P1":P1, 
        "P2":P2, 
        "ineq1":ineq1,
        "ineqsymb1":ineqsymb1,
        "mean":mean,
        "s":s,
        "prompt1":prompt1,
        "randvar":randvar,
        "n":n,
        "p":p,
        
        
        
        
        
        
    }
