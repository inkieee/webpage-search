#!/bin/bash

CHROME_PATH="/usr/bin/google-chrome-stable %U"
SITES=( 'https://www.bing.com/search?q=fish=Submit'
	'https://www.bing.com/search?q=engineering+internship=Submit'
	'https://www.bing.com/search?q=mechanical=Submit'
	'https://www.bing.com/search?q=mechanical+internships=Submit'
	'https://www.bing.com/search?q=mechanical+engineering+jobs=Submit'
	'https://www.bing.com/search?q=job=Submit'
	'https://www.bing.com/search?q=jobs=Submit'
	'https://www.bing.com/search?q=engineering+opportunities=Submit'
	'https://www.bing.com/search?q=engineering+opportunity=Submit'
	'https://www.bing.com/search?q=mechanical+society=Submit'
	'https://www.bing.com/search?q=taco=Submit'
	'https://www.bing.com/search?q=puppies=Submit'
	'https://www.bing.com/search?q=burrito=Submit'
	'https://www.bing.com/search?q=grilling+technique=Submit'
	'https://www.bing.com/search?q=workout+tips=Submit'
	'https://www.bing.com/search?q=fitness=Submit'
	'https://www.bing.com/search?q=stretching=Submit'
	'https://www.bing.com/search?q=free+offer=Submit'
	'https://www.bing.com/search?q=freebie=Submit'
	'https://www.bing.com/search?q=science=Submit'
	'https://www.bing.com/search?q=strain+studies=Submit'
	'https://www.bing.com/search?q=jerk+chicken=Submit'
	'https://www.bing.com/search?q=3D+printer=Submit'
	'https://www.bing.com/search?q=python+script+examples=Submit'
	'https://www.bing.com/search?q=tools=Submit'
	'https://www.bing.com/search?q=matweb=Submit'
	'https://www.bing.com/search?q=wolframalpha=Submit'
	'https://www.bing.com/search?q=comsol=Submit'
	'https://www.bing.com/search?q=ANSYS=Submit'
	'https://www.bing.com/search?q=solidworks=Submit'
	'https://www.bing.com/search?q=matlab=Submit'
	'https://www.bing.com/search?q=autodesk=Submit')

eval $CHROME_PATH --new-window ${SITES[@]}


#pkill chrome
OPERA_PATH="opera %U"
eval $OPERA_PATH --new-window ${SITES[@]}

