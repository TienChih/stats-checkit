def generator():
          
        
    
    n=randint(20,50)
    
    ND = RealDistribution('gaussian', 1)
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose1="A cybersecurity firm is testing two emergency shutdown systems.  They want to be able to detect a difference in response times of "
        units=" milliseconds"
        prose2="Suppose the company is aware the shutdown times of both systems have standard deviation "
        answer1="If there were actually a difference in shutdown times of "
        answer2=" a test where the number of trials was "
        question1="What is the power of a test if the number of trials they ran of each was "
        question2="How many trials of each system would the company have to run to detect this difference with power: "
        diffmin=-10
        diffmax=-2
        smin=15
        smax=50
        
    if scenario==1:
        prose1="A kinesiologist wants to compare the average finishing speeds of the 100 meter dash using two training techniques.  She wants to be able to detect a difference of "
        units=" seconds"
        prose2="Suppose she is aware the finishing times of both methods have standard deviation "
        answer1="If there were actually a difference in finishing times of "
        answer2=" a study where the number of observations was "
        question1="What is the power of a test if the number of 100 meter dashes she observed of each training method was "
        question2="How many 100 meter dashes of each training method would she have to observe to detect this difference with power: "
        diffmin=-.25
        diffmax=-.1
        smin=0.4
        smax=0.8
        
    if scenario==2:
        prose1="A farmer testing fertilizers wants to compare the average yield of tomato plants when using two different fertilizers.  They want to be able to detect a difference of  "
        units=" pounds"
        prose2="Suppose they are aware the yield of tomato plants using either fertilizer has standard deviation "
        answer1="If there were actually a difference in average yield of "
        answer2=" a study where the number of observed plants was "
        question1="What is the power of a test if the number of observed tomato plants for both fertilizers was "
        question2="How many tomato plants using each type of fertilizer would have to observe to detect this difference with power: "
        diffmin=-.25
        diffmax=-.1
        smin=.5
        smax=1
        
    if scenario==3:
        prose1="A psychologist is testing average reaction times when testing different stimuli.  He wants to be able to detect a difference of  "
        units=" seconds"
        prose2="Suppose he is aware the reaction times for both stimuli has standard deviation "
        answer1="If there were actually a difference in average reaction time of "
        answer2=" a study where the number of observed reactions was "
        question1="What is the power of a test if the number of reactions for each stimuli was "
        question2="How many reactions for each stimuli would have to observe to detect this difference with power: "
        diffmin=-.1
        diffmax=-.05
        smin=.2
        smax=.3
        
    if scenario==4:
        prose1="A sociologist is comparing the average cost of food expenditures of families with similar incomes, but in different neighborhoods.  They want to be able to detect a difference of  "
        units=" dollars per month"
        prose2="Suppose they are aware that food expenditures for both neighborhoods have standard deviation "
        answer1="If there were actually a difference in average food expenditures of "
        answer2=" a study where the number of observed families was "
        question1="What is the power of a test if the number of families observed from each neighborhood was "
        question2="How many families observed from each neighborhood would be needed to detect this difference with power: "
        diffmin=-50
        diffmax=-10
        smin=100
        smax=150       
        
        
        
    z=ND.cum_distribution_function_inv(0.025)
    power=randint(10, 19)*5
    
    diff=round(uniform(diffmin,diffmax),2)
    s=round(uniform(smin,smax),2)
    SE=numerical_approx(sqrt(2*s^2/n))
    
    cutoff=z*SE
    
    zd=diff/SE
    
    P=ND.cum_distribution_function(z-zd)*100
    
    z2=ND.cum_distribution_function_inv(power/100)
    
    SE2=diff/(z-z2)
    n2=2*s^2/SE2^2
    
    
    
    
    
    return{
        "n":n,
        "power":power,
        "diff":diff,
        "units":units,
        "s":s,
        "P":P,
        "n2":ceil(n2),
        "prose1":prose1,
        "prose2":prose2,
        "question1":question1,
        "question2":question2,
        "answer1":answer1,
        "answer2":answer2,
        "cutoff":cutoff,
        "SE":SE,
        "z2":z2,
        "SE2":SE2,
        
        
    }
