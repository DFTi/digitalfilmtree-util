Need to write timecode...

[QTKit Docs](https://developer.apple.com/library/mac/documentation/QuickTime/Reference/QTCocoaObjCKit/_index.html)

With quicktime for windows I want to open an existing movie and add a
timecode track. I have all the code required to do this working on the
mac using QTMovie and the updateMovieFile method, but on Windows there
is no QTMovie/updateMovieFile, and so far I can't seem to get the new
track that I've added to actually save to the file on disk. How do I
do this? With FlattenMovie or something? Will that have to re-write
the entire movie?

Thanks
Trey

if this code is not too stale, it may be your best friend...

ftp://ftp.informatimago.com/pub/mirrors/developer.apple.com/samplecode/qttimecode.win/qttimecode.win.html

later,

douglas

