# Installation
pip install [fortunes-historical](https://pypi.org/project/fortunes-historical/)

# Historical fortune data files

## DESCRIPTION
This package contains the data files for the [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) utilities published in [historical versions of Research & BSD Unix](https://minnie.tuhs.org/cgi-bin/utree.pl), between January 1979 and June 1993.

The file formats of the earliest ones have been modified in order to make them usable with modern fortune implementations.

As was the usage later on, the original "scene" data files have been renamed "fortunes", and the "obscene" ones have been renamed "fortunes-o".
The offensive files are also [rot13](https://en.wikipedia.org/wiki/ROT13) processed in order to protect overly sensible eyes
(modern fortune implementations are able to use them directly).

Please note that the research versions of Unix and BSD versions up to 4BSD made no distinctions between ordinary and offensive fortunes.
Avoid using or peering into these files if you fear to be shocked. I'll take no responsability for psychological damages. You've been warned!

Last but not least, though I didn't want to remove any historical content, I decided to move quotes from certain 20th century dictators into the offensive files...

## FILES
Date|Filename
---|---
1979-01|V7-fortunes
1979-05|32V-fortunes
1980-03|3BSD-fortunes
1980-10|4BSD-fortunes
1982-12|4.1cBSD-fortunes (scene), 4.1cBSD-fortunes-o (obscene) 
1983-09|4.2BSD-fortunes (scene), 4.2BSD-fortunes-o (obscene) 
1983-11|2.9BSD-fortunes (scene), 2.9BSD-fortunes-o (obscene) 
1985-02|V8-fortunes
1986-06|4.3BSD-fortunes (scene), 4.3BSD-fortunes-o (obscene) 
1991-06|Net2-fortunes, Net2-fortunes-o, Net2-startrek, Net2-zippy 
1992-02|2.11BSD-fortunes (scene), 2.11BSD-fortunes-o (obscene) 
1993-06|4.4BSD-fortunes, 4.4BSD-fortunes-o, 4.4BSD-fortunes2, 4.4BSD-fortunes2-o, 4.4BSD-limerick, 4.4BSD-startrek, 4.4BSD-zippy 

## SEE ALSO
[fortune(6)](https://www.freebsd.org/cgi/man.cgi?query=fortune&manpath=FreeBSD+14.0-current),
[strfile(8)](https://www.freebsd.org/cgi/man.cgi?query=strfile)

## HISTORY
These data files are intended to be used with the [PNU project](https://github.com/HubTou/PNU)'s re-implementation of the [fortune](https://github.com/HubTou/fortune) command.

The Unix fortune command appeared with Unix 7th edition (released in January 1979), though it seems that [Ken Arnold](https://en.wikipedia.org/wiki/Ken_Arnold), who contributed the much more complete BSD version, wrote his around September 1978.

The initial data file were only one liners, without delimiter.

4BSD and some of the following versions seemed to use a [dBASE](https://fr.wikipedia.org/wiki/DBase) III DBT format for the data file combining both the ordinary and offensive fortunes, as well as the strings and offsets.

From 4.1cBSD to 4.3BSD, the data files were almost identical to the modern ones, except that the delimiter was a double percent character instead of a single one.
The data files also not always ended with a delimiter.

From BSD Net/2, fortune adopted the modern implementation of data files, with a text file containing multi-lines strings separated with single percent character delimiter,
and a binary ".dat" file containing 64bits pointers to the strings, after a small [header](https://www.freebsd.org/cgi/man.cgi?query=strfile).

## LICENSE
The original materials were made available under [Caldera International](https://en.wikipedia.org/wiki/Caldera_International) [UNIX enthousiasts license](https://github.com/HubTou/fortunes-historical/blob/main/License).

## AUTHORS
[Hubert Tournier](https://github.com/HubTou) for the package.

A lot of people for the fortune files contents!

And Caldera International for making the source materials available.

