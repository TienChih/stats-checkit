def generator():
          
        
    
    
    graphtype=randint(0,3)
    scenario=randint(0,2)
    
    if graphtype==0 and scenario==0:
        plottype="scatter plot"
        dataset="studentscleaned"
        command="plot(studentscleaned$FIXME1, studentscleaned$FIXME2)"
        description="the two exam scores for each student"
        FIXME1="score1"
        FIXME2="score2"
        punctuation=" and "
        
        
    if graphtype==0 and scenario==1:
        plottype="scatter plot"
        dataset="starbucks"
        command="plot(starbucks$FIXME1, starbucks$FIXME2)"
        description="the level of protein in each starbucks menu item compared to amount of calories for that item"
        FIXME1="protein"
        FIXME2="calories"
        punctuation=" and "

    if graphtype==0 and scenario==2:
        plottype="scatter plot"
        dataset="arbuthnot"
        command="plot(arbuthnot$FIXME1, arbuthnot$FIXME2)"
        description="the number of boys born in a year in London compared to the number of girls born in the same year, between 1629 and 1710"
        FIXME1="boys"
        FIXME2="girls"
        punctuation=" and "
    
    
    if graphtype==1 and scenario==0:
        plottype="histogram"
        dataset="earthquakes"
        command="hist(earthquakes$FIXME)"
        description="the Richter scale of earthquakes netween 1900 and 1999"
        FIXME1="richter"
        FIXME2=" "
        punctuation=" "
    
    if graphtype==1 and scenario==1:
        plottype="histogram"
        dataset="cherry"
        command="hist(cherry$FIXME)"
        description="the height of 31 trees in the Allegheny National Forest, Pennsylvania, in feet"
        FIXME1="height"
        FIXME2=" "
        punctuation=" "
    
    
    if graphtype==1 and scenario==2:
        plottype="histogram"
        dataset="cherry"
        command="hist(cherry$FIXME)"
        description="the diameter of 31 trees in the Allegheny National Forest, Pennsylvania, in inches, measured 54 inches off the ground"
        FIXME1="height"
        FIXME2=" "
        punctuation=" "
    
    if graphtype==2 and scenario==0:
        plottype="bar chart"
        dataset="burger"
        command="counts = table(burger$FIXME); barplot(counts)"
        description="the prefered burger location of 500 surveyed people"
        FIXME1="best_burger_place"
        FIXME2=" "
        punctuation=" "
    
    if graphtype==2 and scenario==1:
        plottype="bar chart"
        dataset="piracy"
        command="counts = table(piracy$FIXME); barplot(counts)"
        description="the stance of congressional representatives on the 2011 anti-piracy bill"
        FIXME1="stance"
        FIXME2=" "
        punctuation=" "
    
    if graphtype==2 and scenario==2:
        plottype="bar chart"
        dataset="cars93"
        command="counts = table(cars93$FIXME); barplot(counts)"
        description="the type of vehicle released in 1993"
        FIXME1="type"
        FIXME2=" "
        punctuation=" "
    
    
    if graphtype==3 and scenario==0:
        plottype="mosaic plot"
        dataset="resume"
        command="counts = table(resume$FIXME1, resume$FIXME2); mosaicplot(counts)"
        description="whether or not someone got a call back on their resume, and their race"
        FIXME1="race"
        FIXME2="received_callback"
        punctuation=" and "
    
    
    if graphtype==3 and scenario==1:
        plottype="mosaic plot"
        dataset="malaria"
        command="counts = table(malaria$FIXME1, malaria$FIXME2); mosaicplot(counts)"
        description="whether or not someone got a vaccine or placebo for malaria versus whether or not they got infected by malaria"
        FIXME1="treatment"
        FIXME2="outcome"
        punctuation=" and "
    
    
    if graphtype==3 and scenario==2:
        plottype="mosaic plot"
        dataset="sulphinpyrazone"
        command="counts = table(sulphinpyrazone$FIXME1, sulphinpyrazone$FIXME2); mosaicplot(counts)"
        description="whether or not someone treated with sulphinpyrazone for a heart attack, versus the outcome"
        FIXME1="group"
        FIXME2="outcome"
        punctuation=" and "
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return{
        "plottype":plottype,
        "dataset":dataset,
        "command":command,
        "description":description,
        "FIXME1":FIXME1,
        "FIXME2":FIXME2,
        "punctuation":punctuation,
        
        
        
    }
