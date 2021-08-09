def generator():
    scenario=randint(0,4)
    
    if scenario==0:
        prose="A sociologist wants to know what proportion of a town's residents feel like they trust their neighbors.  They want to find a "
        sample="surveyed residents "
        success1="trusted their neighbors"
        todo="residents should the sociologist survey now"
        
    if scenario==1:
        prose="An engineer wants to know the probability that a new anti-rust coat stays on when exposed to rain-like conditions.  She wants to find a "
        sample="tested samples exposed to rain-like conditions"
        success1="had the coating stay on"
        todo="samples should she now test"        
        
    if scenario==2:
        prose="A university system administrator wants to know what proportion of students in their system prefer online courses.  She wants to find a "
        sample="surveyed students"
        success1="preferred online classes"
        todo="students should she now survey"        
    
    if scenario==3:
        prose="A psychologist wants to know the probability that exposure to a certain simuli increases anxiety.  He wants to find a "
        sample="test subjects"
        success1="had increased anxiety after exposure to the stimuli"
        todo="subjects should now be tested"
        
    if scenario==4:
        prose="A company wants to know what proportion of potential customers prefer their product to their competitors.  They want to find a "
        sample="survey respondents"
        success1="preferred their product to their competitors"
        todo="people should now be surveyed"        
    
    
    
    n=randint(40,80)
    x=randint(15, n-15)
    
    CL=choice([95, 95, 99])
        
    T = RealDistribution('gaussian', 1)
    z = T.cum_distribution_function_inv(1-((100-CL)/200))
    
    MEdec=randint(1,5)
    ME=MEdec*0.01
    
    phat=x/n
    size=ceil(z^2*phat*(1-phat)/ME^2)
    
    return{
        "n":n,
        "x":x,
        "CL":CL,
        "prose":prose,
        "sample":sample,
        "success1":success1,
        "todo":todo,
        "phat":phat,
        "z":z,
        "MEdec":MEdec,
        "size":size,
        
        
    }
