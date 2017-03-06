def dictionary
  dictionary = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&",
    a: "a"
  }
end

def word_substituter(tweet)
    tweet_arr = tweet.split(" ")
    original_words_arr = dictionary.keys.to_s
    shortened_tweet = []
    tweet_arr.each do |wrd|
      if original_words_arr.include?(wrd.downcase)
        shortened_tweet.push(dictionary[wrd.downcase.intern])
      else
        shortened_tweet.push(wrd)
      end
    end

    shortened_tweet.join(" ")

end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    "#{short_tweet[0..136]}..."
  elsif tweet.length < 140
    tweet
  end

end
