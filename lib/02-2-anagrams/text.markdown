Task
----
 - For a given dictionary, find all anagrams and list them
 - output in lines: `eenprsst = presents, serpents`

Solution
--------
An anagram for 'no' is 'on', meaning same letters - different order.

 - Store each word in a Hash, where the key are the words sorted letters and the values are all words with the same letters
 - Remove all keys that only have a single anagram

include 1.rb