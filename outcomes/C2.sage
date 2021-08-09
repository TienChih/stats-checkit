def generator():
          
        
    pvalue=0
        
    htt=randint(0,2)
    T = RealDistribution('gaussian', 1)
    dummy=randint(1,5)
    sign=choice([-1,1])
    p0dec=choice([0,dummy])
    p0=sign*p0dec*0.01
    
    if sign==-1 and p0dec!=0:
        prefix="-"
    else:
        prefix=" "
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose="A pharmacist is curious about the side effects of a trial drug between males and females.  She wants to know if the difference in rates of side effects between males and females is"
        prose2="She tested the drug on male and female rats."
        sample1="tested male rats"
        sample2="tested female rats"
        success1="developed side effects"
        population1="male rats"
        population2="female rats"
        success2="would develop side effects"
        
    if scenario==1:
        prose="A University is comparing two course management systems, and looks to two other universities and their systems.  They want to know if the difference in approval rates between University A and University B"
        prose2="They poll students from both universities."
        sample1="polled students from University A"
        sample2="polled students from University B"
        success1="approved their course management system"
        population1="University A students"
        population2="University B students"
        success2="would approve of their course management system"
        
    if scenario==2:
        prose="A political scientist wonders about differences in support of a new federal mandate in his city.  He wants to know if the difference in rate of support for the mandate between people who voted for the current incumbent major and those who didnt"
        prose2="He polls both people who voted for, and didn't vote for, the current mayor."
        sample1="polled adults who voted for the current mayor"
        sample2="polled adults who didn't vote for the current mayor"
        success1="supported the new federal mandate"
        population1="people who voted for the mayor"
        population2="people who did not vote for the mayor"
        success2="support the new federal mandate"
        
    if scenario==3:
        prose="A restaurateur wants to know about the difference in percieved quality of service in her eastern and western locations.  She wants to know if the proportion of customers who liked the service"
        prose2="She polls random diners at both the eastern and western locations."
        sample1="polled diners from the eastern location"
        sample2="polled diners from the western location"
        success1="liked the service"
        population1="diners at the eastern location"
        population2="diners at the western location"
        success2="like the service"
        
    if scenario==4:
        prose="A software engineer wonders about the levels of errors in two beta versions of a product.  They want to know if the rates of crashing between version A and version B"
        prose2="They test run each version a number of times."
        sample1="test runs of version A"
        sample2="test runs of version B"
        success1="times the product crashed"
        population1="times running version A"
        population2="times running version B"
        success2="will crash"        
        
        
        
    
    if htt==0:
        ineq="is not equal to"
        ineqsymb="neq"
    if htt==1:
        ineq="is greater than"
        ineqsymb="gneq"
    if htt==2:
        ineq="is less than"
        ineqsymb="lneq"
        
    while(pvalue<0.01 or pvalue>0.1):
        n=randint(100,400)
        x1=randint(15,n-15)
        x2=randint(15,n-15)
        phat=x1/n-x2/n
        if p0==0:
            SE=numerical_approx(sqrt(2*((x1+x2)/(2*n))*(1-(x1+x2)/(2*n))/(n)))
        else:
            SE=numerical_approx(sqrt((x1/n)*(1-x1/n)/n+(x2/n)*(1-x2/n)/n))
        zscore=(phat-p0)/SE
        if htt==0:
            pvalue=(1-(T.cum_distribution_function(abs(zscore))))*2
        elif htt==1:
            pvalue=1-T.cum_distribution_function(zscore)
        elif htt==2:
            pvalue=T.cum_distribution_function(zscore)
    
    
    
    return{
        "n":n,
        "x1":x1,
        "x2":x2,
        "p0dec":p0dec,
        "ineq":ineq,
        "ineqsymb":ineqsymb,
        "phat":phat,
        "pvalue":pvalue,
        "prose":prose,
        "prose2":prose2,
        "sample1":sample1,
        "sample2":sample2,
        "success1":success1,
        "success2":success2,
        "population1":population1,
        "population2":population2,
        "SE":SE,
        "zscore":zscore,
        "htt":htt,
        "prefix":prefix,
        
        
    }
