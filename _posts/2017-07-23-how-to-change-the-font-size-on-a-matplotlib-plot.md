---
title: How to change the font size on a matplotlib plot
time: 2017-07-23 10:00:00 +0800
layout: post
keywords: matplotlib
categories: python
tags : [fontsize]
---

For example, like this

    import matplotlib     
    matplotlib.rc('xtick', labelsize=20)     
    matplotlib.rc('ytick', labelsize=20)

From the [matplotlib documentation][1]

	font = {'family' : 'normal',
	        'weight' : 'bold',
	        'size'   : 22}	
	matplotlib.rc('font', **font)

This sets the font of all items to the font specified by the kwargs object, `font`.

Alternatively, you could also use the `rcParams` and `update` method as suggested in [this answer][2]:

`matplotlib.rcParams.update({'font.size': 22})`

You can find a full list of available properties on the [Customizing matplotlib page][3].

If you want to change the fontsize for just a specific plot that has already been created, try this:

import matplotlib.pyplot as plt

    ax = plt.subplot(111, xlabel='x', ylabel='y', title='title')
    for item in ([ax.title, ax.xaxis.label, ax.yaxis.label] +
                  ax.get_xticklabels() + ax.get_yticklabels()):
        item.set_fontsize(20)

One more addition

**Update**: See the bottom of the answer for a slightly better way of doing it.

**Update #2**: I've figured out changing legend title fonts too.

**Update #3**: There is a bug in Matplotlib 2.0.0 that's causing tick labels for logarithmic axes to revert to the default font. Should be fixed in 2.0.1 but I've included the workaround in the 2nd part of the answer.

This answer is for anyone trying to change all the fonts, including for the legend, and for anyone trying to use different fonts and sizes for each thing. It does not use rc (which doesn't seem to work for me). It is rather cumbersome but I could not get to grips with any other method personally. It basically combines ryggyr's answer here with other answers on SO.

	import numpy as np
	import matplotlib.pyplot as plt
	import matplotlib.font_manager as font_manager
	
	# Set the font dictionaries (for plot title and axis titles)
	title_font = {'fontname':'Arial', 'size':'16', 'color':'black', 'weight':'normal',
	  'verticalalignment':'bottom'} # Bottom vertical alignment for more space
	axis_font = {'fontname':'Arial', 'size':'14'}
	
	# Set the font properties (for use in legend)   
	font_path = 'C:\Windows\Fonts\Arial.ttf'
	font_prop = font_manager.FontProperties(fname=font_path, size=14)
	
	ax = plt.subplot() # Defines ax variable by creating an empty plot
	
	# Set the tick labels font
	for label in (ax.get_xticklabels() + ax.get_yticklabels()):
	label.set_fontname('Arial')
	label.set_fontsize(13)
	
	x = np.linspace(0, 10)
	y = x + np.random.normal(x) # Just simulates some data
	
	plt.plot(x, y, 'b+', label='Data points')
	plt.xlabel("x axis", **axis_font)
	plt.ylabel("y axis", **axis_font)
	plt.title("Misc graph", **title_font)
	plt.legend(loc='lower right', prop=font_prop, numpoints=1)
	plt.text(0, 0, "Misc text", **title_font)
	plt.show()

The benefit of this method is that, by having several font dictionaries, you can choose different fonts/sizes/weights/colours for the various titles, choose the font for the tick labels, and choose the font for the legend, all independently.

**UPDATE**:

I have worked out a slightly different, less cluttered approach that does away with font dictionaries, and allows any font on your system, even .otf fonts. To have separate fonts for each thing, just write more `font_path` and `font_prop` like variables.

{% raw %} 
	import numpy as np
	import matplotlib.pyplot as plt
	import matplotlib.font_manager as font_manager
	import matplotlib.ticker
	# Workaround for Matplotlib 2.0.0 log axes bug https://github.com/matplotlib/matplotlib/issues/8017 :
	matplotlib.ticker._mathdefault = lambda x: '\\mathdefault{%s}'%x 
	
	# Set the font properties (can use more variables for more fonts)
	font_path = 'C:\Windows\Fonts\AGaramondPro-Regular.otf'
	font_prop = font_manager.FontProperties(fname=font_path, size=14)
	
	ax = plt.subplot() # Defines ax variable by creating an empty plot
	
	# Define the data to be plotted
	x = np.linspace(0, 10)
	y = x + np.random.normal(x)
	plt.plot(x, y, 'b+', label='Data points')
	
	for label in (ax.get_xticklabels() + ax.get_yticklabels()):
	    label.set_fontproperties(font_prop)
	    label.set_fontsize(13) # Size here overrides font_prop
	
	plt.title("Exponentially decaying oscillations", fontproperties=font_prop,
	          size=16, verticalalignment='bottom') # Size here overrides font_prop
	plt.xlabel("Time", fontproperties=font_prop)
	plt.ylabel("Amplitude", fontproperties=font_prop)
	plt.text(0, 0, "Misc text", fontproperties=font_prop)
	
	lgd = plt.legend(loc='lower right', prop=font_prop) # NB different 'prop' argument for legend
	lgd.set_title("Legend", prop=font_prop)
	
	plt.show()
{% endraw %} 

More information see [here][4]

   [1]: http://matplotlib.sourceforge.net/api/matplotlib_configuration_api.html#matplotlib.rc
   [2]: https://stackoverflow.com/questions/3899980/how-to-change-the-font-size-on-a-matplotlib-plot
   [3]: http://matplotlib.org/users/customizing.html
   [4]:https://stackoverflow.com/questions/3899980/how-to-change-the-font-size-on-a-matplotlib-plot

