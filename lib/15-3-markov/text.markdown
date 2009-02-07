Task
----
Generate a markov text from given seed data.


Solution
--------
Generating random text by truely random placement of letters would be unnatural.
    sovudhbyeonnapdubvne
Every letter in the alphabet has a certain probability to occur after another letter.
    l -> l=5% e=10% o=10% i=8% ....
This yields somewhat natural text
    lleno deister
If we take more than one letter into account, readability inncreases.
    # markov-4 (4 letters used when calculating propability)
    "Hell" -> o = 80%, ' '=20%
The more letters we take into account, the more natural the generated words sound.  
What we can do with letters, we can do with whole words!

 - calculate the probability word A follows on word B, using seed data
 - generate random text

include 1