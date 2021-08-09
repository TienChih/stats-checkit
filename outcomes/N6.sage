def generator():
    
    pvalue=0
    n1=randint(30,50)
    n2=randint(30,50)
    n3=randint(30,50)
    
    n=n1+n2+n3
    dfG=3-1
    dfE=n-3
    
    FD = RealDistribution('F', [dfG,dfE])
    
    
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose1="An outside consultant audits the pay of company employees from three different divisions with identical performance in order to identity discrepency. "
        sample=" employees."
        group1="The average salary of employees in Division A was "
        group2="The average salary of employees in Division B was "
        group3="The average salary of employees in Division C was "
        average1="The mean salary of all "
        average2=" sampled employees was "
        units=" thousand dollars"
        null=" any difference in salaries between employees of different divisions is explainable solely by the variation within the Divisions."
        alternative=" any differences in salaries between employees of different divisions is not explainable solely by the variation within the Divisions."
        mmin=45
        mmax=55
        smin=2
        smax=5
        
        
    if scenario==1:
        prose1="A physician studies the daily calcium intake of test subjects under three different health regiments, in order to see if there is any difference. "
        sample=" test subjects."
        group1="The average daily calcium intake for test subjects under Regiment A was "
        group2="The average daily calcium intake for test subjects under Regiment B was "
        group3="The average daily calcium intake for test subjects under Regiment C was "
        average1="The average daily calcium intake of all "
        average2=" test subjects was "
        units=" mg"
        null=" any differences in the average daily calcium intake of test subjects under different Regiments is explainable solely by the variation within the Regiments."
        alternative=" any differences in the average daily calcium intake of test subjects under different Regiments is not explainable solely by the variation within the Regiments."
        mmin=800
        mmax=1000
        smin=40
        smax=80
        
    if scenario==2:
        prose1="A psychologist divides test subjects into different groups where they under a different digital interactive experience. Afterwards, she measures their resting heart rates to see if there was any difference."
        sample=" test subjects."
        group1="The average resting heart rate for test subjects in Group A was "
        group2="The average resting heart rate for test subjects in Group B was "
        group3="The average resting heart rate for test subjects in Group C was "
        average1="The average resting heart rate of all "
        average2=" test subjects was "
        units=" bpm"
        null=" any differences in the average resting heart rate of test subjects under different Groups is explainable solely by the variation within the Groups."
        alternative=" any differences in the average resting heart rate of test subjects under different Groups is not explainable solely by the variation within the Groups."
        mmin=70
        mmax=90
        smin=8
        smax=12
        
    if scenario==3:
        prose1="A materials engineer tests the average electrical conductivity of three different experimental alloys so she can see if there was any difference."
        sample=" alloy samples."
        group1="The average electrical conductivity for alloy samples of Alloy A was "
        group2="The average electrical conductivity for alloy samples of Alloy B was "
        group3="The average electrical conductivity for alloy samples of Alloy C was "
        average1="The average electrical conductivity of all "
        average2=" sample alloys was "
        units=" million Siemens/meter"
        null=" any differences in the average electrical conductivity for alloy samples of different Alloys is explainable solely by the variation within the Alloys."
        alternative=" any differences in the average electrical conductivity for alloy samples of different Alloys is not explainable solely by the variation within the Alloys."
        mmin=70
        mmax=90
        smin=8
        smax=12
        
    if scenario==4:
        prose1="A financial analyst examine the growth rate of different investments from three different investment portfolios over the last year, so they can see if there was any average difference."
        sample=" analyzed investment."
        group1="The average rate of return for investments in Portfolio A was "
        group2="The average rate of return for investments in Portfolio B was "
        group3="The average rate of return for investments in Portfolio C was "
        average1="The average rate of return for of all "
        average2=" analyzed investments was "
        units=" %"
        null=" any differences in the average  rate of return for investments in different Portolios is explainable solely by the variation within the Portfolios."
        alternative=" any differences in the average  rate of return for investments in different Portolios is not explainable solely by the variation within the Portfolios."
        mmin=5
        mmax=15
        smin=4
        smax=15    
        
    indy=randint(0,1)    
        
    while pvalue<0.01 or pvalue>0.1:
        m1=round(uniform(mmin, mmax),3)
        m2=round(m1*uniform(0.9, 1.1),3)
        m3=round(m2*uniform(0.9, 1.1),3)
        s1=round(uniform(smin, smax),3)
        s2=round(uniform(smin, smax),3)
        s3=round(uniform(smin, smax),3)
        
        if indy==1:
            adjust2=uniform(0.7, 1.5)
            adjust3=uniform(0.7, 1.5)
            m2=round(m2*adjust2,3)
            s2=round(s2*adjust2,3)
            m3=round(m3*adjust3,3)
            s3=round(s3*adjust3,3)
        
        mean=(m1*n1+m2*n2+m3*n3)/n
        Tsg=n1*(m1-mean)^2+n2*(m2-mean)^2+n3*(m3-mean)^2
        Tse=(n1-1)*s1^2+(n2-1)*s2^2+(n3-1)*s3^2
        Msg=Tsg/dfG
        Mse=Tse/dfE
        F=Msg/Mse
        pvalue=1-FD.cum_distribution_function(F)
        
    
    
    
    
    
    return{
        "m1":m1,
        "m2":m2,
        "m3":m3,
        "s1":s1,
        "s2":s2,
        "s3":s3,
        "n1":n1,
        "n2":n2,
        "n3":n3,
        "n":n,
        "mean":round(mean,4),
        "pvalue":pvalue,
        "prose1":prose1,
        "sample":sample,
        "group1":group1,
        "group2":group2,
        "group3":group3,
        "average1":average1,
        "average2":average2,
        "units":units,
        "null":null,
        "alternative":alternative,
        
        
        
    }
