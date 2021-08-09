def generator():
          
        
    
    
    scenario=randint(0,4)
    
    if scenario==0:
        initialprose="A governer is running for re-election.  We consider the events that a voter votes for them, and the event that they are from a rural part of the state."
        proseX="  a randomly selected voter votes for the governor"
        proseY="   a randomly selected voter is from a rural part of the state"
        proseXgY="  a randomly selected voter votes for the governor, given that they are from a rural part of the state"
        proseXgYc="  a randomly selected voter votes for the governor, given that they are not from a rural part of the state"
        proseYgX="   a randomly selected voter is from a rural part of the state, given that they voted for the governor"
        PXgY=round(uniform(0.6, 0.7),2)
        PXgYc=round(uniform(0.2, 0.3),2)
        PY1=round(uniform(0.1, 0.8),2)
        PX2=round(uniform(PXgYc+0.1, PXgY-0.1),2)

        
        
    if scenario==1:
        initialprose="A test is administered for a health condition.  We consider the events that they test positive for the condition, and the event they have the condition."
        proseX="  the subject tests positive for the condition"
        proseY="   the subject has  the condition"
        proseXgY="  the subject tests positive for the condition, given that they have the condition"
        proseXgYc="  the subject tests positive for the condition, given that they do not have the condition"
        proseYgX="   the subject has the condition, given that they test positive for the condition"
        PXgY=round(uniform(0.95, 0.99),2)
        PXgYc=round(uniform(0.1, 0.3),2)
        PY1=round(uniform(0.1, 0.3),2)
        PX2=round(uniform(PXgYc+0.1, PXgY-0.3),2)
        
        
    if scenario==2:
        initialprose="A manufacturer has two facilities A and B, each of whome occasionally produce defects.  We consider the events that a product is defective, and the event the product was manufactured in facility A."
        proseX="  a randomly selected product was defective"
        proseY="   a randomly selected product was manufactured in facility A"
        proseXgY="  a randomly selected product is defective given that it was manufactured in facility A"
        proseXgYc="  a randomly selected product is defective given that it was not manufactured in facility A"
        proseYgX="   a randomly selected subject was manufactured in facility A, given that it was defective"
        PXgY=round(uniform(0.005, 0.01),4)
        PXgYc=round(uniform(0.001, 0.003),4)
        PY1=round(uniform(0.3, 0.7),2)
        PX2=round(uniform(PXgYc+0.001, PXgY-0.001),4)
        
        
    if scenario==3:
        initialprose="Consider a town where sometimes it is cloudy, and sometimes it is raining.  We consider the events that it rains by the evening, and the event it is cloudy in the morning."
        proseX="  it rains by evening"
        proseY="   it is cloudy in the morning"
        proseXgY="  it rains by evening, given that it was cloudy in the morning"
        proseXgYc="  it rains by evening, given that it was not cloudy in the morning"
        proseYgX="   it was cloudy in the morning, given that it rains by the evening"
        PXgY=round(uniform(0.6, 0.8),2)
        PXgYc=round(uniform(0.01, 0.08),2)
        PY1=round(uniform(0.3, 0.7),2)
        PX2=round(uniform(PXgYc+0.1, PXgY-0.1),2)
        
        
    if scenario==4:
        initialprose="Consider a radar detecting other aircraft while in flight.  It occasionally fails to detect other aircraft or gives a false indication that aircraft are close by when they are not.  We consider the events that it indicates other aircraft are close by, and the event other aircraft are close by."
        proseX="  it indicates other aircraft are close by"
        proseY="   other aircraft are close by"
        proseXgY="  it indicates other aircraft are close by given that other aircraft is close by"
        proseXgYc="  it indicates other aircraft are close by given that other aircraft are not close by"
        proseYgX="   other aircraft are close by, given that the radar indicates they are"
        PXgY=round(uniform(0.93, 0.97),2)
        PXgYc=round(uniform(0.04, 0.08),2)
        PY1=round(uniform(0.1, 0.3),2)
        PX2=round(uniform(PXgYc+0.1, PXgY-0.1),2)  
    
    
    isindy=" are not independent"
    
    
    PX1=PXgY*PY1+PXgYc*(1-PY1)
    PYgX1=PXgY*PY1/(PXgY*PY1+PXgYc*(1-PY1))
    
    PY2=(PX2-PXgYc)/(PXgY-PXgYc)
    
    
    
    

    
    
    
    
    
    return{
        "initialprose":initialprose,
        "proseX":proseX,
        "proseXgY":proseXgY,
        "proseY":proseY,
        "proseYgX":proseYgX,
        "proseXgYc":proseXgYc,
        
        "PX1":PX1,
        "PX2":PX2,
        "PY1":PY1,
        "PY2":PY2,
        "PXgY":PXgY,
        "PXgYc":PXgYc,
        "PYgX1":PYgX1,
        
        
        
        
        
    }
