def word_substituter(string)  
  words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2', 
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' =>'u',
    "at" => "@", 
    "and" => "&"
  }

  tweet_arr = []
  arr = string.split(" ")

  arr.each do |word|
    low_word = word.downcase
    if words[low_word]   
      tweet_arr << words[low_word]
    else
      tweet_arr << word
    end
  end
  return tweet_arr.join(" ")
end

def bulk_tweet_shortener(array)
  return array.each {|twt| puts word_substituter(twt)}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word =  word_substituter(tweet) : word =  tweet
  return word
end

def shortened_tweet_truncator(tweet)
  word = word_substituter(tweet)
  word.length > 140 ? word = word.slice(0...140) : word = word
  return word
end