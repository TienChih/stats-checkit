def generator():
          
        
    
    
    c1=randint(2,5)
    c2=randint(2,5)
    c3=randint(2,5)
    
    sign1=(-1)^randint(0,1)
    sign2=(-1)^randint(0,1)
    sign3=(-1)^randint(0,1)
    
    op1=" "
    op2="+"
    op3="+"
    
    if sign1==-1:
        op1="-"
    if sign2==-1:
        op2="-"    
    if sign3==-1:
        op3="-"

    EX=randint(10,20)
    VX=randint(3,6)
    
    EY=randint(20,40)
    VY=randint(6,12)
    
    EZ=sign1*c1*EX+sign2*c2*EX+sign3*c3*EY
    VZ=(c1^2)*VX+(c2^2)*VX+(c3^2)*VY
    sZ=sqrt(VZ*1.0)
    
    
    
    
    return{
        "c1":c1,
        "c2":c2,
        "c3":c3,
        "op1":op1,
        "op2":op2,
        "op3":op3,
        "EX":EX,
        "VX":VX,
        "EY":EY,
        "VY":VY,
        "EZ":EZ,
        "VZ":VZ,
        "sZ":sZ,
        
        
        
        
        
    }
