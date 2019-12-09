# Twitter-Sentiment-Analysis
An iOS app that allows prompts users to enter any topic, and informs them about the general sentiment on that topic on Twitter using emoticons.

* [App Preview](#App-Preview)
* [Description](#Description)

### App Preview
![App Preview](https://github.com/ardentlycurious101/Twitter-Sentiment-Analysis/blob/master/TwitterSentimentAnalysis.gif)

### Description
* Created a natural language processing (NLP) model using CreateML by training the model with 100 tweets that are labeled “positive", “negative", or “neutral".
* Used the Swifter framework from Twitter Developer to scrape 100 latest tweets on topics chosen
* Performed sentiment analysis and classified the tweets 
* Parsed the tweet data into JSON format
* Made batch predictions (100 at a time) and kept the score 
* Translated the score into emoticons with different facial expressions that represents the general user sentiments about the topic
* Updated the UI with a suitable emoticon to represent the general sentiment on the topic.
