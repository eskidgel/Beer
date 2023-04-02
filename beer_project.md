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
    ##    Rank `Beer Name`               Ratings   Avg `Beer Type`
    ##   <int> <chr>                     <chr>   <dbl> <chr>      
    ## 1    13 Tweiss                    25       4.06 Weizenbock 
    ## 2    92 Steam Brew German Red     37       3.27 Bock       
    ## 3    41 Springbok                 13       3.89 Maibock    
    ## 4    32 Ettaler Heller Bock       26       3.92 Maibock    
    ## 5    54 Reserve Trippelbock       14       4    Doppelbock 
    ## 6    62 Samuel Adams Winter Lager 198      3.65 Bock

## India Pale Ales

### IPA variety pack

    ## # A tibble: 6 × 5
    ##    Rank `Beer Name`                  Ratings   Avg `Beer Type`    
    ##   <int> <chr>                        <chr>   <dbl> <chr>          
    ## 1    18 BFFGrimm Artisanal Ales      149      4.02 Belgian IPA    
    ## 2    99 Pink IPAAlmond '22           93       3.51 English IPA    
    ## 3    17 Freaky Fish                  11       4.16 Belgian IPA    
    ## 4    61 Mo' Citra                    61       4.31 American IPA   
    ## 5    35 King Sue - Double Dry-Hopped 392      4.53 New England IPA
    ## 6    74 The Chosen One               171      4.46 New England IPA

## Porters

### Porter variety pack

    ## # A tibble: 6 × 5
    ##    Rank `Beer Name`                      Ratings   Avg `Beer Type`    
    ##   <int> <chr>                            <chr>   <dbl> <chr>          
    ## 1    79 Java Storm                       23       4.17 Imperial Porter
    ## 2    14 Black Duck Porter                270      3.99 English Porter 
    ## 3    16 Midnight Espresso                70       4    English Porter 
    ## 4    44 Imperial CPBLupulin Brewing      14       4.37 Imperial Porter
    ## 5    69 Toasted Coconut Chocolate Porter 124      4.04 American Porter
    ## 6    40 Brycescotti                      13       4.39 Imperial Porter

## Stouts

### Stout variety pack

    ## # A tibble: 6 × 5
    ##    Rank `Beer Name`                                        Ratings   Avg Beer …¹
    ##   <int> <chr>                                              <chr>   <dbl> <chr>  
    ## 1    97 Nitroboom Stout                                    24       3.56 Irish …
    ## 2    12 Ola Dubh Special Reserve 21Harviestoun Brewery Lt… 152      4.11 Englis…
    ## 3     3 Abraxas - Barrel-Aged                              1,661    4.73 Americ…
    ## 4    63 Baby Bob2SP Brewing Company                        86       4.03 Americ…
    ## 5    22 Chuli Stout                                        75       3.88 Irish …
    ## 6    90 Black Irish                                        35       3.64 Irish …
    ## # … with abbreviated variable name ¹​`Beer Type`

Now that I have all of the beer available, I joined them all together to
begin creating variety packs.

    ## # A tibble: 1,734 × 5
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
    ## # … with 1,724 more rows

Let’s get packing.

## INTERACTIVE INPUT

This is the interactive portion of the project. The “beer picker”
function allows the user to personalize their pack of beer based on
preference.

The “beer\_picker” function is set to (1,2,2,1). This means the variety
pack will consist of one bock, two IPAs, two porters, and one stout.
These values can be changed based on the individual.

### Variety pack

    ##                        Name           Type Rating Average
    ## 1                Dreher Bak           Bock     56    3.71
    ## 2          Vernal Beckoning    Belgian IPA  3,085    3.93
    ## 3  Super Session #1 - Citra   American IPA    249    3.68
    ## 4            La Rana Porter English Porter     53    3.88
    ## 5 Longboat Chocolate Porter English Porter     11    3.71
    ## 6            Creature Stout American Stout     12    4.01

### Bock variety pack

    ##          Name       Type Rating Average
    ## 1 Troegenator Doppelbock  3,537    3.95
    ## 2  Bock Party    Maibock     99    4.03
    ## 3  Niner Bock       Bock     17    3.82
    ## 4      Wether Weizenbock     29    4.17
    ## 5   Indikator Doppelbock     18    4.36
    ## 6 Frogichlaus Doppelbock     34    3.94

### IPA variety pack

    ##                                  Name         Type Rating Average
    ## 1              Duvel Tripel Hop Citra  Belgian IPA     26    4.39
    ## 2                   Winston Sheffield  English IPA     12    3.98
    ## 3 Fresh Squeezed IPADeschutes Brewery American IPA     33    3.60
    ## 4      Delta IPABrussels Beer Project  Belgian IPA    350    3.99
    ## 5      IPAHarpoon Brewery & Beer Hall  English IPA    189    3.82
    ## 6                   Expression: Three American IPA    115    3.17

### Porter variety pack

    ##                                               Name            Type Rating
    ## 1 The Devil Made Me Do It!Tyranena Brewing Company Imperial Porter   <NA>
    ## 2                                           Porter  English Porter    185
    ## 3          Knecht Ruprecht IIThe Lone Pint Brewery American Porter     50
    ## 4                                      Brycescotti Imperial Porter     27
    ## 5                                 Is Ticking Clock Imperial Porter   <NA>
    ## 6                                        La Colada  English Porter     37
    ##   Average
    ## 1      NA
    ## 2    4.00
    ## 3    3.68
    ## 4    3.71
    ## 5      NA
    ## 6    3.91

### Stout variety pack

    ##                                 Name                    Type Rating Average
    ## 1 Speedway Stout - Vietnamese Coffee American Imperial Stout     65    3.63
    ## 2                      Velvet Merkin           Oatmeal Stout   <NA>      NA
    ## 3                    Low Earth Orbit           Oatmeal Stout   <NA>      NA
    ## 4                  Brown Trout Stout         Irish Dry Stout     18    3.90
    ## 5                       Vanilla Deth           Oatmeal Stout   <NA>      NA
    ## 6            Donut Shop Coffee Stout          American Stout     16    4.12
