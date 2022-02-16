  #! /usr/bin/ruby
 
  # Scramble words.
 
  class String
    def scramble
      s = self.split(//).sort_by { rand }.join(”)
      s =~ /[A-Z]/ && s =~ /[a-z]/ ? s.capitalize : s
    end

   def scramble_words
     ret = []
     self.split(/\s+/).each { |nws|
       nws.scan(/^(\W*)(\w*)(\W*)$/) { |pre, word, post|
         ret << pre + word.scramble + post
       }
     }

     ret.join " "
   end
 end

loop do
  print "Enter something: "
  $stdout.flush
  str = gets.chomp
  exit if str.empty?
  puts str.scramble_words
end
