def generator():
          
        
    
    
    Variables=[
        {
            'description':"To estimate the average caloric value of fast food items, 50 fast food items are chosen randomly and their avverage caloric value is computed.",
            'POI':"The average caloric value of all fast food items",
            'PE':"The average caloric value of the selected fast food items",
        }
        ,{
            'description':"To estimate the proportion of people in a voting district who will vote for a congressional candidiate, 100 potential voters in that district are polled for who they will vote for.",
            'POI':"The proportion of all voters in the district who vote for the candidiate",
            'PE':"The proportion of the polled potential voters in the district who vote for the candidiate",
        }
        ,{
            'description':"To estimate the average weight of an adult female african elephant, 200 adult female african elephants are caught and weighed.",
            'POI':"The average weight of an adult female african elephant",
            'PE':"the average weight of the caught and weighed adult female african elephant",
        }
        ,{
            'description':"To estimate the proportion of 4th graders who like math, 150 4th graders are polled about their affinity for math.",
            'POI':"The proportion of all 4th graders who like math",
            'PE':"The proportion of the polled 4th graders who like math",
        }
        ,{
            'description':"To estimate the average mass of a meteorite after hitting earth, 40 meteorites who have hit earth are measured.",
            'POI':"The average mass of all meteorites after hitting earth",
            'PE':"The average mass of the measured meteorites after hitting earth",
        }
        ,{
            'description':"To estimate the proportion of restaurants with vegan options, 60 restaurants are randomly selected and their menus examined.",
            'POI':"The proportion of all restaurants with vegan options",
            'PE':"The proportion of the selected restaurants with vegan options",
        }
        ,{
            'description':"To estimate the average lifespan of a rat, 120 rats are born into captivity have their lifespans tracked.",
            'POI':"The average lifespan of all rats",
            'PE':"The average lifespan of the captive rats",
        }
        ,{
            'description':"To estimate the proportion of mice which may develop tumors, 90 captive rats are examined to see if they develop tumors over their lifetime.",
            'POI':"The proportion of all mice who develop tumors",
            'PE':"The proportion of the captive mice who develop tumors",
        }
        ,{
            'description':"To estimate the average spending on a city council race, 60 randomly chose candidiates of for city council across the country have their budgets examined.",
            'POI':"The average cost of all city council candidiates",
            'PE':"The average cost of the randomly chosen city council candidates",
        }
        ,{
            'description':"To estimate the proportion of children who are homeschooled, 200 children are randomly selected and their schooling information is checked.",
            'POI':"The proportion of all children who are homeschooled",
            'PE':"The proportion of the children selected children who are homeschooled",
        }
        ,{
            'description':"To estimate the average daily time spend playing a mobile game by it's users 1000 users are polled as to their gaming time.",
            'POI':"The average daily time spend playing a mobile game by all it's users",
            'PE':"the average daily time spend playing a mobile game by the selected users",
        }
        ,{
            'description':"To estimate the proportion of wolf cubs who will survive to adulthood, 40 wolf cubs are tracked from birth.",
            'POI':"The proportion of all wolf cubs who survive to adulthood",
            'PE':"The proportion of the tracked wolf cubs who survive to adulthood",
        }
        ,{
            'description':"To estimate the average income in a town, 100 selected residents have their income polled.",
            'POI':"The average income of all residents of the town",
            'PE':"the average income of the polled  residents of the town",
        }
        ,{
            'description':"To estimate the proportion of adults who support a new legislation, 50 adults are polled.",
            'POI':"The proportion of all adults who support the legislation",
            'PE':"The proportion of the polled adults who support the legislation",
        }
        ,{
            'description':"To estimate the average running speed of a breed of dog, 30 dogs are randomly selected and their top speeds measured.",
            'POI':"The average running speed of all dogs of a certian breed",
            'PE':"The average running speed of the selected dogs of a certian breed",
        }
        ,{
            'description':"To estimate the proportion of households in a town who live in poverty, 100 households are surveyed.",
            'POI':"The proportion of all households in a town who live in poverty",
            'PE':"The proportion of the surveyed households in a town who live in poverty",
        }
        ,{
            'description':"To estimate the average textbook costs of students of a university, 100 students are selected and their last semester textbook costs were recorded.",
            'POI':"The average textbook costs of all students attending this university",
            'PE':"The average textbook costs of the selected students attending this university",
        }
        ,{
            'description':"To estimate the proportion of adults in a city who smoke, 200 adults are surveyed.",
            'POI':"The proportion of all adults in the city who smoke",
            'PE':"The proportion of the surveyed adults in the city who smoke",
        }
    ]
    
    
    
    
    shuffle(Variables)
    
    Vars=[Variables[i] for i in range(4)]
    

    
    
    
    
    
    return{
        "Vars":Vars,
        
        
        
    }
