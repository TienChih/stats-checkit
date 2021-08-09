def generator():
          
        
    pvalue=0
        
    htt=randint(0,2)
    T = RealDistribution('gaussian', 1)
    p0dec=randint(30,70)
    p0=p0dec*0.01
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose="An education researcher wants to know of the proportion if college students who find a certain subject challenging"
        prose2="They conduct a survey of college students."
        sample="surveyed students"
        success1="found the subject challenging"
        population="all college students"
        success2="find the subject challenging"
        
    if scenario==1:
        prose="An political campaign wants to know if the proportion of voters who support their candidiate"
        prose2="They conduct a survey of potential voters."
        sample="surveyed potential voters"
        success1="supported the candidiate"
        population="all potential voters"
        success2="support their candidiate"
        
    if scenario==2:
        prose="A CEO is curious if the proportion of employees that are satisfied with their job"
        prose2="They conduct a survey of employees."
        sample="surveyed employees"
        success1="were satisfied with their job"
        population="all employees"
        success2="are satisfied with their job"
        
    if scenario==3:
        prose="An engineer tests to see if the he proproportion of iron samples, when sprayed with a new compound, would rust when exposed to water"
        prose2="He conducts an experiment."
        sample="iron samples"
        success1="rusted"
        population="iron samples"
        success2="would rust"
        
    if scenario==4:
        prose="A marine biologist wonders if the proportion of turtles in a coral reef that were infected with a new parasite"
        prose2="She gathers a sample of turtles."
        sample="turtles found in the coral reef"
        success1="were infected"
        population="turtles"
        success2="are infected"        
        
        
        
    
    if htt==0:
        ineq="is not equal to"
        ineqsymb="neq"
    if htt==1:
        ineq="is greater than"
        ineqsymb="gneq"
    if htt==2:
        ineq="is less than"
        ineqsymb="lneq"
    
    pvalue=0
    
    while(pvalue<0.01 or pvalue>0.1):
        n=randint(100,400)
        if htt==0:
            x=randint(15,n-15)
        if htt==1:
            x=randint(ceil(n*p0),n-15)
        if htt==2:
            x=randint(15,n)
        phat=x/n
        SE=numerical_approx(sqrt(p0*(1-p0)/n))
        zscore=(phat-p0)/SE
        if htt==0:
            pvalue=(1-(T.cum_distribution_function(abs(zscore))))*2
        if htt==1:
            pvalue=1-T.cum_distribution_function(zscore)
        if htt==2:
            pvalue=T.cum_distribution_function(zscore)
    
    
    
    
    return{
        "n":n,
        "x":x,
        "p0dec":p0dec,
        "ineq":ineq,
        "ineqsymb":ineqsymb,
        "phat":phat,
        "pvalue":pvalue,
        "prose":prose,
        "prose2":prose2,
        "sample":sample,
        "success1":success1,
        "success2":success2,
        "population":population,
        "SE":SE,
        "zscore":zscore,
        "htt":htt,
        
    }
