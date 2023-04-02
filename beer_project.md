As an avid beer drinker, I often find myself wanting to try many
different beers that I see at the liquor store. Due to lack of money and
room in my fridge, I leave with just a single 6-pack of a new beer that
I may or may not like. If only there was a way to purchase one pack of
beer that has multiple types of beer inside…

A variety pack of new, cool, and the best beers in the world!

### Top rated beers by style:

## Bocks

## All bocks

    ## # A tibble: 100 × 5
    ##     Rank `Beer Name`                         Ratings   Avg `Beer Type`
    ##    <int> <chr>                               <chr>   <dbl> <chr>      
    ##  1     1 Funeral Bock                        37       4.19 Bock       
    ##  2     2 Christmas Bock                      16       4.28 Bock       
    ##  3     3 Bourbon Love Honey Barrel-Aged Bock 26       4.17 Bock       
    ##  4     4 Mystic Bock                         12       4.24 Bock       
    ##  5     5 Genuine Bock Beer                   31       4.07 Bock       
    ##  6     6 La Trappe Bockbier                  305      3.98 Bock       
    ##  7     7 Holiday Bock                        26       4.06 Bock       
    ##  8     8 Aass Bock                           67       3.99 Bock       
    ##  9     9 Ayinger Winterbock                  50       4    Bock       
    ## 10    10 Baphomet Bock                       34       4.02 Bock       
    ## # … with 90 more rows

    ## # A tibble: 6 × 5
    ##    Rank `Beer Name`                 Ratings   Avg `Beer Type`
    ##   <int> <chr>                       <chr>   <dbl> <chr>      
    ## 1    48 Dreher Bak                  56       3.71 Bock       
    ## 2    NA Hofbräu Delicator           <NA>    NA    Doppelbock 
    ## 3    NA Jötunheimr                  <NA>    NA    Eisbock    
    ## 4    NA Snow Weizen                 <NA>    NA    Weizenbock 
    ## 5    NA Apfelstrudel Doppelbock     <NA>    NA    Doppelbock 
    ## 6    NA Erdinger Weissbier Pikantus <NA>    NA    Weizenbock

## India Pale Ales

    ## # A tibble: 491 × 2
    ##    `Beer Name`          `Beer Type` 
    ##    <chr>                <chr>       
    ##  1 Curiosity Twenty Two American IPA
    ##  2 Susan                American IPA
    ##  3 Curiosity Fourteen   American IPA
    ##  4 Curiosity Thirteen   American IPA
    ##  5 Nelson               American IPA
    ##  6 Axe Man              American IPA
    ##  7 Yellow Rose          American IPA
    ##  8 Project Dank         American IPA
    ##  9 The Pupil            American IPA
    ## 10 Sculpin              American IPA
    ## # … with 481 more rows

    ## # A tibble: 6 × 2
    ##   `Beer Name`                                `Beer Type`    
    ##   <chr>                                      <chr>          
    ## 1 Infidel                                    Belgian IPA    
    ## 2 Joker IPAWilliams Brothers Brewing Company English IPA    
    ## 3 HDHC All Citra Everything                  Imperial IPA   
    ## 4 Very Green                                 New England IPA
    ## 5 Sartori Harvest IPADriftwood Brewery       American IPA   
    ## 6 Biggie, Biggie, Biggie                     New England IPA

## Porters

    ## # A tibble: 429 × 2
    ##    `Beer Name`               `Beer Type`    
    ##    <chr>                     <chr>          
    ##  1 Everett                   American Porter
    ##  2 Maple Bacon Coffee Porter American Porter
    ##  3 Last Snow                 American Porter
    ##  4 Vanilla Joe               American Porter
    ##  5 Twilight Of The Idols     American Porter
    ##  6 Infusion A Coffee Porter  American Porter
    ##  7 The Illest                American Porter
    ##  8 Edmund Fitzgerald         American Porter
    ##  9 Koko Buni                 American Porter
    ## 10 Hearthbound               American Porter
    ## # … with 419 more rows

    ## # A tibble: 6 × 2
    ##   `Beer Name`        `Beer Type`    
    ##   <chr>              <chr>          
    ## 1 Smoke House Porter Smoked Porter  
    ## 2 Pressed - Maple    Imperial Porter
    ## 3 Sue                Smoked Porter  
    ## 4 Mocha Marlin       American Porter
    ## 5 Dark Thread Porter American Porter
    ## 6 Eleanor            American Porter

## Stouts

    ## # A tibble: 470 × 2
    ##    `Beer Name`                                         `Beer Type`            
    ##    <chr>                                               <chr>                  
    ##  1 Kentucky Brunch Brand Stout                         American Imperial Stout
    ##  2 Vanilla Bean Assassin                               American Imperial Stout
    ##  3 Abraxas - Barrel-Aged                               American Imperial Stout
    ##  4 O.W.K.Side Project Brewing                          American Imperial Stout
    ##  5 Hunahpu's Imperial Stout - Double Barrel Aged       American Imperial Stout
    ##  6 Blessed                                             American Imperial Stout
    ##  7 Beer:Barrel:Time Rye 2022Side Project Brewing       American Imperial Stout
    ##  8 Mornin' Delight                                     American Imperial Stout
    ##  9 Barrel Aged Imperial German Chocolate Cupcake Stout American Imperial Stout
    ## 10 Fundamental Observation                             American Imperial Stout
    ## # … with 460 more rows

    ## # A tibble: 6 × 2
    ##   `Beer Name`                      `Beer Type`            
    ##   <chr>                            <chr>                  
    ## 1 Snowed In - Cherry               Oatmeal Stout          
    ## 2 Rise Up Coffee Stout             American Stout         
    ## 3 Cobblestone Stout                Irish Dry Stout        
    ## 4 Pirate Bomb!Prairie Artisan Ales American Imperial Stout
    ## 5 Gwin Du Oatmeal Stout            Oatmeal Stout          
    ## 6 Smells Like Bean Spirit          American Stout

Now that I have all of the beer available, let’s join them all together
to begin creating variety packs.

Let’s get packing.

I created a function called “beer picker” that allows the system to
sample through the beers.

## INTERACTIVE INPUT

This is the interactive portion of the project. The “beer picker”
function allows the user to personalize their pack of beer based on
preference.

As you see in the variety pack, it shows “beer\_picker(1,2,2,1).” This
means your variety pack will consist of one bock, two IPAs, two porters,
and one stout. These values can be changed based on the individual.

    ##                        Name            Type
    ## 1               Dinkel Bock            Bock
    ## 2  Water Balloon Fight Club    Imperial IPA
    ## 3 More Citra Than All Citra    Imperial IPA
    ## 4               Black Pearl Imperial Porter
    ## 5              Killer Boots  English Porter
    ## 6 Shakespeare Oatmeal Stout   Oatmeal Stout

    ##                           Name       Type
    ## 1 EKU 28Kulmbacher Brauerei AG Doppelbock
    ## 2                  Blonde Bock    Maibock
    ## 3            Der Schwarze Bock Doppelbock
    ## 4                  Noche Buena       Bock
    ## 5      Berkshire Maibock Lager    Maibock
    ## 6                Winter Böckle       Bock

    ##                                                   Name            Type
    ## 1                               Curiosity Twenty Seven    Imperial IPA
    ## 2 Vedett Extra Ordinary IPABrouwerij Duvel Moortgat NV     Belgian IPA
    ## 3                       Juice Project - Citra + Galaxy    Imperial IPA
    ## 4                                         Focal Banger New England IPA
    ## 5                           Worthington's White Shield     English IPA
    ## 6                                    Nelson Single Hop    American IPA

    ##                                         Name            Type
    ## 1                   Peanut Butter Cup Porter  English Porter
    ## 2 Barrel-Aged Framinghammer - Graham Cracker   Baltic Porter
    ## 3                       Abstraction - Coffee Imperial Porter
    ## 4                                        Rub   Smoked Porter
    ## 5                              Coffee Porter  English Porter
    ## 6                             Dark Reckoning   Baltic Porter

    ##                 Name                    Type
    ## 1   Bourbon Paradise American Imperial Stout
    ## 2    Breakfast Stout           Oatmeal Stout
    ## 3     Mena Dhu Stout           English Stout
    ## 4   Irish Table Beer         Irish Dry Stout
    ## 5 Black Mo Dry Stout         Irish Dry Stout
    ## 6       O.V.L. Stout         Irish Dry Stout
