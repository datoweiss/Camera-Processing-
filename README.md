# Camera-Processing-
Simple Access to Camera
Continuously saves set of N images to file - a bit of pre-processing on image by inverting colour and introducing Jitter to the images. 

A bit of noise increases accuracy! We could of course introduce this by introducing a filter in the pre-processing that adds some intensity from some gaussian distrubution or maps a fraction of any pixel to the rest - or really just a host of averaging and normalizing procedures but in this case I figured the instability of the user presents itself as a nice source of System-Symmetric noise. 
