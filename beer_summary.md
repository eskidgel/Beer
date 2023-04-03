### Top rated beers by style:

## Bocks

### Bock variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                      Ratings   Avg `Beer Type`
    ##   <chr>                            <chr>   <dbl> <chr>      
    ## 1 Snake Venom                      16       3.24 Eisbock    
    ## 2 The Bock Hog                     18       3.83 Doppelbock 
    ## 3 The Lewbricator                  40       3.83 Doppelbock 
    ## 4 Mardi Gras Bock                  860      3.47 Maibock    
    ## 5 Tip Top Maibock                  14       3.89 Maibock    
    ## 6 Chopping Wood - Doppelbock Lager 17       4.18 Doppelbock

## India Pale Ales

### IPA variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                                    Ratings   Avg `Beer Type`    
    ##   <chr>                                          <chr>   <dbl> <chr>          
    ## 1 Furious                                        5,955    4.28 American IPA   
    ## 2 Mastermind                                     1,501    4.43 New England IPA
    ## 3 Squeezit                                       48       4.44 Imperial IPA   
    ## 4 Galactic Haze IPAHop and Sting Brewing Company 23       3.71 Belgian IPA    
    ## 5 Paljas IPABrouwerij Henricus                   24       3.62 Belgian IPA    
    ## 6 Double Hop Monster                             67       3.53 English IPA

## Porters

### Porter variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                             Ratings   Avg `Beer Type`    
    ##   <chr>                                   <chr>   <dbl> <chr>          
    ## 1 Genesee Salted Caramel Chocolate Porter 159      3.94 English Porter 
    ## 2 Fire on the Coals                       20       4.45 Imperial Porter
    ## 3 Baba Yaga                               27       4.1  American Porter
    ## 4 Picture City Porter                     39       4.04 American Porter
    ## 5 Pudding Dribbles                        37       4.53 Imperial Porter
    ## 6 King Royal                              50       4.1  Baltic Porter

## Stouts

### Porter variety pack

    ## # A tibble: 6 × 4
    ##   `Beer Name`                  Ratings   Avg `Beer Type`    
    ##   <chr>                        <chr>   <dbl> <chr>          
    ## 1 Coffee Coconut Stout         160      4.14 American Stout 
    ## 2 Gordo Stout                  43       3.66 Irish Dry Stout
    ## 3 Pan-American Stout           26       4.05 Oatmeal Stout  
    ## 4 Choc & Orange Stout          10       3.85 English Stout  
    ## 5 Beamish Irish Stout          807      3.81 Irish Dry Stout
    ## 6 MFB 9.0Mountain Fork Brewery 13       4.05 American Stout

Let’s get packing.

I created a function called “beer picker” that allows the system to
sample through the beers.

    ##                                                    Name            Type Rating
    ## 1                                   Trendler Doppelbock      Doppelbock     18
    ## 2               Chainbreaker White IPADeschutes Brewery     Belgian IPA  2,176
    ## 3                                                  Haze New England IPA  3,176
    ## 4 Who's Your Daddy? Bourbon Barrel-Aged Imperial Porter Imperial Porter    175
    ## 5                                        Baltic Sunrise   Baltic Porter     64
    ## 6                             Lil' Jifforia - Fat Elvis  American Stout     23
    ##    Avg
    ## 1 4.14
    ## 2 3.67
    ## 3 4.57
    ## 4 4.26
    ## 5 4.02
    ## 6 3.88

    ##                 Name       Type Rating  Avg
    ## 1 Norbertus Kardinal       Bock     15 3.15
    ## 2         The Bennie       Bock     72 3.48
    ## 3        Mai-Ur-Bock    Maibock    471 3.78
    ## 4        Blonde Bock    Maibock    340 3.33
    ## 5              #Carl    Maibock     17 3.64
    ## 6     Curse The Goat Doppelbock     11 3.88

    ##                                                             Name
    ## 1                                                      Big Peach
    ## 2                                                      Mass Riot
    ## 3 Double Dry Hopped Stillings Street IPATrillium Brewing Company
    ## 4                                         Triple Simcoe Daydream
    ## 5                        Ease Up IPAAdnams plc, Sole Bay Brewery
    ## 6                                   Earl Grey IPAThe Marble Arch
    ##              Type Rating  Avg
    ## 1 New England IPA     63 4.48
    ## 2    American IPA     69 4.36
    ## 3 New England IPA    414 4.43
    ## 4    Imperial IPA     32 4.44
    ## 5     English IPA     12 3.69
    ## 6     English IPA     22 4.04

    ##                          Name            Type Rating  Avg
    ## 1                 Panther Cub Imperial Porter    337 4.17
    ## 2   Cellar Series: Honey Laku Imperial Porter     13 4.16
    ## 3         London Style Porter  English Porter    104 3.89
    ## 4 Wrecking Ball Baltic Porter   Baltic Porter     26 4.00
    ## 5      Blackbeard's Breakfast Imperial Porter    442 4.13
    ## 6                Pot & Kettle American Porter    772 4.20

    ##                                            Name                    Type Rating
    ## 1 B.O.R.I.S. The Crusher - Extended Barrel-Aged           Oatmeal Stout   <NA>
    ## 2                 Barrel Aged B.O.R.I.S. Royale           Oatmeal Stout   <NA>
    ## 3                         Gwin Du Oatmeal Stout           Oatmeal Stout   <NA>
    ## 4                                  Charon Stout         Irish Dry Stout     20
    ## 5                               Nitroboom Stout         Irish Dry Stout   <NA>
    ## 6                                  Ground State American Imperial Stout     31
    ##    Avg
    ## 1   NA
    ## 2   NA
    ## 3   NA
    ## 4 3.85
    ## 5   NA
    ## 6 3.65
