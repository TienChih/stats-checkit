def generator():
          
        
    pvalue=0
    df=4-1
    ChiD=RealDistribution('chisquared', df)
    
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose="The distribution of moth species in a local forest has historically been "
        group1="species 1"
        group2="species 2"
        group3="species 3"
        group4="species 4"
        grouptype=" moths of "
        prose2="A year after an industrial accident, a sample of moths collected from this forest consisted of "
        question="whether or not the distributions of moths remain unchanged."
        null="The distribution of moths remains unchanged after the accident."
        alternative="The distribution of months has changed after the accident."
        
    if scenario==1:
        prose="The distribution of majors at a University are "
        group1="Business majors"
        group2="Humanities majors"
        group3="Social Science majors"
        group4="STEM majors"
        grouptype=" students who are "
        prose2="Professor Martinez's introductory lecture class consists of "
        question="whether or not the distributions majors in Dr. Martinez's class is representative of the student body at the University."
        null="The distribution of students in Dr. Martinez's class is the same as the University's."
        alternative="The distribution of students in Dr. Martinez's class is different from the University's."
        
    if scenario==2:
        prose="In previous locations, a restaurants the main protein for dinner entrees ordered by customers have been "
        group1="beef"
        group2="chicken"
        group3="pork"
        group4="vegan"
        grouptype=" main proteins that were "
        prose2="In a random sampling of dinner entrees ordered at their new location, the main proteins were "
        question="whether or not the distributions or ordered main proteins was the same at the new location as previous locations."
        null="The distribution of main proteins is the same as previous locations."
        alternative="The distribution of main proteins is different from previous locations."
        
    if scenario==3:
        prose="In a casino, there is a game of chance where a wheel is spun, and the chances of it landing on different colors are "
        group1="blue"
        group2="green"
        group3="orange"
        group4="red"
        grouptype=" spins came up "
        prose2="In a sampling of spins one night, the colors that came up were  "
        question="whether or not the distributions of colors on this wheel match that of the game."
        null="The distribution of colors matches that of the game."
        alternative="The distribution of colors do not match that of the game."
        
    if scenario==4:
        prose="A non-profit printing t-shirts for their volunteers have historically needed sizes "
        group1="small"
        group2="medium"
        group3="large"
        group4="x-large"
        grouptype=" volunteers requested a "
        prose2="In a sampling of size requests at a new location,  "
        question="whether or not the distribution of t-shirt sizes needed match that of previous locations."
        null="The distribution of t-shirt sizes matches that of previous locations."
        alternative="The distribution of t-shirt sizes do not match that of previous locations."        
        
        
        
    goodfit=randint(0,1)
    
    prob1dec=randint(20,30)
    prob2dec=randint(15,25)
    prob3dec=randint(25,35)
    prob4dec=100-prob1dec-prob2dec-prob3dec
    
    probdecvec=list([prob1dec, prob2dec, prob3dec, prob4dec])
    shuffle(probdecvec)
    
    probvec=[0,0,0,0]
    
    for i in range(4):
        probvec[i]=probdecvec[i]*0.01
    
    dummysize=randint(100,200)
    
    nvec=list([0,0,0,0])
    dummysizevec=list([0,0,0,0])
    
    for i in range(4):
        dummysizevec[i]=probvec[i]*dummysize
    
    
    
    while (pvalue<0.01 or pvalue>0.1):
        if goodfit==1:
            for i in range(4):
                nvec[i]=round(uniform(.6, 1.4)*dummysizevec[i])
            
        elif goodfit==0:
            for i in range(4):
                nvec[i]=round(random()*dummysize/4)
    
        n=sum(nvec)
    
        Evec=list([0,0,0,0])    
        Zvec=list([0,0,0,0])
        ChiS=0
        
    
        for i in range(4):
            Evec[i]=probvec[i]*n
            Zvec[i]=(nvec[i]-Evec[i])/sqrt(Evec[i])
            ChiS=ChiS+Zvec[i]^2
    
        pvalue=1-ChiD.cum_distribution_function(ChiS)
    
    
    
    
    
    
    
    
    return{
        "n1":nvec[0],
        "n2":nvec[1],
        "n3":nvec[2],
        "n4":nvec[3],        
        "p1":probdecvec[0],
        "p2":probdecvec[1],
        "p3":probdecvec[2],
        "p4":probdecvec[3],
        "ChiS":ChiS,
        "pvalue":pvalue,
        "n":n,
        "group1":group1,
        "group2":group2,
        "group3":group3,
        "group4":group4,
        "prose":prose,
        "prose2":prose2,
        "question":question,
        "null":null,
        "alternative":alternative,
        "grouptype":grouptype,
        "df":df,
        
        
        
        
        
    }
