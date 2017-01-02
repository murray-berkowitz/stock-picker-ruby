dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    result = Hash.new(0)
    string = string.downcase.split
    string.each do |e|
        dictionary.each do |ele|
            if e.include?(ele)
                result[ele] += 1
            end
        end
    end
    p result
    return result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)