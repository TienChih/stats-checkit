def generator():
          
        
    
    
    scenario=4#=randint(0,4)
    
    if scenario==0:
        initialprose="A soccer team plays a match against the opposing team."
        proseX="  the number of goals they score."
        Xvec=[0,1,2,3,4,5]
        P0=round(uniform(0.2, 0.3),3)
        P2=round(uniform(0.2, 0.3),3)
        P3=round(uniform(0.05, 0.08),3)
        P4=round(uniform(0.0, 0.1),3)
        P5=round(uniform(0.3, P4),3)
        P1=round(1-P0-P2-P3-P4-P5,3)
        Pvec=[P0, P1, P2, P3, P4, P5]

        
        
    if scenario==1:
        initialprose="Consider store that sells primarily PC's.  Each customer that comes in may buy one, none or several PC."
        proseX="  the number of PCs a customer who comes into the store purchases."
        Xvec=[0,1,2,3]
        P1=round(uniform(0.3, 0.4),3)
        P2=round(uniform(0.05, 0.1),3)
        P3=round(uniform(0.0, 0.02),3)
        P0=round(1-P1-P2-P3,3)
        Pvec=[P0, P1, P2, P3]
        
        
    if scenario==2:
        initialprose="Consider a simplified lottery ticket.  It costs $2 to purchase the ticket, and has three possitbe payouts."
        proseX="  the net possible winnings (accounting for the $2 expense)."
        X1=randint(1,2)*5-2
        X2=randint(0,2)*5+20-2
        X3=randint(0,2)*50+100-2
        Xvec=[-2,X1,X2,X3]
        P1=round(uniform(0.1, 0.15),4)
        P2=round(uniform(0.005, 0.01),4)
        P3=round(uniform(0.0, 0.002),4)
        P0=round(1-P1-P2-P3,3)
        Pvec=[P0, P1, P2, P3]
        
        
    if scenario==3:
        initialprose="A math professor is compiling a section for their #PreTeXt book."
        proseX="  the number of errors currently in the code."
        Xvec=[0,1,2,3, 4, 5, 6]
        P0=round(uniform(0.0, 0.1),3)
        P2=round(uniform(0.1, 0.15),3)
        P3=round(uniform(0.1, 0.15),3)
        P4=round(uniform(0.1, 0.15),3)
        P5=round(uniform(0.1, 0.15),3)
        P6=round(uniform(0.1, 0.15),3)
        P1=round(1-P0-P2-P3-P4-P5-P6,3)
        Pvec=[P0, P1, P2, P3, P4, P5, P6]
        
        
    if scenario==4:
        initialprose="A professor decides against using OER's in their statistics class and uses a publisher text instead.  The students have the option of purchase a hardcopy text for 150 dollars, access to a flash e-text for 95 dollars, of a bundle of both for 225 dollars."
        proseX="  the amount spent for this course by randomly selected a student in statistics."
        Xvec=[150,95,225]
        P0=round(uniform(0.4, 0.5),3)
        P1=round(uniform(0.3, 0.45),3)
        P2=round(1-P0-P1,3)
        Pvec=[P0, P1, P2]  
    
    
    L=len(Xvec)
    
    Tvec=[i for i in range(L)]
    
    for i in range(L):
        Tvec[i]=Pvec[i]
    
    
    
    K=randint(0, L-1)
    
    Tvec[K]="{}?{}?{}?"
    
    Ans=Pvec[K]
    XAns=Xvec[K]
    
    TABLE=[]
    
    for i in range(L):
        entry={
            'X':Xvec[i],
            'T':Tvec[i],
            'P':Pvec[i],
        }
        TABLE.append(entry)
    
    
    EX=0
    EXX=0
    VarX=0
    sigmaX=0
    
    for i in range(L):
        EX=EX+Xvec[i]*Pvec[i]
        EXX=EXX+Xvec[i]*Xvec[i]*Pvec[i]
    
    VarX=EXX-EX^2
    
    sigmaX=sqrt(VarX)
    

    
    
    
    
    
    return{
        "initialprose":initialprose,
        "proseX":proseX,
        "TABLE":TABLE,
        "EX":EX,
        "VarX":VarX,
        "sigmaX":sigmaX,
        "Ans":Ans,
        "XAns":XAns,
        
        
        
        
        
    }
