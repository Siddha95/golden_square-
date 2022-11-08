# So that I can manage my time
# I want to see an estimate of reading time for a text,
#  assuming that I can read 200 words a minute.

# A method called reading_time that takes a series of sentences
# And returns the time it will take to read

def reading_time (text) # one, two
    wordCount =  text.split.count * 0.005 # 2
    return wordCount
end

# 0.005 is the WordPerSecond count
