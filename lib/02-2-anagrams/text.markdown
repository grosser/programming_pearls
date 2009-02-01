An anagram for 'no' is 'on', meaning same letters - different order.

Task
----
 - For a given dictionary, find all anagrams and list them
 - output in lines: `eenprsst = presents, serpents`

Solution
--------
 - Store each word in a hash, where the key are the words sorted letters and the values are all words with the same letters
 - Remove all keys that only have a single anagram

include 1.rb