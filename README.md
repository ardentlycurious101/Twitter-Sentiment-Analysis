# Twitter-Sentiment-Analysis

<div><strong>Description</strong></div>
<div>Built my own natural language processing (NLP) model, and performed sentiment analysis on data scraped from Twitter. This app prompts the user to enter any topic, with or without a hashtag or handle symbol, and scrapes the 100 latest tweets on chosen topic. The app then uses the NLP model I created to perform sentiment analysis, and updates the UI with a suitable emoticon to represent the general sentiment on the topic.</div>
<div>&nbsp;</div>
<div><strong>Concepts Learnt</strong></div>
<ul>
<li>Created an NLP model using CreateML by training the model with 100 tweets that are labeled &ldquo;positive", &ldquo;negative", or &ldquo;neutral".</li>
<li>
<div>Used the Swifter framework from Twitter Developer to scrape 100 latest tweets on topics chosen</div>
</li>
<li>
<div>Performed sentiment analysis and classified the tweets&nbsp;</div>
</li>
<li>
<div>Parsed the tweet data using JSON</div>
</li>
<li>
<div>Made batch predictions (100 at a time) and kept the score&nbsp;</div>
</li>
<li>
<div>Translated the score into emoticons with different facial expressions that represents the general user sentiments about the topic</div>
</li>
<li>
<div>Updated the UI with the emoticon</div>
</li>
</ul>
