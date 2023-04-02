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
    ##    Rank `Beer Name`             Ratings   Avg `Beer Type`
    ##   <int> <chr>                   <chr>   <dbl> <chr>      
    ## 1    NA Berkshire Maibock Lager <NA>    NA    Maibock    
    ## 2    NA Maibock                 <NA>    NA    Maibock    
    ## 3    NA Johannieter             <NA>    NA    Doppelbock 
    ## 4    28 Texas style Bock        10       3.95 Bock       
    ## 5    NA Blonde Bock             <NA>    NA    Maibock    
    ## 6    NA Mayday Mayday Maibock   <NA>    NA    Maibock

## India Pale Ales

### IPA variety pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`                    `Beer Type` 
    ##   <chr>                          <chr>       
    ## 1 Coriolis                       Imperial IPA
    ## 2 Highway To The Danker Zone     Imperial IPA
    ## 3 Drippy Church                  American IPA
    ## 4 East IPABrooklyn Brewery       English IPA 
    ## 5 Jai Alai IPACigar City Brewing American IPA
    ## 6 Petty Larceny                  American IPA

## Porters

### Porter variety pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`                                                    `Beer Type`    
    ##   <chr>                                                          <chr>          
    ## 1 Pistol Bridge Porter                                           English Porter 
    ## 2 Bourbon Barrel Aged Pay It Forward Cocoa Porter                American Porter
    ## 3 Barrel-Aged Framinghammer - Vanilla                            Baltic Porter  
    ## 4 Barrel-Aged Framinghammer - Coffee                             Baltic Porter  
    ## 5 512 Whiskey Barrel Aged Double Pecan Porter512 Brewing Company Imperial Porter
    ## 6 Barrel-Aged Double Pot & Kettle                                Imperial Porter

## Stouts

### Stout variety pack

    ## # A tibble: 6 × 2
    ##   `Beer Name`                  `Beer Type`            
    ##   <chr>                        <chr>                  
    ## 1 Kentucky Coffee Barrel Stout English Stout          
    ## 2 Campfire Stout               American Stout         
    ## 3 First Crack                  American Stout         
    ## 4 Chocolate Rain               American Imperial Stout
    ## 5 Black H2O Oatmeal Stout      Oatmeal Stout          
    ## 6 Skillet Donut Stout          Oatmeal Stout

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
    ## 1                    Generator Doppelbock      Doppelbock
    ## 2                                    Duet    American IPA
    ## 3 Hexagenia IPAFall River Brewing Company    American IPA
    ## 4                           Smoked Porter   Smoked Porter
    ## 5                     Gonzo - Barrel-Aged Imperial Porter
    ## 6                          Mena Dhu Stout   English Stout

### Bock variety pack

    ##                                                   Name       Type
    ## 1                                       Granitbock Ice    Eisbock
    ## 2                                 Hertog Jan Lentebock       Bock
    ## 3 Ettaler Curator Dunkler Doppelbock US Import Version Doppelbock
    ## 4                                       Prognosticator Doppelbock
    ## 5                                           Strawgator    Maibock
    ## 6                       Weltenburger Kloster Asam-Bock Doppelbock

### IPA variety pack

    ##                                      Name         Type
    ## 1   La Goudale IPALes Brasseurs de Gayant  Belgian IPA
    ## 2      Farmhouse IPACrane Brewing Company  Belgian IPA
    ## 3                      Some Of The Dharma American IPA
    ## 4             Lotus IPAIlkley Brewery Co.  English IPA
    ## 5                           Fleur Sauvage  Belgian IPA
    ## 6 Ease Up IPAAdnams plc, Sole Bay Brewery  English IPA

### Porter variety pack

    ##                                                    Name            Type
    ## 1                                     Black Duck Porter  English Porter
    ## 2                                          Mocha Marlin American Porter
    ## 3                                   Out Of Order Porter  English Porter
    ## 4                   Sunday Brunch - Bourbon Barrel-Aged Imperial Porter
    ## 5                                        Coconut Porter American Porter
    ## 6 Who's Your Daddy? Bourbon Barrel-Aged Imperial Porter Imperial Porter

### Stout variety pack

    ##                                        Name                    Type
    ## 1                     Abraxas - Barrel-Aged American Imperial Stout
    ## 2                            Stay Dry Stout           English Stout
    ## 3                             Oatmeal Stout           Oatmeal Stout
    ## 4                           Nitroboom Stout         Irish Dry Stout
    ## 5                                    Valdez          American Stout
    ## 6 Bourbon Barrel Aged Dark Star: Spice Wars           Oatmeal Stout
