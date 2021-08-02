install.packages("rjson")
install.packages("jsonlite")

library('rjson')
library('jsonlite')

setwd('/Users/rahulsagi/Downloads')

json_file <- "snowstorm_sample.json"
storm_tweets <- stream_in(file(json_file))

nrow(storm_tweets)
ncol(storm_tweets)

str(storm_tweets)

data_time = storm_tweets$created_at
username = storm_tweets$user$screen_name
tweet_text = storm_tweets$text

str(data_time)
str(username)
str(tweet_text)

storm <- data.frame(data_time, username, tweet_text)

head(storm)
str(storm)

