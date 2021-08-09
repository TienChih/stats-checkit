def generator():
    scenario=randint(0,4)
    #scenario=0
    
    if scenario==0:
        prose="A mayor wants to measure public support for their new proposal.  Their team conducts a survey of constituents."
        sample="surveyed constituents"
        success1="approve the proposal"
        population="all constituents"
        success2="approve the proposal"
        claimant="the mayor claims"
        
        
    if scenario==1:
        prose="An oncologist wishes to test a new treatment.  She performs an experiment exposing cancer cells to the treatment."
        sample="exposed cells"
        success1="were destroyed"
        population="cancer cells"
        success2="would be destroyed"
        claimant="the oncologist claims"
        
    if scenario==2:
        prose="A psychologist wants to know if a new mental exercise helps people retain short term memory.  Adult subjects were selected and their short term memory was tested.  After completing the exercise, their short term memory was tested again."
        sample="test subjects"
        success1="showed improved short term memory"
        population="adults"
        success2="would show improved memory doing this exercise"
        claimant="the psychologist claims"
        
    if scenario==3:
        prose="A company wondered if people liked the user interface of their upgraded website.  They survey a random selection of their customers."
        sample="surveyed customers"
        success1="preferred the new user interface"
        population="all the company's customers"
        success2="prefer the new interface"
        claimant="the company claims"
        
    if scenario==4:
        prose="A county health department wants to know what proportion of their citizens are willing to take a vaccine for a novel virus.  They survey a random selection residents in the county."
        sample="surveyed residents"
        success1="had or were willing to be vaccinated"
        population="all residents in the county"
        success2="had or would be willing to be vaccinated"
        claimant="the health department claims"
        
        
    
    
    
    n=randint(30,100)
    p=uniform(0.2,0.8)
    x=0
    for i in range(n):
        d=random()
        if d<p:
            x=x+1
    
    CL=choice([95, 95, 99])
        
    T = RealDistribution('gaussian', 1)
    z = T.cum_distribution_function_inv(1-((100-CL)/200))    
    
    phat=x/n
    SE=numerical_approx(sqrt(phat*(1-phat)/n))
    LB=numerical_approx(phat-z*SE)
    UB=numerical_approx(phat+z*SE)
    
    claimp=randint(20,80)
    ineq=choice(["at least", "at most"])
    
    claimtrue="does not support"
    
    if claimp/100<LB and ineq=="at least":
        claimtrue="does support"
    
    if claimp/100>UB and ineq=="at most":
        claimtrue="does support"
    
    
    return{
        "n":n,
        "x":x,
        "CL":CL,
        "LB":LB,
        "UB":UB,
        "prose":prose,
        "sample":sample,
        "success1":success1,
        "success2":success2,
        "population":population,
        "phat":phat,
        "SE":SE,
        "z":z,
        "claimp":claimp,
        "ineq":ineq,
        "claimtrue":claimtrue,
        "claimant":claimant,
        
    }
