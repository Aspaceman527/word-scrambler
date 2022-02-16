 1 #! /usr/bin/ruby
 2
 3 # Scramble words.
 4
 5 class String
 6   def scramble
 7     s = self.split(//).sort_by { rand }.join(”)
 8     s =~ /[A-Z]/ && s =~ /[a-z]/ ? s.capitalize : s
 9   end
10
11   def scramble_words
12     ret = []
13     self.split(/\s+/).each { |nws|
14       nws.scan(/^(\W*)(\w*)(\W*)$/) { |pre, word, post|
15         ret << pre + word.scramble + post
16       }
17     }
18
19     ret.join " "
20   end
21 end
22
23 loop do
24   print "Enter something: "
25   str = gets.chomp
26   exit if str.empty?
27   puts str.scramble_words
28 end
