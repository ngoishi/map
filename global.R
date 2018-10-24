library(choroplethr)

### データの読み込み ###
data(df_japan_census)
jpn.census <- df_japan_census
jpn.shp <- readRDS("data/JPN_adm1.rds") # Global Administrative Areas http://www.gadm.org/countryより

#表示用に日本語の都道府県名列を追加
jpn.census <- data.frame(jpn.census, 'prefecture' = jpn.shp@data[["NL_NAME_1"]])

#プルダウン用
col_choice <-  c('pop_2010', 'percent_pop_change_2005_2010',
                 'pop_density_km2_2010')

names(col_choice) <- col_choice
