### Top rated beers by style:

## Bocks

### Bock variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                     Ratings   Avg `Beer Type`
    ##   <chr>                           <chr>   <dbl> <chr>      
    ## 1 Toasted Bock                    125      3.65 Bock       
    ## 2 Brugse Bok                      33       3.6  Bock       
    ## 3 1516 Heller Bock                13       4.23 Maibock    
    ## 4 Erdinger Weissbier Pikantus     569      3.87 Weizenbock 
    ## 5 Decapitator Bourbon Barrel Aged 11       4.26 Doppelbock 
    ## 6 Marc's Chocolate Bock           45       3.95 Doppelbock

## India Pale Ales

### IPA variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                                 Ratings   Avg `Beer Type`    
    ##   <chr>                                       <chr>   <dbl> <chr>          
    ## 1 Shogun JIPAGotlands Bryggeri                14       3.84 English IPA    
    ## 2 Zeus Imperial IPALengthwise Brewing Company 187      4.38 Imperial IPA   
    ## 3 Peril                                       250      4.39 Imperial IPA   
    ## 4 Double Dry Hopped Double Mosaic Dream       738      4.52 New England IPA
    ## 5 Perler For Svin                             29       4.09 English IPA    
    ## 6 India Pale Ale                              567      3.71 English IPA

## Porters

### Porter variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                 Ratings   Avg `Beer Type`    
    ##   <chr>                       <chr>   <dbl> <chr>          
    ## 1 Dark Anchor                 28       3.98 English Porter 
    ## 2 Morning Bell                494      4.32 Imperial Porter
    ## 3 Puddy Porter                19       4.03 Baltic Porter  
    ## 4 German Chocolate Cake       15       4.06 American Porter
    ## 5 Cupid's Envy                13       4.2  Imperial Porter
    ## 6 Wrecking Ball Baltic Porter 26       4    Baltic Porter

## Stouts

### Stouts variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                                         Ratings   Avg `Beer Type` 
    ##   <chr>                                               <chr>   <dbl> <chr>       
    ## 1 Alien Hymns And Stoner Fables                       28       4.23 Oatmeal Sto…
    ## 2 Mocha Wednesday                                     1,496    4.49 American Im…
    ## 3 The Claddagh                                        13       3.94 Irish Dry S…
    ## 4 Black Scottish Stout                                333      3.66 Irish Dry S…
    ## 5 Ola Dubh Special Reserve 16Harviestoun Brewery Ltd. 662      4.13 English Sto…
    ## 6 O'Hara's Irish Stout                                1,063    3.87 Irish Dry S…

Let’s get packing.

I created a function called “beer picker” that allows the system to
sample through the beers.

    ##                             Name            Type Rating  Avg
    ## 1          Marc's Chocolate Bock      Doppelbock     45 3.95
    ## 2                Super Supernaut    Imperial IPA     95 4.43
    ## 3                       Vicinity New England IPA  1,790 4.45
    ## 4 Hidden Pipe Porter With Coffee American Porter     78 4.04
    ## 5                Postman's Knock  English Porter     31 3.70
    ## 6              Triple Chocoholic   English Stout     10 3.94

    ##                              Name    Type Rating  Avg
    ## 1              Schmucker Rosébock Maibock     30 3.80
    ## 2 Schorschbock Ice 13Schorschbräu Eisbock     29 3.78
    ## 3                 Huber Bock Beer    Bock    115 3.17
    ## 4                  Goat Destroyer Maibock     17 3.95
    ## 5   Bockslider Toadies Texas Bock    Bock     94 3.76
    ## 6                  St. Bonifatius Maibock     23 3.45

    ##                                      Name            Type Rating  Avg
    ## 1                              Upper Case New England IPA  1,033 4.51
    ## 2 Tasmanian IPA TIPAThe Schlafly Tap Room    American IPA  1,754 4.24
    ## 3                                Squeezit    Imperial IPA     48 4.44
    ## 4                           Double Galaxy New England IPA  1,682 4.59
    ## 5                                 Mammoth    Imperial IPA    112 4.45
    ## 6                        Troubadour Magma     Belgian IPA    553 3.93

    ##                            Name            Type Rating  Avg
    ## 1                    Soothsayer   Baltic Porter     14 4.10
    ## 2                Murder Ballads   Baltic Porter     17 4.17
    ## 3                 Hell's Holler  English Porter     13 4.03
    ## 4                  Midnight Sun  English Porter    166 3.91
    ## 5                     Last Snow American Porter  2,162 4.46
    ## 6 Black Butte³Deschutes Brewery Imperial Porter     42 4.42

    ##                                          Name                    Type Rating
    ## 1             Guinness Nitro Cold Brew Coffee         Irish Dry Stout     19
    ## 2                                   Black Cab           English Stout     25
    ## 3                           Cobblestone Stout         Irish Dry Stout  3,913
    ## 4 Beer Geek Vanilla Shake Barrel Aged Bourbon American Imperial Stout     31
    ## 5             Black Tuesday - Rum Barrel-Aged American Imperial Stout     11
    ## 6                 Baby Bob2SP Brewing Company          American Stout     16
    ##    Avg
    ## 1 3.75
    ## 2 3.91
    ## 3 4.28
    ## 4 3.62
    ## 5 3.31
    ## 6 3.97
