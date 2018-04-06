---
title: Exercise 1
description: >-
  Exercise 1


---
## Exercise 1

```yaml
type: NormalExercise
lang: r
xp: 100
skills: 1
key: 2bdda055ef
```

Do some data science.

`@instructions`


`@hint`


`@pre_exercise_code`
```{r}
###TSUNAMIS EXAMPLE
library(lessR)
x=read.csv("tsunamis.txt", sep="\t")
```
`@sample_code`
```{r}
# the variable x has already been initialized
```
`@solution`
```{r}
###TSUNAMIS EXAMPLE
library(lessR)
x=read.csv("tsunamis.txt", sep="\t")
xproc=as.numeric(as.character(x$Magnitude))
colors = c("#00b1ac")

Histogram(xproc, color.fill = colors, color.bg="black", color.stroke="white", color.fg="white", main="", sub="", xlab="Magnitude", ylab="Frequency", color.axis = "white", pdf.file = "output.pdf", bin.width=.25)
mean(xproc, na.rm=TRUE)
median(xproc, na.rm=TRUE)
range(xproc, na.rm=TRUE)

var(xproc, na.rm=TRUE)
sd(xproc,na.rm=TRUE)

summary(xproc)
boxplot(xproc)
```
`@sct`
```{r}
dfgdfgdfgfdg
```




