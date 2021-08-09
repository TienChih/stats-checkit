def generator():
          
        
    indy=randint(0,1)
    
    
    scenario=randint(0,4)
    
    if scenario==0:
        initialprose="We randomly select a customer from a store and consider the events that they purchase over $100, and the event they use a credit card."
        proseX="  the customer purchases over $100"
        proseY="   the customer uses a credit card"
        proseXgY="  the customer purchases over $100 given that they use a credit card"
        proseXandY="   the customer purchases over $100 and uses a credit card"
        proseYgX="   the customer uses a credit card, given that they purchased over $100"
        PX=round(uniform(0.05, 0.1),3)
        PY=round(uniform(0.6, 0.8),3)
        PXgY=PX
        if indy==0:
            PXgY=round(uniform(PX, 0.1),3)

        
        
    if scenario==1:
        initialprose="A patient is tested for a disease.  We consider the events that they test positive for the disease, and the event that they have the disease."
        proseX="  the patient tests positive for the disease"
        proseY="   the patient has the disease"
        proseXgY="  the patient tests positive for the disease, given that they have it"
        proseXandY="   the patient has the disase and tests positive for it"
        proseYgX="   the patient has the disease, given that they've tested positive for it"
        PY=round(uniform(0.01, 0.04),4)
        PXgY=round(uniform(0.95, 0.99),2)
        PX=round(PXgY*PY+(1-PY)*0.05,4)
        
        
    if scenario==2:
        initialprose="An interview coach promises employees of a company that going through their course will help applicants get a promotion.  We consider the events that an applicant is promoted and the event that they go through the course."
        proseX="  the applicant gets a promotion"
        proseY="   the applicant goes through the course"
        proseXgY="  the applicant gets a promotion given that they wen't through the course"
        proseXandY="   the applicant both got a promotion and went through the course"
        proseYgX="   the customer went through the course, given that they got a promotion"
        PX=round(uniform(0.2, 0.35),2)
        PY=round(uniform(0.1, 0.2),2)
        PXgY=PX
        if indy==0:
            PXgY=round(uniform(PX, 0.35),3)
        
        
    if scenario==3:
        initialprose="A company advertises a spray that is meant to prevent insect infestations of crops.  We consider the events that a farmer has an insect i festation of their crops, and the event that they use the spray."
        proseX="  the farmer's crops have an infestation"
        proseY="   the farmer uses the spray"
        proseXgY="  the farmer has an infestation of their crops given that they use the spray"
        proseXandY="   the farmer has an infestation of their crops and they use the spray"
        proseYgX="   the farmer uses the spray, given that they had an infestation of their crops"
        PX=round(uniform(0.2, 0.30),2)
        PY=round(uniform(0.3, 0.5),2)
        PXgY=PX
        if indy==0:
            PXgY=round(uniform(0.1, PX),2)
        
        
    if scenario==4:
        initialprose="A delivery service operates in a city where it snows in the winter. Suppose it is now winter.  We consider the events that on a randomly selected day that they are late making deliveries, and the event that it snows that day."
        proseX="  the service is late on this day"
        proseY="   it snows on this day"
        proseXgY="  the service is late given that it snows on this day"
        proseXandY="   the service is late and it snows on this day"
        proseYgX="   it snows, given that the service is late on this day"
        PY=round(uniform(0.05, 0.25),2)
        PXgY=round(uniform(0.7, 0.8),2)
        PX=round(PXgY*PY+(1-PY)*0.05,2)  
    
    
    isindy=" are not independent"
    
    
    PXandY=PY*PXgY
    PYgX=PXandY/PX
    
    if PX==PXgY:
        isindy=" are independent"
    
    
    
    

    
    
    
    
    
    return{
        "initialprose":initialprose,
        "proseX":proseX,
        "proseXgY":proseXgY,
        "proseY":proseY,
        "proseYgX":proseYgX,
        "proseXandY":proseXandY,
        
        "PX":PX,
        "PY":PY,
        "PXgY":PXgY,
        "PYgX":PYgX,
        "PXandY":PXandY,
        
        "isindy":isindy,
        
        
        
        
    }
