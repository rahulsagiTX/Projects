library(streamR)
library(tm)

filepath= '/Users/rahulsagi/Downloads'
setwd(filepath)

tweet_df <- parseTweets(tweets='snowstorm_sample2.json')
head(tweet_df)
str(tweet_df)
summary(tweet_df)

textdf <- tweet_df$text
myCorpus <- Corpus(VectorSource(textdf))
myCorpus

inspect(myCorpus[1:3])
myCorpus <- tm_map(myCorpus, tolower)
inspect(myCorpus[1:3])

myCorpus <- tm_map(myCorpus, removePunctuation)
inspect(myCorpus[1:3])

myCorpus <- tm_map(myCorpus, removeNumbers)
inspect(myCorpus[1:3])

myDtm <- TermDocumentMatrix(myCorpus, control = list(minWordLength = 1))
findFreqTerms(myDtm, lowfreq=20)

myStopwords <- stopwords('english')
myStopWords <- c(stopwords('english'),'while','gonna', 'much')
myCorpus<-tm_map(myCorpus, removeWords, myStopwords)

myDtm <- TermDocumentMatrix(myCorpus, control = list(minWordLength= 1))
findFreqTerms(myDtm, lowfreq=10)

install.packages('wordcloud')
library(wordcloud)

inspect(myDtm[266:270,31:40])
m <- as.matrix(myDtm)

dv <- sort(rowSums(m), decreasing=TRUE)

myNames <- names(dv)

d <- data.frame(word=myNames, freq=dv)
wordcloud(d$word, d$freq, min.freq=3)

warnings()
