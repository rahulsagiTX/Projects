library(dplyr)
library(readr)
library(lubridate)
library(ggplot2)
library(tidytext)
library(tidyverse)
library(stringr)
library(tidyr)

setwd('/Users/rahulsagi/Downloads')
hotel <- read_csv('Hilton_Hawaiian_Village_Waikiki_Beach_Resort-Honolulu_Oahu_Hawaii__en.csv')

summary(hotel)

hotel <- hotel[complete.cases(hotel), ]
hotel$review_date <- as.Date(hotel$review_date, format = "%d-%B-%y")

dim(hotel); min(hotel$review_date); max(hotel$review_date)

hotel <- tibble::rowid_to_column(hotel, "ID")

reviews <- hotel %>% 
  filter(!is.na(review_body)) %>% 
  select(ID, review_body) %>% 
  group_by(row_number()) %>% 
  ungroup()

tidy_reviews <- reviews %>%
  unnest_tokens(word, 'review_body')

tidy_reviews <- tidy_reviews %>%
  anti_join(stop_words)

bing_word_counts <- tidy_reviews %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, sentiment, sort = TRUE) %>%
  ungroup()

bing_word_counts %>%
  group_by(sentiment) %>%
  top_n(10) %>%
  ungroup() %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(word, n, fill = sentiment)) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~sentiment, scales = "free") +
  labs(y = "Count of words", x = NULL) +
  coord_flip() + 
  ggtitle('Words that show positive and negative sentiment in the reviews')


  
        
        
