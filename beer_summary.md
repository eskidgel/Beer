### Top rated beers by style:

## Bocks

### Bock variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                       Ratings   Avg `Beer Type`
    ##   <chr>                             <chr>   <dbl> <chr>      
    ## 1 Flensburger Winterbock            65       3.63 Bock       
    ## 2 Limited Batch 001: Maibock        12       3.98 Maibock    
    ## 3 Maibock                           36       4.06 Maibock    
    ## 4 Birra Dolomiti Rossa Doppio Malto 11       3.71 Bock       
    ## 5 Pandora's Bock                    385      3.43 Bock       
    ## 6 Koźlak                            115      3.6  Bock

## India Pale Ales

### IPA variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                       Ratings   Avg `Beer Type`    
    ##   <chr>                             <chr>   <dbl> <chr>          
    ## 1 Rhode Island IPATrinity Brewhouse 80       3.71 English IPA    
    ## 2 Imperial French-Style Ale         56       3.78 Belgian IPA    
    ## 3 Extase                            70       3.93 Belgian IPA    
    ## 4 Tesseract                         629      4.4  Imperial IPA   
    ## 5 Six Seam                          61       4.48 New England IPA
    ## 6 La Lanterne                       11       4    Belgian IPA

## Porters

### Porter variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                              Ratings   Avg `Beer Type`    
    ##   <chr>                                    <chr>   <dbl> <chr>          
    ## 1 Pullman Porter                           22       3.67 English Porter 
    ## 2 Knecht Ruprecht IIThe Lone Pint Brewery  20       4.15 American Porter
    ## 3 Frayja                                   29       4.37 Baltic Porter  
    ## 4 BBA Baltic Sunrise                       35       4.01 Baltic Porter  
    ## 5 Picture City Porter                      39       4.04 American Porter
    ## 6 Thor's Smoked Hot Pepper Imperial Porter 54       4.25 Smoked Porter

## Stouts

Now that I have all of the beer available, let’s join them all together
to begin creating variety packs.

Let’s get packing.

I created a function called “beer picker” that allows the system to
sample through the beers.

    ##                                  Name            Type Rating  Avg
    ## 1                   Primus Weizenbock      Weizenbock    307 4.24
    ## 2 Stockyard IPABarley John's Brew Pub     English IPA     49 3.71
    ## 3  Iron Rail IPAWedge Brewing Company     English IPA    154 3.92
    ## 4                        Mocha Marlin American Porter    373 4.07
    ## 5                 Gonzo - Barrel-Aged Imperial Porter  1,009 4.14
    ## 6      Fragile Like A Bomb903 Brewers   Oatmeal Stout   <NA>   NA

    ##                     Name       Type Rating  Avg
    ## 1         St. Victorious Doppelbock    580 4.06
    ## 2         Tripper Bocker Doppelbock     28 4.21
    ## 3 St. Nikolaus Bock Bier       Bock    445 3.94
    ## 4 St. Blasius Weizenbock Weizenbock     37 3.45
    ## 5     Bocks Of Chocolate Doppelbock     22 3.92
    ## 6             Bleatboxer       Bock     10 3.71

    ##                                    Name            Type Rating  Avg
    ## 1                          Project Dank    American IPA    914 4.40
    ## 2     Double Dry-Hopped Pliny The Elder    Imperial IPA    141 4.42
    ## 3                                Hop Ju    Imperial IPA  2,400 4.45
    ## 4                Even Sharks Need Water     English IPA     19 4.06
    ## 5 JJJuliusss!Tree House Brewing Company New England IPA  1,082 4.63
    ## 6             More Citra Than All Citra    Imperial IPA    100 4.40

    ##                                                               Name
    ## 1 Limited Edition Series: Barrel-Aged Baltic Porter In Rye Barrels
    ## 2                                                    Funnel Blower
    ## 3                          Barrel-Aged Framinghammer - Mapledoodle
    ## 4                                                  Duke Of Winship
    ## 5                                              Out Of Order Porter
    ## 6                              Victory At Sea - Coffee And Vanilla
    ##              Type Rating  Avg
    ## 1   Baltic Porter     12 4.14
    ## 2  English Porter     82 3.74
    ## 3   Baltic Porter     10 4.27
    ## 4  English Porter    178 3.87
    ## 5  English Porter     15 3.77
    ## 6 Imperial Porter  7,156 4.39

    ##                             Name                    Type Rating  Avg
    ## 1 Affogato - Bourbon Barrel-Aged American Imperial Stout     12 3.75
    ## 2   Kentucky Coffee Barrel Stout           English Stout     15 3.95
    ## 3   PNC Imperial Buckwheat Stout American Imperial Stout     88 3.49
    ## 4                   Shadowlifter           Oatmeal Stout   <NA>   NA
    ## 5              Black Magic Stout         Irish Dry Stout   <NA>   NA
    ## 6                             Mc         Irish Dry Stout   <NA>   NA
