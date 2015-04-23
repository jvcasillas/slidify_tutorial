---
title       : Example slidify
subtitle    : Subtitle goes here
author      : Joseph Casillas
job         : PhD Candidate
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap, interactive] # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : ua.png
biglogo     : ua.png
assets      : {assets: ../../assets}
--- .class #id


## Slidify

- I am going to show you how to make a presentation just like this one
- You can download the current version of this presentation [here](https://github.com/jvcasill/slidify_tutorial/tree/gh-pages), use it as a template and edit as you like
- Or you can follow these instructions to make one of your own

--- .segue bg:grey

# First things first...

--- .class #id

## Install packages

- You need to make sure you have all of the necessary dependencies installed on your computer
- Open Rstudio and copy and paste the following code into the console (you only need to do this once)

</br>

```
install.packages("devtools")  
install_github('slidify', 'ramnathv')  
install_github('slidifyLibraries', 'ramnathv')
```

--- .class #id

## Create slidify

- Each presentation is called a 'deck'
- Set your working directory to wherever you want the folder
- Load slidify package with `library(slidify)`
- Create the deck with `author('mydeck')`
	- You can name it whatever you want
	- This will create a folder with all the necessary files

--- .class #id

## Explore the deck

- You should now have a folder in your working directory with the name you entered above
- All of the necessary files are there
- The `.Rmd` file is the only one you need to work with
	- This is where you will actually modify the deck (your presentation)
	- It should have opened automatically in RStudio
- The YAML front matter (the very first thing in the `.Rmd` file) should look like this...

--- .class #id

## 

```
---  
title       :  
subtitle    :  
author      :  
job         :  
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}  
highlighter : highlight.js  # {highlight.js, prettify, highlight}  
hitheme     : tomorrow      #   
widgets     : []            # {mathjax, quiz, bootstrap}  
mode        : selfcontained # {standalone, draft}  
knit        : slidify::knit2slides  
---  
```

- You can fill in the information as you see fit
	- You will typically use `title, subtitle, author, job`
	- but the `widgets` are also important

--- .class #id

## 

```
---
title       : Example slidify
subtitle    : Subtitle goes here
author      : Joseph Casillas
job         : PhD Candidate
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : ua.png
biglogo     : ua.png
assets      : {assets: ../../assets}
---
```

- You can make your deck look like this
- Specifically, you should add `widgets     : [mathjax, quiz, bootstrap]`

--- .class #id

## Widgets

- The widgets will allow you to...
	- make quizzes
	- use math formulas and 
	- utilize the bootstrap framework
- The logos are located in the `assets > img` folder
	- This is where you will add any other images you want to put in your presentation

--- .class #id

## RMarkdown syntax

- Markdown syntax is very easy
- You can find the basics [here](http://rmarkdown.rstudio.com)
- The main thing you need to know is that you make new slides using `---` and `##`

### `##`

- The double pound sign (hashtags) create the title of the slide
- The title of this slide was made with `## Rmarkdown syntax`

### `---`

- To end a slide use three dashes
- Importantly after you end a slide, you designate the class of the next one 
- The default (what you see here) is `.class #id`
- So I ended this slide using `--- .class #id`

--- .class #id

## 


```
## RMarkdown syntax

- Markdown syntax is very easy
- You can find the basics [here](http://rmarkdown.rstudio.com)
- The main thing you need to know is that you make new slides using `---` and `##`

### `##`

- The double pound sign (hashtags) create the title of the slide
- The title of this slide was made with `## Rmarkdown syntax`

### `---`

- To end a slide use three dashes
- Importantly after you end a slide, you designate the class of the next one 
- The default (what you see here) is `.class #id`
- So I ended this slide using `--- .class #id`

 --- .class #id
```

- This is the previous slide in markdown

--- .class #id


## Creating the deck

- Once you have made the slides in markdown you are ready to generate the html file that will be your presentation
- You do this using the `slidify()` command like this...

```
slidify('index.Rmd')
```

- This will generate a `index.html` file. 
- Double click it and open your presentation in web browser

--- .segue bg:grey

## More to come soon...

--- 








## R code


```r
plot(cars)
```

<img src="assets/fig/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

<div class='well'>
<p><b> Note: </b> You can hit <code>p</code> on any slide to reveal the source (this doesn't seem to work in safari</p>
</div>

--- &radio

## Radio

Eleanor scores 680 on the Mathematics part of the SAT. The distribution of SAT scores in a reference population is Normal, with mean 500 and standard deviation 100. Gerald takes the American College Testing (ACT) Mathematics test and scores 27. ACT scores are Normally distributed with mean 18 and standard deviation 6. Assuming that both tests measure the same kind of ability, who did better?

1. _Eleanor_
2. Gerald

*** .explanation

The best way to compare their performance is to calculate their standardized scores.

$$z_E = \frac{680 - 500}{100} = 1.8$$
$$z_G = \frac{27 - 18}{6} = 1.5$$

Since, Eleanor has a higher standardized score, we can conclude that Eleanor did better!

--- &radio2

## Radio (Two Column)

Which of these two scatterplots have a higher correlation?

1. A
2. B

*** =image

<img src=https://oli.cmu.edu/repository/webcontent/470835bf80020ca60018d5a6c359d34c/_u2_summarizing_data/_m2_examining_relationships/webcontent/linear1.gif>

*** .explanation

Both have the same correlation.

---  &checkbox

## Checkbox

Linda is 31 years old, single, outspoken, and very bright. She majored in philosophy. As a student, she was deeply concerned with issues of discrimination and social justice, and also participated in anti-nuclear demonstrations.

Which is more probable?

1. _Linda is a bank teller._
2. Linda is a bank teller and is active in the feminist movement.

*** .hint

Think about the probabilities of each event, and that of both of them together.

*** .explanation

If you chose (2), stop back and think. Suppose we denote the event of Linda being a teller by A and the event she is active in the feminist movement by B, then probabilities in question can be written as.

- P(A)
- $P(A \cap B)$

This is called the [conjugacy fallacy](http://en.wikipedia.org/wiki/Conjunction_fallacy) that occurs when it is assumed that specific conditions are more probable than a single general one.

---  &multitext

## Multi Text

The length of human pregnancies from conception to birth varies according to a distribution that is approximately Normal with mean 266 days and standard deviation 16 days.

1. What percent of pregnancies last fewer than 240 days?
2. What percent of pregnancies last between 240 and 270 days?
3. How long do the longest 25% pregnancies last?

*** .explanation

1. <span class='answer'>5.2081279</span>
2. <span class='answer'>54.6625046</span>
3. <span class='answer'>276.791836</span>

*** .hint

This is a hint

---  &submitcompare1

## Submit and Compare

What is the sample space for this experiment?

*** .explanation

The sample space for this experiment is

{HH, HT, TH, HH}

---  &submitcompare2 rows:5

## Submit and Compare (2 Column)

The solid curve represents the distribution of heights of all males in the US. The dotted curve represents the distribution of heights reported by males on OkCupid, an online dating website.

<img class=center
  src=http://cdn.okcimg.com/blog/lies/MaleHeightDistribution.png width=400px>


*** =question

What is happening here?

*** .explanation

It is easier to interpret things if we overlay a fitted normal distribution for the heights reported by males on OkCupid. Looking at the graph carefully, we can observe two things.

<img class=center
  src=http://cdn.okcimg.com/blog/lies/MaleHeightDistributionYoink.png width=400px>

1. Males on OkCupid probably tend to inflate their heights!
2. You can also see a more subtle vanity at work: starting at roughly 5' 8", the top of the dotted curve tilts even further rightward. This means that guys as they get closer to six feet round up a bit more than usual, stretching for that coveted psychological benchmark.

---

## Interactive Chart

</br>


<div id = 'chart1' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1()
    });
    function drawchart1(){  
      var opts = {
 "dom": "chart1",
"width":    800,
"height":    400,
"x": "Phoneme",
"y": "Frequency",
"group": "Group",
"type": "multiBarChart",
"id": "chart1" 
},
        data = [
 {
 "Group": "g1",
"Phoneme": "i",
"Frequency":              8 
},
{
 "Group": "g1",
"Phoneme": "I",
"Frequency":             13 
},
{
 "Group": "g1",
"Phoneme": "E",
"Frequency":             10 
},
{
 "Group": "g1",
"Phoneme": "i",
"Frequency":              1 
},
{
 "Group": "g1",
"Phoneme": "I",
"Frequency":              4 
},
{
 "Group": "g1",
"Phoneme": "E",
"Frequency":             13 
},
{
 "Group": "g1",
"Phoneme": "i",
"Frequency":             15 
},
{
 "Group": "g1",
"Phoneme": "I",
"Frequency":              5 
},
{
 "Group": "g1",
"Phoneme": "E",
"Frequency":             18 
},
{
 "Group": "g1",
"Phoneme": "i",
"Frequency":              6 
},
{
 "Group": "g2",
"Phoneme": "I",
"Frequency":             26 
},
{
 "Group": "g2",
"Phoneme": "E",
"Frequency":             15 
},
{
 "Group": "g2",
"Phoneme": "i",
"Frequency":             17 
},
{
 "Group": "g2",
"Phoneme": "I",
"Frequency":             17 
},
{
 "Group": "g2",
"Phoneme": "E",
"Frequency":             29 
},
{
 "Group": "g2",
"Phoneme": "i",
"Frequency":             23 
},
{
 "Group": "g2",
"Phoneme": "I",
"Frequency":             27 
},
{
 "Group": "g2",
"Phoneme": "E",
"Frequency":             17 
},
{
 "Group": "g2",
"Phoneme": "i",
"Frequency":             24 
},
{
 "Group": "g2",
"Phoneme": "I",
"Frequency":             29 
},
{
 "Group": "g3",
"Phoneme": "E",
"Frequency":             38 
},
{
 "Group": "g3",
"Phoneme": "i",
"Frequency":             26 
},
{
 "Group": "g3",
"Phoneme": "I",
"Frequency":             39 
},
{
 "Group": "g3",
"Phoneme": "E",
"Frequency":             39 
},
{
 "Group": "g3",
"Phoneme": "i",
"Frequency":             28 
},
{
 "Group": "g3",
"Phoneme": "I",
"Frequency":             35 
},
{
 "Group": "g3",
"Phoneme": "E",
"Frequency":             34 
},
{
 "Group": "g3",
"Phoneme": "i",
"Frequency":             34 
},
{
 "Group": "g3",
"Phoneme": "I",
"Frequency":             32 
},
{
 "Group": "g3",
"Phoneme": "E",
"Frequency":             36 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

---

## Interactive Console

<div align="center">

<!-- MotionChart generated in R 3.1.3 by googleVis 0.5.8 package -->
<!-- Sat Mar 28 14:52:32 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMotionChartIDd8c557f0f7d () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Apples",
2008,
"West",
98,
78,
20,
"2008-12-31" 
],
[
 "Apples",
2009,
"West",
111,
79,
32,
"2009-12-31" 
],
[
 "Apples",
2010,
"West",
89,
76,
13,
"2010-12-31" 
],
[
 "Oranges",
2008,
"East",
96,
81,
15,
"2008-12-31" 
],
[
 "Bananas",
2008,
"East",
85,
76,
9,
"2008-12-31" 
],
[
 "Oranges",
2009,
"East",
93,
80,
13,
"2009-12-31" 
],
[
 "Bananas",
2009,
"East",
94,
78,
16,
"2009-12-31" 
],
[
 "Oranges",
2010,
"East",
98,
91,
7,
"2010-12-31" 
],
[
 "Bananas",
2010,
"East",
81,
71,
10,
"2010-12-31" 
] 
];
data.addColumn('string','Fruit');
data.addColumn('number','Year');
data.addColumn('string','Location');
data.addColumn('number','Sales');
data.addColumn('number','Expenses');
data.addColumn('number','Profit');
data.addColumn('string','Date');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMotionChartIDd8c557f0f7d() {
var data = gvisDataMotionChartIDd8c557f0f7d();
var options = {};
options["width"] =    600;
options["height"] =    500;
options["state"] = "";

    var chart = new google.visualization.MotionChart(
    document.getElementById('MotionChartIDd8c557f0f7d')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "motionchart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMotionChartIDd8c557f0f7d);
})();
function displayChartMotionChartIDd8c557f0f7d() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMotionChartIDd8c557f0f7d"></script>
 
<!-- divChart -->
  
<div id="MotionChartIDd8c557f0f7d" 
  style="width: 600; height: 500;">
</div>
</div>

--- .segue bg:grey

## HTML widgets

---

## HTML widget library


