As an avid beer drinker, I often find myself wanting to try many
different beers that I see at the liquor store. Due to lack of money and
room in my fridge, I leave with just a single 6-pack of a new beer that
I may or may not like. If only there was a way to purchase one pack of
beer that has multiple types of beer inside…

A variety pack of new, cool, and the best beers in the world!

### Top rated beers by style:

## Bocks

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

### Bock variety pack

    bock_pack <- sample_n(all_bocks, 6)
    bock_pack

    ## # A tibble: 6 × 5
    ##    Rank `Beer Name`         Ratings   Avg `Beer Type`
    ##   <int> <chr>               <chr>   <dbl> <chr>      
    ## 1    33 Bokbier             81       3.79 Bock       
    ## 2    NA Maibock             <NA>    NA    Maibock    
    ## 3    NA Trendler Doppelbock <NA>    NA    Doppelbock 
    ## 4    NA Minnator            <NA>    NA    Doppelbock 
    ## 5    NA Spring Bock         <NA>    NA    Maibock    
    ## 6    89 Ironshore Bock      52       3.33 Bock

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

### IPA variety pack

    ipa_pack <- sample_n(all_ipas, 6)
    ipa_pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`                         `Beer Type`    
    ##   <chr>                               <chr>          
    ## 1 Very Hazy                           New England IPA
    ## 2 Emperor Julius                      New England IPA
    ## 3 Innocence                           Belgian IPA    
    ## 4 The Dreamiest                       New England IPA
    ## 5 The Secret Truth of the Universe    American IPA   
    ## 6 Burton Bridge Empire India Pale Ale English IPA

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

### Porter variety pack

    porter_pack <- sample_n(all_porters, 6)
    porter_pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`            `Beer Type`    
    ##   <chr>                  <chr>          
    ## 1 Hamer & Sikkel         English Porter 
    ## 2 Shake Chocolate Porter American Porter
    ## 3 Pendragon Porter       English Porter 
    ## 4 Bricks & Mortar        American Porter
    ## 5 Pressed - Hazelnut     Imperial Porter
    ## 6 German Chocolate Cake  American Porter

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

### Stout variety pack

    stout_pack <- sample_n(all_stouts, 6)
    stout_pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`                                         `Beer Type`            
    ##   <chr>                                               <chr>                  
    ## 1 Bourbon County Brand 30th Anniversary Reserve Stout American Imperial Stout
    ## 2 Earl                                                Oatmeal Stout          
    ## 3 Irish Stout                                         Irish Dry Stout        
    ## 4 The Awakening                                       American Stout         
    ## 5 Baby Scoop3 Sons Brewing Company                    American Stout         
    ## 6 Space Trace                                         American Imperial Stout

Now that I have all of the beer available, let’s join them all together
to begin creating variety packs.

Let’s get packing.

I created a function called “beer picker” that allows the system to
sample through the beers.

## INTERACTIVE INPUT

This is the interactive portion of the project. The “beer picker”
function allows the user to personalize their pack of beer based on
preference.

The “beer\_picker” function is set to (1,2,2,1). This means the variety
pack will consist of one bock, two IPAs, two porters, and one stout.
These values can be changed based on the individual.

    ##                                      Name            Type
    ## 1                          Pandora's Bock            Bock
    ## 2                                   Green New England IPA
    ## 3 Green Killer IPABrasserie de Silly S.A.     Belgian IPA
    ## 4                        Cocoa Wonderland  English Porter
    ## 5                            Gravity Drop   Baltic Porter
    ## 6                         Cranberry Stout   English Stout

    ##                         Name       Type
    ## 1 Augustus 8Brauhaus Riegele Weizenbock
    ## 2                 Niner Bock       Bock
    ## 3                   Quirinus Doppelbock
    ## 4                    Maypole    Maibock
    ## 5                  Eis Maker    Eisbock
    ## 6            Tip Top Maibock    Maibock

    ##                      Name            Type
    ## 1           Travelin' Man     Belgian IPA
    ## 2   Exponential Hoppiness    Imperial IPA
    ## 3                 Glaucus     Belgian IPA
    ## 4  Triple Simcoe Daydream    Imperial IPA
    ## 5 Brighter Than Starlight New England IPA
    ## 6               Amer Amer     Belgian IPA

    ##                                             Name            Type
    ## 1 Coconut Vanilla Java Porter VJPAtwater Brewery  English Porter
    ## 2                      VIMHalf Acre Beer Company   Baltic Porter
    ## 3                       Raspberry Vanilla Porter American Porter
    ## 4                                         Porter  English Porter
    ## 5        Knecht Ruprecht IIThe Lone Pint Brewery American Porter
    ## 6                           Coffee Baltic Porter   Baltic Porter

    ##                                                                   Name
    ## 1                                                   Pan-American Stout
    ## 2                                                         The Claddagh
    ## 3                Bourbon Barrel Aged Dark Star: Coffee, Cacao, Vanilla
    ## 4 Lumberjack Morning Break - Bourbon Barrel-Aged3 Sons Brewing Company
    ## 5                                    Irish Whiskey Aged Scottish Stout
    ## 6                                          Velvet Merlin Oatmeal Stout
    ##                      Type
    ## 1           Oatmeal Stout
    ## 2         Irish Dry Stout
    ## 3           Oatmeal Stout
    ## 4 American Imperial Stout
    ## 5           English Stout
    ## 6           Oatmeal Stout
