df1 <- read_csv("output/190116-lijiaxiang-id_first_6_digits.csv")
df2 <- read_csv("output/181218-lijiaxiang-id_first_6_digits.csv")
df1 %>%
    left_join(df2, by = c("first_six_num" = "b6")) %>%
    filter(!is.na(adds))
# 空值很多，直接读 json

library(data.table)
df <- fread("output/190116-lijiaxiang-id_first_6_digits_json.txt",encoding = "UTF-8")
df %>% select(1:4) %>%
    `names<-`(c("first_6_num", "location", "lon", "lat")) %>%
    na.omit() %>%
    distinct() %>%
    rio::export("output/190801-lijiaxiang-id6_location_lon_lat.xlsx")
