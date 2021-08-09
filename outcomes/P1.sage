def generator():
          
        
    probtype=0
    
    
    scenario=randint(0,4)
    
    if scenario==0:
        initialprose="We consider the event that there is an accident over the course of the day, and the event that it rains."
        proseX="  there is an accident on a road over the course of a day"
        proseY="   it rains over the course of a day"
        proseXandY="  there is an accident on a road and it rains over the course of a day"
        proseXorY="   it rains, or there is an accident, over the course of a day"
        PXandY=round(uniform(0.008, 0.012),4)
        PXandYc=round(uniform(0.008, 0.012),4)
        PXcandY=round(uniform(0.088, 0.092),4)
        PXcandYc=round(1-PXandY-PXandYc-PXcandY,4)
        proseXcandY=" there is no accident on the road but it rains over the course of a day"
        proseXandYc=" there is an accident on the road but it doesn't rain over the course of a day"
        proseXcorY=" there is no accident on the road or it rains over the course of a day"
        proseXorYc=" there is an accident on the road or it doesn't rain over the course of a day"

        
        
    if scenario==1:
        initialprose="We consider the event that at a fast food resturaunt, a random customer orders burgers, and the event they order fries.  We consider an arbitrarily selected customer."
        proseX="  the customer orders a burger"
        proseY="   the customer orders fries"
        proseXandY="  the customer orders both burger and fries"
        proseXorY="   the customer orders either burger or fries"
        PXandY=round(uniform(0.45, 0.6),4)
        PXandYc=round(uniform(0.008, 0.012),4)
        PXcandY=round(uniform(0.088, 0.092),4)
        PXcandYc=round(1-PXandY-PXandYc-PXcandY,4)
        proseXcandY=" the customer does not order a burger, but does order fries"
        proseXandYc=" the customer orders a burger, but does not order fries"
        proseXcorY=" the customer does not order a burger, or they do order fries"
        proseXorYc=" the customer  orders a burger, or does not order fries"
        
    if scenario==2:
        initialprose="We consider the event that a restaurant in a large city accepts Visa credit cards, and the event that they accept Mastercard.  We consider a randomly selected restaurant."
        proseX="  the restaurant accepts Visa"
        proseY="   the restaurant accepts Mastercard"
        proseXandY="  the restaurant accepts both Visa and Mastercard"
        proseXorY="   the restaurant accepts at least one of Visa or  Mastercard (but possibly not both)"
        PXandY=round(uniform(0.5, 0.6),4)
        PXandYc=round(uniform(0.1, 0.2),4)
        PXcandY=round(uniform(0.1, 0.2),4)
        PXcandYc=round(1-PXandY-PXandYc-PXcandY,4)
        proseXcandY=" the  restaurant does not accept Visa but does accept Mastercard"
        proseXandYc=" the  restaurant  accepts Visa but does not accept Mastercard"
        proseXcorY="  the  restaurant does not accept Visa or it does accept Mastercard"
        proseXorYc=" the  restaurant  accepts Visa or it does not accept Mastercard"
        
        
    if scenario==3:
        initialprose="An employee has requested both a raise and a promotion.  We consider the event that they recieve a raise, and the event they recieve a promotion."
        proseX="  the employee gets a raise"
        proseY="   the employee gets a promotion"
        proseXandY="  the employee gets a raise and a promotion"
        proseXorY="   the employee gets either a raise or a promotion"
        PXandY=round(uniform(0.3, 0.45),4)
        PXandYc=round(uniform(0.1, 0.3),4)
        PXcandY=round(uniform(0.1, 0.3),4)
        PXcandYc=round(1-PXandY-PXandYc-PXcandY,4)
        proseXcandY=" the employee does not get a raise but they do get a promotion"
        proseXandYc=" the employee gets a raise but they do not get a promotion"
        proseXcorY="  the employee does not get a raise or they do get a promotion"
        proseXorYc=" the employee gets a raise or they do not get a promotion"
        
        
    if scenario==4:
        initialprose="We consider a randomly selected student at a university, and consider the events that they major in biology and that they major in psychology"
        proseX="  the student is a biology major"
        proseY="   the student is a psychology major"
        proseXandY="  the student is both a biology and a pscyhology major"
        proseXorY="   the student is a biology major or the student is a psychology major"
        PXandY=round(uniform(0.01, 0.002),4)
        PXandYc=round(uniform(0.01, 0.05),4)
        PXcandY=round(uniform(0.01, 0.05),4)
        PXcandYc=round(1-PXandY-PXandYc-PXcandY,4)
        proseXcandY=" the student is not a biology major but is a psychology major"
        proseXandYc=" the student is  a biology major but is not a psychology major"
        proseXcorY="  the student is not a biology major or is a psychology major"
        proseXorYc=" the student is  a biology major or is not a psychology major"  
    
    
    
    PX=round(PXandY+PXandYc,4)
    PY=round(PXandY+PXcandY,4)
    PXorY=round(PXandY+PXandYc+PXcandY,4)
    PXorYc=round(PXandY+PXandYc+PXcandYc,4)
    PXcorY=round(PXcandY+PXcandYc+PXandY,4)
    
    Prosevec=[proseX, proseY, proseXandY, proseXorY]
    Probvec=[PX, PY, PXandY, PXorY]
    
    I=[i for i in range(4)]
    shuffle(I)
    
    question2=proseXcandY
    question3=proseXorYc
    answer2=PXcandY
    answer3=PXorYc
    
    if probtype==1:
        question2=proseXandYc
        question3=proseXcorY
        answer2=PXandYc
        answer3=PXcorY
    
    
    
    

    
    
    
    
    
    return{
        "initialprose":initialprose,
        "setup1":Prosevec[I[0]],
        "prob1":Probvec[I[0]],
        "setup2":Prosevec[I[1]],
        "prob2":Probvec[I[1]],
        "setup3":Prosevec[I[2]],
        "prob3":Probvec[I[2]],
        "question1":Prosevec[I[3]],
        "answer1":Probvec[I[3]],
        "question2":question2,
        "answer2":answer2,
        "question3":question3,
        "answer3":answer3,
        
        
        
        
    }
