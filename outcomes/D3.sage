def generator():
          
        
    
    
    
    scenario=randint(0,4)
    
    if scenario==0:
        prose="Suppose you had a collection of "
        units=" books"
        n=randint(7,15)
        prompt1=" and arrange them on a book shelf."
        prompt2=" and give one each to different friends of yours."
        prompt3=" to donate to a library."
        prompt4=" to put into storage."
        
    if scenario==1:
        prose="Suppose a butcher has wholesale orders from "
        units=" clients"
        n=randint(20,30)
        prompt1=" and deliver order to them one at a time."
        prompt2=" and arrange them on a waitlist for a new order."
        prompt3=" to offer a special. discount to."
        prompt4=" to delay their order until a future date."
        
    if scenario==2:
        prose="Suppose you had a class of "
        units=" children"
        n=randint(20,30)
        prompt1=" and arrange them so they can take turns giving a presentation."
        prompt2=" and put them in a line to wait their turn for an activity."
        prompt3=" to take on a field trip."
        prompt4=" to give a special assignment."
        
        
    if scenario==3:
        prose="Suppose you had in a freezer "
        units=" ice cream flavors"
        n=randint(7,12)
        prompt1=" and eat them one a day for the next few days ."
        prompt2=" and give one flavor each to different friends."
        prompt3=" to make into a milkshake."
        prompt4=" to throw out to make room in the freezer."
        
        
    if scenario==4:
        prose="Suppose a small business had "
        units=" employees"
        n=randint(10,20)
        prompt1=" and rank them for an internal promotion process ."
        prompt2=" and schedule them one at a time for professional development training."
        prompt3=" to give a raise."
        prompt4=" to assign to a special project."  
    
    
    K=[i for i in range(2,n-1)]
    shuffle(K)
    k1=K[0]
    k2=K[1]
    k3=K[2]
    k4=K[3]
    
    c1=binomial(n,k1)*factorial(k1)
    c2=binomial(n,k2)*factorial(k2)
    c3=binomial(n,k3)
    c4=binomial(n,k4)
    
    question1={
        'prompt':prompt1,
        'k':k1,
        'c':c1,
    }
    
    question2={
        'prompt':prompt2,
        'k':k2,
        'c':c2,
    }
    
    question3={
        'prompt':prompt3,
        'k':k3,
        'c':c3,
    }
    
    question4={
        'prompt':prompt4,
        'k':k4,
        'c':c4,
    }
    
    questions=[question1, question2, question3, question4]
    
    shuffle(questions)
    

    
    
    
    
    
    return{
        "questions":questions,
        "n":n,
        "units":units,
        "prose":prose,
        
        
        
    }
