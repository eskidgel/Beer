As an avid beer drinker, I often find myself wanting to try many
different beers that I see at the liquor store. Due to lack of money and
room in my fridge, I leave with just a single 6-pack or 12-pack of a new
beer that I may or may not like. If only there was a way to purchase one
pack of beer that has multiple types of beer inside…

A variety pack of new, cool, and the best beers in the world!

Top rated beers by style:

## Bocks

    bock_link <- "https://www.beeradvocate.com/beer/top-styles/32/"
    doppelbock_link <- "https://www.beeradvocate.com/beer/top-styles/35/"
    eisbock_link <- "https://www.beeradvocate.com/beer/top-styles/36/"
    maibock_link <- "https://www.beeradvocate.com/beer/top-styles/33/"
    weizenbock_link <- "https://www.beeradvocate.com/beer/top-styles/92/"

    # Bock
    bocks <- read_html(bock_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    bocks <- read_html(bock_link) %>%
      html_table(header = TRUE) %>% 
      '[['(1)

    bocks['Beer Type'] <- "Bock"

    colnames(bocks) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    bocks <- bocks %>% select(-c('You'))

    bocks$Name <- gsub("\\(|\\)", "", bocks$Name)
    bocks$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", bocks$Name)
    bocks <- tidyr::separate(bocks, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 3 rows [55, 61, 80].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 1 rows [56].

    bocks <- bocks %>% select(-c('Brewery'))

    # Doppelbock
    doppelbocks <- read_html(doppelbock_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    doppelbocks <- read_html(doppelbock_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    doppelbocks['Beer Type'] <- "Doppelbock"

    colnames(doppelbocks) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    doppelbocks <- doppelbocks %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    doppelbocks$Name <- gsub("\\(|\\)", "", doppelbocks$Name)
    doppelbocks$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", doppelbocks$Name)
    doppelbocks <- tidyr::separate(doppelbocks, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 4 rows [9, 33, 73,
    ## 92].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 3 rows [39, 51,
    ## 91].

    doppelbocks <- doppelbocks %>% select(-c('Brewery'))

    # Eisbock
    eisbocks <- read_html(eisbock_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    eisbocks <- read_html(eisbock_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    eisbocks['Beer Type'] <- "Eisbock"

    colnames(eisbocks) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    eisbocks <- eisbocks %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    eisbocks$Name <- gsub("\\(|\\)", "", eisbocks$Name)
    eisbocks$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", eisbocks$Name)
    eisbocks <- tidyr::separate(eisbocks, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 3 rows [9, 10,
    ## 12].

    eisbocks <- eisbocks %>% select(-c('Brewery'))

    # Maibock
    maibocks <- read_html(maibock_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    maibocks <- read_html(maibock_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    maibocks['Beer Type'] <- "Maibock"

    colnames(maibocks) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    maibocks <- maibocks %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    maibocks$Name <- gsub("\\(|\\)", "", maibocks$Name)
    maibocks$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", maibocks$Name)
    maibocks <- tidyr::separate(maibocks, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 3 rows [50, 65, 73].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 4 rows [23, 44,
    ## 52, 59].

    maibocks <- maibocks %>% select(-c('Brewery'))

    # Weizenbock
    weizenbocks <- read_html(weizenbock_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    weizenbocks <- read_html(weizenbock_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    weizenbocks['Beer Type'] <- "Weizenbock"

    colnames(weizenbocks) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    weizenbocks <- weizenbocks %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    weizenbocks$Name <- gsub("\\(|\\)", "", weizenbocks$Name)
    weizenbocks$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", weizenbocks$Name)
    weizenbocks <- tidyr::separate(weizenbocks, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 1 rows [23].

    weizenbocks <- weizenbocks %>% select(-c('Brewery'))

    # All bocks
    all_bocks <- dplyr::bind_rows(bocks,
                                  doppelbocks,
                                  eisbocks,
                                  maibocks,
                                  weizenbocks)

## India Pale Ales

    american_link <- "https://www.beeradvocate.com/beer/top-styles/116/"
    belgian_link <- "https://www.beeradvocate.com/beer/top-styles/174/"
    english_link <- "https://www.beeradvocate.com/beer/top-styles/150/"
    imperial_link <- "https://www.beeradvocate.com/beer/top-styles/140/"
    newengland_link <- "https://www.beeradvocate.com/beer/top-styles/189/"

    # American IPA
    american_ipa <- read_html(american_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    american_ipa <- read_html(american_link) %>%
      html_table(header = TRUE) %>% 
      '[['(1)

    american_ipa['Beer Type'] <- "American IPA"

    colnames(american_ipa) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    american_ipa <- american_ipa %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    american_ipa$Name <- gsub("\\(|\\)", "", american_ipa$Name)
    american_ipa$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", american_ipa$Name)
    american_ipa <- tidyr::separate(american_ipa, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 1 rows [52].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 25 rows [17, 21,
    ## 22, 27, 39, 41, 42, 47, 50, 51, 55, 56, 59, 60, 62, 63, 65, 67, 70, 72, ...].

    american_ipa <- american_ipa %>% select(-c('Brewery'))

    # Belgian IPA
    belgian_ipa <- read_html(belgian_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    belgian_ipa <- read_html(belgian_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    belgian_ipa['Beer Type'] <- "Belgian IPA"

    colnames(belgian_ipa) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    belgian_ipa <- belgian_ipa %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    belgian_ipa$Name <- gsub("\\(|\\)", "", belgian_ipa$Name)
    belgian_ipa$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", belgian_ipa$Name)
    belgian_ipa <- tidyr::separate(belgian_ipa, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 3 rows [48, 64, 75].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 24 rows [14, 15,
    ## 16, 18, 24, 28, 36, 41, 42, 49, 56, 61, 62, 66, 67, 69, 77, 79, 81, 85, ...].

    belgian_ipa <- belgian_ipa %>% select(-c('Brewery'))

    # English IPA
    english_ipa <- read_html(english_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    english_ipa <- read_html(english_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    english_ipa['Beer Type'] <- "English IPA"

    colnames(english_ipa) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    english_ipa <- english_ipa %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    english_ipa$Name <- gsub("\\(|\\)", "", english_ipa$Name)
    english_ipa$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", english_ipa$Name)
    english_ipa <- tidyr::separate(english_ipa, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 3 rows [19, 56, 76].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 43 rows [5, 6, 7,
    ## 12, 20, 26, 27, 30, 32, 33, 36, 39, 44, 45, 46, 47, 49, 51, 53, 57, ...].

    english_ipa <- english_ipa %>% select(-c('Brewery'))

    # Imperial IPA
    imperial_ipa <- read_html(imperial_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    imperial_ipa <- read_html(imperial_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    imperial_ipa['Beer Type'] <- "Imperial IPA"

    colnames(imperial_ipa) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    imperial_ipa <- imperial_ipa %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    imperial_ipa$Name <- gsub("\\(|\\)", "", imperial_ipa$Name)
    imperial_ipa$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", imperial_ipa$Name)
    imperial_ipa <- tidyr::separate(imperial_ipa, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 4 rows [16, 22, 57,
    ## 63].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 13 rows [11, 13,
    ## 17, 36, 41, 45, 48, 75, 79, 87, 93, 95, 98].

    imperial_ipa <- imperial_ipa %>% select(-c('Brewery'))

    # New England IPA
    newengland_ipa <- read_html(newengland_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    newengland_ipa <- read_html(newengland_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    newengland_ipa['Beer Type'] <- "New England IPA"

    colnames(newengland_ipa) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    newengland_ipa <- newengland_ipa %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    newengland_ipa$Name <- gsub("\\(|\\)", "", newengland_ipa$Name)
    newengland_ipa$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", newengland_ipa$Name)
    newengland_ipa <- tidyr::separate(newengland_ipa, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 2 rows [47, 96].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 13 rows [9, 11,
    ## 19, 29, 31, 41, 48, 73, 79, 80, 85, 92, 95].

    newengland_ipa <- newengland_ipa %>% select(-c('Brewery'))

    # All IPAs
    all_ipas <- dplyr::bind_rows(american_ipa,
                                  belgian_ipa,
                                  english_ipa,
                                  imperial_ipa,
                                  newengland_ipa)

## Porters

    american_porter_link <- "https://www.beeradvocate.com/beer/top-styles/159/"
    baltic_porter_link <- "https://www.beeradvocate.com/beer/top-styles/80/"
    english_porter_link <- "https://www.beeradvocate.com/beer/top-styles/101/"
    imperial_porter_link <- "https://www.beeradvocate.com/beer/top-styles/192/"
    smoked_porter_link <- "https://www.beeradvocate.com/beer/top-styles/194/"

    # American Porter
    american_porter <- read_html(american_porter_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    american_porter <- read_html(american_porter_link) %>%
      html_table(header = TRUE) %>% 
      '[['(1)

    american_porter['Beer Type'] <- "American Porter"

    colnames(american_porter) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    american_porter <- american_porter %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    american_porter$Name <- gsub("\\(|\\)", "", american_porter$Name)
    american_porter$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", american_porter$Name)
    american_porter <- tidyr::separate(american_porter, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 1 rows [98].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 7 rows [23, 30,
    ## 46, 53, 63, 89, 95].

    american_porter <- american_porter %>% select(-c('Brewery'))

    # Baltic Porter
    baltic_porter <- read_html(baltic_porter_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    baltic_porter <- read_html(baltic_porter_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    baltic_porter['Beer Type'] <- "Baltic Porter"

    colnames(baltic_porter) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    baltic_porter <- baltic_porter %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    baltic_porter$Name <- gsub("\\(|\\)", "", baltic_porter$Name)
    baltic_porter$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", baltic_porter$Name)
    baltic_porter <- tidyr::separate(baltic_porter, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 9 rows [14, 29,
    ## 30, 37, 39, 48, 50, 80, 86].

    baltic_porter <- baltic_porter %>% select(-c('Brewery'))

    # English IPA
    english_porter <- read_html(english_porter_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    english_porter <- read_html(english_porter_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    english_porter['Beer Type'] <- "English Porter"

    colnames(english_porter) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    english_porter <- english_porter %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    english_porter$Name <- gsub("\\(|\\)", "", english_porter$Name)
    english_porter$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", english_porter$Name)
    english_porter <- tidyr::separate(english_porter, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 1 rows [85].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 5 rows [22, 47,
    ## 60, 74, 98].

    english_porter <- english_porter %>% select(-c('Brewery'))

    # Imperial Porter
    imperial_porter <- read_html(imperial_porter_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    imperial_porter <- read_html(imperial_porter_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    imperial_porter['Beer Type'] <- "Imperial Porter"

    colnames(imperial_porter) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    imperial_porter <- imperial_porter %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    imperial_porter$Name <- gsub("\\(|\\)", "", imperial_porter$Name)
    imperial_porter$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", imperial_porter$Name)
    imperial_porter <- tidyr::separate(imperial_porter, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 11 rows [13, 17,
    ## 24, 43, 44, 60, 72, 74, 86, 98, 99].

    imperial_porter <- imperial_porter %>% select(-c('Brewery'))

    # Smoked Porter
    smoked_porter <- read_html(smoked_porter_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    smoked_porter <- read_html(smoked_porter_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    smoked_porter['Beer Type'] <- "Smoked Porter"

    colnames(smoked_porter) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    smoked_porter <- smoked_porter %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    smoked_porter$Name <- gsub("\\(|\\)", "", smoked_porter$Name)
    smoked_porter$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", smoked_porter$Name)
    smoked_porter <- tidyr::separate(smoked_porter, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 1 rows [3].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 2 rows [27, 28].

    smoked_porter <- smoked_porter %>% select(-c('Brewery'))

    # All porters
    all_porters <- dplyr::bind_rows(american_porter,
                                  baltic_porter,
                                  english_porter,
                                  imperial_porter,
                                  smoked_porter)

## Stouts

    american_imperial_link <- "https://www.beeradvocate.com/beer/top-styles/157/"
    american_stout_link <- "https://www.beeradvocate.com/beer/top-styles/158/"
    english_stout_link <- "https://www.beeradvocate.com/beer/top-styles/13/"
    irish_dry_stout_link <- "https://www.beeradvocate.com/beer/top-styles/162/"
    oatmeal_stout_link <- "https://www.beeradvocate.com/beer/top-styles/69/"

    # American Imperial Stout
    american_imperial <- read_html(american_imperial_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    american_imperial <- read_html(american_imperial_link) %>%
      html_table(header = TRUE) %>% 
      '[['(1)

    american_imperial['Beer Type'] <- "American Imperial Stout"

    colnames(american_imperial) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    american_imperial <- american_imperial %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    american_imperial$Name <- gsub("\\(|\\)", "", american_imperial$Name)
    american_imperial$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", american_imperial$Name)
    american_imperial <- tidyr::separate(american_imperial, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 9 rows [17, 30, 46,
    ## 48, 51, 61, 68, 69, 90].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 8 rows [4, 7, 20,
    ## 53, 54, 74, 76, 88].

    american_imperial <- american_imperial %>% select(-c('Brewery'))

    # American Stout
    american_stout <- read_html(american_stout_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    american_stout <- read_html(american_stout_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    american_stout['Beer Type'] <- "American Stout"

    colnames(american_stout) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    american_stout <- american_stout %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    american_stout$Name <- gsub("\\(|\\)", "", american_stout$Name)
    american_stout$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", american_stout$Name)
    american_stout <- tidyr::separate(american_stout, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 5 rows [23, 62, 71,
    ## 91, 97].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 7 rows [31, 57,
    ## 63, 80, 89, 95, 99].

    american_stout <- american_stout %>% select(-c('Brewery'))

    # English Stout
    english_stout <- read_html(english_stout_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    english_stout <- read_html(english_stout_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    english_stout['Beer Type'] <- "English Stout"

    colnames(english_stout) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    english_stout <- english_stout %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    english_stout$Name <- gsub("\\(|\\)", "", english_stout$Name)
    english_stout$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", english_stout$Name)
    english_stout <- tidyr::separate(english_stout, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 4 rows [18, 31, 48,
    ## 50].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 8 rows [1, 2, 6,
    ## 8, 10, 12, 26, 46].

    english_stout <- english_stout %>% select(-c('Brewery'))

    # Irish Dry Stout
    irish_dry_stout <- read_html(irish_dry_stout_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    irish_dry_stout <- read_html(irish_dry_stout_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    irish_dry_stout['Beer Type'] <- "Irish Dry Stout"

    colnames(irish_dry_stout) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    irish_dry_stout <- irish_dry_stout %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    irish_dry_stout$Name <- gsub("\\(|\\)", "", irish_dry_stout$Name)
    irish_dry_stout$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", irish_dry_stout$Name)
    irish_dry_stout <- tidyr::separate(irish_dry_stout, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 6 rows [25, 31, 86,
    ## 87, 89, 97].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 6 rows [8, 15,
    ## 34, 44, 50, 74].

    irish_dry_stout <- irish_dry_stout %>% select(-c('Brewery'))

    # Oatmeal Stout
    oatmeal_stout <- read_html(oatmeal_stout_link) %>%
      html_elements("td.hr_bottom_light a[href*='beer/profile'] b") %>%
      html_text()

    oatmeal_stout <- read_html(oatmeal_stout_link) %>% 
      html_table(header = TRUE) %>% 
      '[['(1)

    oatmeal_stout['Beer Type'] <- "Oatmeal Stout"

    colnames(oatmeal_stout) <- c('Rank', 'Name', 'Ratings', 'Avg', 'You', 'Beer Type')
    oatmeal_stout <- oatmeal_stout %>% select(-c('Rank', 'Ratings', 'Avg', 'You'))

    oatmeal_stout$Name <- gsub("\\(|\\)", "", oatmeal_stout$Name)
    oatmeal_stout$Name <- gsub("([a-z])([A-Z])", "\\1_\\2", oatmeal_stout$Name)
    oatmeal_stout <- tidyr::separate(oatmeal_stout, Name, c("Beer Name", "Brewery"), sep = "_")

    ## Warning: Expected 2 pieces. Additional pieces discarded in 8 rows [15, 25, 44,
    ## 48, 53, 56, 63, 65].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 3 rows [16, 38,
    ## 70].

    oatmeal_stout <- oatmeal_stout %>% select(-c('Brewery'))

    # All stouts
    all_stouts <- dplyr::bind_rows(american_imperial,
                                  american_stout,
                                  english_stout,
                                  irish_dry_stout,
                                  oatmeal_stout)

Now that I have all of the beer available, let’s join them all together
to begin creating variety packs.

    all_beers <- dplyr::bind_rows(all_bocks,
                                  all_ipas,
                                  all_porters,
                                  all_stouts)

Let’s get packing.

    library(tidyverse)

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
    ## ✔ ggplot2 3.4.0     ✔ purrr   0.3.4
    ## ✔ tibble  3.1.8     ✔ stringr 1.4.1
    ## ✔ tidyr   1.2.0     ✔ forcats 0.5.2
    ## ✔ readr   2.1.2     
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter()         masks stats::filter()
    ## ✖ readr::guess_encoding() masks rvest::guess_encoding()
    ## ✖ dplyr::lag()            masks stats::lag()

    beer_picker <- function(bocks_n, ipas_n, porters_n, stouts_n) {
      #bocks
      bocks_sample <- sample(1:nrow(all_bocks), bocks_n)
      bname <- all_bocks$`Beer Name`[bocks_sample]
      btype <- all_bocks$`Beer Type`[bocks_sample]
      
      #ipas
      ipas_sample <- sample(1:nrow(all_ipas), ipas_n)
      iname <- all_ipas$`Beer Name`[ipas_sample]
      itype <- all_ipas$`Beer Type`[ipas_sample]
      
      #porters
      porters_sample <- sample(1:nrow(all_porters), porters_n)
      pname <- all_porters$`Beer Name`[porters_sample]
      ptype <- all_porters$`Beer Type`[porters_sample]
      
      #stouts
      stouts_sample <- sample(1:nrow(all_stouts), stouts_n)
      sname <- all_stouts$`Beer Name`[stouts_sample]
      stype <- all_stouts$`Beer Type`[stouts_sample]
      
      beer_df <- data.frame(Name = c(bname, iname, pname, sname), Type = c(btype, itype, ptype, stype))
      
    }

## INTERACTIVE INPUT

    # Variety pack
    variety_pack <- beer_picker(1,2,2,1)
    variety_pack

    ##                               Name            Type
    ## 1               Mönchshof Bockbier            Bock
    ## 2                            Green New England IPA
    ## 3                       Upper Case New England IPA
    ## 4   Hidden Pipe Porter With Coffee American Porter
    ## 5 Toasted Coconut Chocolate Porter American Porter
    ## 6                Brown Trout Stout Irish Dry Stout

    # Bock pack
    bock_pack <- beer_picker(6,0,0,0)
    bock_pack

    ##                  Name       Type
    ## 1                 Bär Weizenbock
    ## 2           Andygator    Maibock
    ## 3         Cabin Fever    Maibock
    ## 4         Schnee Boot    Eisbock
    ## 5    1516 Heller Bock    Maibock
    ## 6 Creemore Springs Ur       Bock

    # IPA pack
    ipa_pack <- beer_picker(0,6,0,0)
    ipa_pack

    ##                                          Name            Type
    ## 1 Society & Solitude #6Hill Farmstead Brewery New England IPA
    ## 2                         De Ranke XXX Bitter     Belgian IPA
    ## 3   Notorious Triple IPABoneyard Beer Company    Imperial IPA
    ## 4                                 Head Hunter    American IPA
    ## 5                                       Hopus     Belgian IPA
    ## 6                                    Squeezit    Imperial IPA

    # Porter pack
    porter_pack <- beer_picker(0,0,6,0)
    porter_pack

    ##                                    Name            Type
    ## 1                             Baba Yaga American Porter
    ## 2                          Perky Porter  English Porter
    ## 3        Bunker-CBurley Oak Brewing Co. American Porter
    ## 4           Wrecking Ball Baltic Porter   Baltic Porter
    ## 5     Bourbon Barrel-Aged Framinghammer   Baltic Porter
    ## 6 Barrel-Aged Framinghammer - Cocoa-Nut   Baltic Porter

    stout_pack <- beer_picker(0,0,0,6)
    stout_pack

    ##                                    Name                    Type
    ## 1                            Deth's Tar           Oatmeal Stout
    ## 2                          French Press          American Stout
    ## 3          Kentucky Coffee Barrel Stout           English Stout
    ## 4                         Jam The Radar American Imperial Stout
    ## 5 Barrel Aged Bomb!Prairie Artisan Ales American Imperial Stout
    ## 6                       Half Moon Stout           English Stout
