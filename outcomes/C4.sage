def generator():
          
        
    pvalue=0
    k=3
    l=2
    df=(k-1)*(l-1)
    ChiD=RealDistribution('chisquared', df)
    
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose="A farmer tests two different pesticides on his crops during an insect infestation.  Sprays two sections of his field with the different pestisides, and records the resulting infestation levels:"
        group1="Pesticide A"
        group2="Pesticide B"
        result1="No Infestation"
        result2="Moderate Infestation"
        result3="Severe Infestation"
        question=" whether the level of infestation is independent of the type of pesticide used."
        null="Infestation levels are independent of pesticide type."
        alternative="Infestation levels are not independent of pesticide type."
        
        
    if scenario==1:
        prose="Two professors poll their students to see if they believe their class was difficult.  They students rate the class difficulty as Low, Moderate or High:"
        names=["Dr. Al-Hasan", "Dr. Trahn", "Dr. Nowak", "Dr. Hilado", "Dr. Owens", "Dr. Lewis", "Dr. Lee", "Dr. Morales", "Dr. Jackson", "Dr. Perez", "Dr. Zakharov"]
        shuffle(names)
        group1=names[0]
        group2=names[1]
        result1="Low"
        result2="Medium"
        result3="High"
        question=" whether the percieved difficulty is independent of the professor."
        null="Self-reported levels of difficulty are independent of the professor."
        alternative="Self-reported levels of difficulty are not independent of the professor."
        
    if scenario==2:
        prose="A newspaper polls members of two political parties to measure their position on a newly proposed law.  The polled participants either Support, are Neutral, or Oppose the proposed law:"
        group1="Party A"
        group2="Party B"
        result1="Support"
        result2="Neutral"
        result3="Oppose"
        question=" whether position on this law is independent of party affiliation."
        null="Position on the law is independent of party affiliation."
        alternative="Position on the law is independent of party affiliation."
        
    if scenario==3:
        prose="Two tech companies, Company A and B, recruit students from Universities 1, 2 and 3.  A sampling on recent hires show their Alma Mater:"
        group1="Company A"
        group2="Company B"
        result1="University 1"
        result2="University 2"
        result3="University 3"
        question=" whether hiring preferences of the companies are independent of the company."
        null="Hiring preferences are independent of the company."
        alternative="Hiring preferences are not independent of the company."
        
        
    if scenario==4:
        prose="A psychologist shows two different short videos to test subjects, ans asked them to rate their feelings after the video as Happiness, Anger or Sadness:"
        group1="Video 1"
        group2="Video 2"
        result1="Happiness"
        result2="Anger"
        result3="Sadness"
        question=" whether emotional reactions are independent of the choice of video."
        null="Emotional reactions are independent of the choice of video."
        alternative="Emotional reactions are not independent of the choice of video."    
        
    
    nmatrix=(2,3)
    
    rel1=randint(20, 60)
    rel2=randint(30, 70)
    rel3=randint(40, 80)
    
    relvec=[rel1, rel2, rel3]
    
    shuffle(relvec)
    
    adjust2=uniform(.8,1.2)
    
    n1vec=[0,0,0]
    n2vec=[0,0,0]
    n3vec=[0,0,0]
    
    nmatrix=matrix(l,k)
    Ematrix=matrix(RR, l,k)
    Zmatrix=matrix(RR, l,k)
    
    goodfit=randint(0,1)
    
    while pvalue<0.01 or pvalue>0.1:
    
        for i in range(k):
            n1vec[i]=round(relvec[i]*uniform(.5,1.5))
            n2vec[i]=round(relvec[i]*uniform(.5,1.5)*adjust2)
    
            
    
        if goodfit==0:
            shuffle(n2vec)
    
        nmatrix[0]=n1vec
        nmatrix[1]=n2vec
    
        mvec=sum(nmatrix)
        nvec=sum(nmatrix.T)
    
        n=sum(nvec)
    
        ChiS=0
    
        for i in range(k):
            for j in range(l):
                Ematrix[j, i]=mvec[i]*nvec[j]/n
                Zmatrix[j, i]=(nmatrix[j, i]-Ematrix[j, i])/sqrt(Ematrix[j, i])
                ChiS=ChiS+Zmatrix[j, i]^2
        pvalue=1-ChiD.cum_distribution_function(ChiS)
    
    
    
    
    return{
        "n11":n1vec[0],
        "n12":n1vec[1],
        "n13":n1vec[2],
        "n21":n2vec[0],
        "n22":n2vec[1],
        "n23":n2vec[2],
        
        "ChiS":ChiS,
        "pvalue":pvalue,
        "prose":prose,
        "group1":group1,
        "group2":group2,
        "result1":result1,
        "result2":result2,
        "result3":result3,
        "question":question,
        "null":null,
        "alternative":alternative,
        "df":df,
        
        
        
        
        
    }
