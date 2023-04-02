As an avid beer drinker, I often find myself wanting to try many
different beers that I see at the liquor store. Due to lack of money and
room in my fridge, I leave with just a single 6-pack of a new beer that
I may or may not like. If only there was a way to purchase one pack of
beer that has multiple types of beer inside…

A variety pack of new, cool, and the best beers in the world!

### Top rated beers by style:

## Bocks

### Bock variety pack

    ## # A tibble: 6 × 5
    ##    Rank `Beer Name`                                        Ratings   Avg Beer …¹
    ##   <int> <chr>                                              <chr>   <dbl> <chr>  
    ## 1    NA Ettaler Curator Doppelbock Original German Version <NA>    NA    Doppel…
    ## 2    32 Bock                                               14       3.85 Bock   
    ## 3    NA Shegöat                                            <NA>    NA    Weizen…
    ## 4    NA Granitbock Ice                                     <NA>    NA    Eisbock
    ## 5     6 La Trappe Bockbier                                 305      3.98 Bock   
    ## 6    NA Schtüpulator                                       <NA>    NA    Doppel…
    ## # … with abbreviated variable name ¹​`Beer Type`

## India Pale Ales

### IPA variety pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`                     `Beer Type` 
    ##   <chr>                           <chr>       
    ## 1 The Assayer                     Imperial IPA
    ## 2 Johnny Juice Bomb               English IPA 
    ## 3 Hopus                           Belgian IPA 
    ## 4 MoralitéBrasserie Dieu du Ciel! American IPA
    ## 5 Drippy Church                   American IPA
    ## 6 Hopulization                    Imperial IPA

## Porters

### Porter variety pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`                  `Beer Type`    
    ##   <chr>                        <chr>          
    ## 1 ÖöPõhjala Brewery & Tap Room Baltic Porter  
    ## 2 Peanut Butter Porter         American Porter
    ## 3 Frayja                       Baltic Porter  
    ## 4 Gravity Drop                 Baltic Porter  
    ## 5 Aile Smoked Celtic Porter    English Porter 
    ## 6 5Beans                       Baltic Porter

## Stouts

### Stout variety pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`    `Beer Type`            
    ##   <chr>          <chr>                  
    ## 1 Single Stack   American Stout         
    ## 2 Persist        American Imperial Stout
    ## 3 Rubus Cacao    American Stout         
    ## 4 The Awakening  American Stout         
    ## 5 Paddy Wagon    Irish Dry Stout        
    ## 6 Tom Swamp Road American Stout

Now that I have all of the beer available, I joined them all together to
begin creating variety packs.

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

Let’s get packing.

## INTERACTIVE INPUT

This is the interactive portion of the project. The “beer picker”
function allows the user to personalize their pack of beer based on
preference.

The “beer\_picker” function is set to (1,2,2,1). This means the variety
pack will consist of one bock, two IPAs, two porters, and one stout.
These values can be changed based on the individual.

### Variety pack

    ##                                      Name            Type
    ## 1         Decapitator Bourbon Barrel Aged      Doppelbock
    ## 2 Green Killer IPABrasserie de Silly S.A.     Belgian IPA
    ## 3                                Sure Bet    Imperial IPA
    ## 4                      Tall Dark & Smokey  English Porter
    ## 5                               Catharsis American Porter
    ## 6                                  Caligo   Oatmeal Stout

### Bock variety pack

    ##                        Name       Type
    ## 1        Bocks Of Chocolate Doppelbock
    ## 2                Doppelbock Doppelbock
    ## 3 Old Chico Brand Pale Bock    Maibock
    ## 4             Doppel-Hirsch Doppelbock
    ## 5                Older Gods    Maibock
    ## 6        Ellicottville Bock    Maibock

### IPA variety pack

    ##                                          Name            Type
    ## 1                             Perler For Svin     English IPA
    ## 2                                Death Valley     Belgian IPA
    ## 3                            Beowulf IPABrick     English IPA
    ## 4                         Three Magic Letters    American IPA
    ## 5                     Primátor India Pale Ale     English IPA
    ## 6 Congress Street IPATrillium Brewing Company New England IPA

### Porter variety pack

    ##                   Name            Type
    ## 1                Fionn Imperial Porter
    ## 2            Elemental  English Porter
    ## 3 Coffee Baltic Porter   Baltic Porter
    ## 4       Coconut Porter American Porter
    ## 5        Coffee Porter  English Porter
    ## 6   BBA Baltic Sunrise   Baltic Porter

### Stout variety pack

    ##                                Name            Type
    ## 1                      Vanilla Deth   Oatmeal Stout
    ## 2                   Steeprock Stout Irish Dry Stout
    ## 3                        Black Gold   English Stout
    ## 4                    Jolly Woodsman  American Stout
    ## 5 Father Kyle's Cinnamon Roll Stout  American Stout
    ## 6                    The Rusty Nail   Oatmeal Stout
