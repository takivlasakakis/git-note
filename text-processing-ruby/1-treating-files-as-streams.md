### Treating Files as Streams
#### streaming files line by line
We treat a file as a stream so we don't have to load the entire file into memory.

#### Enumerable streams
`File` includes the `Enumerable` module which is a big deal because we can treat the lines/contents of the file as collections and it makes manipulation of that collection easier.

