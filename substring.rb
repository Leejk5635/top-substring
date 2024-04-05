def substrings(inputText, dictionary)
  inputText = inputText.downcase.gsub(/[^a-z0-9\s]/i,'')
  words = inputText.split(" ")
  output = Hash.new(0)
  words.each do |searchWord|
    dictionary.each do |dicWord|
      if searchWord.include?dicWord
        output[dicWord] += 1
      end
    end
  end
  output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
