Task & Solutions
---------
### Unique words
Show all words that are inside a given text (unique)!
include 1

### Word counting
Show all words sorted by number of occurance!

Use a 0-based Hash to mark how often a word has occured.
include 2

### Benchmarking
Benchmark occurance counting solution!
include 3-1

### Optimization
Optimize for performance!

Reading the File once and splitting later.
include 3-2

Benchmarking of optimized occurance search  
shows that it is faster (2.5s vs 3.0s for processing)

Memroy usage: ("puts memory" inside the processing loop)
    normal:    mapped: 17652K    writeable/private: 2180K    shared: 0K
    optimized: mapped: 109892K   writeable/private: 94420K   shared: 0K
optimized: the text (4.x mb) is in memory twice (once for `IO.read` and  
once for `text.split`, no garbage collection was run)
