---
title: 'Datos: datasets translations to facilitate the teaching of data science 
 in different languages'
tags:
  - R
  - learning
  - communities
authors:
  - name: Riva Quiroga
    orcid: 0000-0002-1147-4135
    affiliation: 1
  - name: Mauricio Vargas
    orcid: 0000-0003-1017-7574
    affiliation: 1
  - name: Mauro Lepore
    orcid: 0000-0002-1986-7988
    affiliation: 2
  - name: Rayna Harris
    orcid: 0000-0002-7943-5650
    affiliation: 3
  - name: Daniela Vasquez
    orcid: 0000-0001-8016-1469
    affiliation: 4
affiliations:
 - name: Pontifical Catholic University of Chile
   index: 1
 - name: 2 Degrees Investing Initiative
   index: 2
 - name: University of California, Davis
   index: 3
 - name: R-Ladies Montevideo
   index: 4
citation_author: Quiroga et. al.
date: 30 June 2020
year: 2020
bibliography: references.bib
csl: apa.csl
output: rticles::joss_article
---

# Summary
  
'R for Data Science' [@r4ds] is a hands-on book used by many to learn the 
fundamental of the R language. However, many Spanish speakers struggle
to use this book as a resources because of the English language barrier.
To address this gap in accessibility, Quiroga et al translated
the book to Spanish ('R para Ciencia de Datos' [@r4dses]). 
Additionally, we created the R package `datos::` to automatically translate 
datasets from English to Spanish using computational tools already existing in 
both @base and @tidyverse. Together, the book 'R Para Ciencia de Datos' and the 
`datos::` package allows Spanish speakers to spend their energy not in 
understanding English but in learning data science in R.

# Diversity, equity and inclusion

'R for Data Science (R4DS)' [@r4ds] and the 'R Cookbook' [@rcookbook] both 
provide context and detailed examples for different R functions. However, 
understanding this context, written in English, increases the cognitive load 
required to learn the R language. Both in Latin America and Spain, the lack of 
a key English proficiency in large groups of population, constitutes a large 
learning barrier that has its roots in economic inequality and access to 
education.  Some peple may ask 'why don't they learn English?'. That is a 
possibility for the few, but not for all. Just as an example, in the case of 
Chile, an elementary level English course costs around 500 USD/month while the 
minimum wage is 350 USD/month. Rather than placing the burden of learning 
English on the learner, we, the community leaders and educators can take action 
to reduce the language barriers with social and technological solutions. 

# Implementation 

The `datos::`package makes use of YAML specifications to automatically 
translate data sets originally available in other R packages. The translated 
data can be used together with R4DS book or independently as a source of 
practice data in Spanish. The YAML specification for each dataset that provides 
the dataset name, how you want to translate the variables, and the description 
for the documentation. This process not only gets the dataset translated, but 
also the help page for the dataset, which is very useful for people who are 
learning. `datos::` translates the datasets on the fly, thanks to 
`delayedAssign()` from base R, so the datasets are not in the package, as it 
just contains YAML files with translation specifications and functions that 
translate the datasets called from other packages.

As an example, let's inspect the first rows of the `airlines` table from 
`nycflights13::`. This dataset has two columns `carrier` and `name`, which 
provide a two-letter abbreviation and the full name of the airline.


```r
head(nycflights13::airlines)
```

```
## # A tibble: 6 x 2
##   carrier name                    
##   <chr>   <chr>                   
## 1 9E      Endeavor Air Inc.       
## 2 AA      American Airlines Inc.  
## 3 AS      Alaska Airlines Inc.    
## 4 B6      JetBlue Airways         
## 5 DL      Delta Air Lines Inc.    
## 6 EV      ExpressJet Airlines Inc.
```

This is the specification for the `airlines` table from `nycflights13::`: Here, 
we provide both a translation (trans:) and description (desc:) in Spanish as 
well as additional helpful information.

```yaml
df:
  source: nycflights13::airlines
  name: aerolineas
variables:
  carrier:
    trans: aerolinea
    desc: "abreviaci\u00f3n de dos caracteres del nombre de la
     aerol\u00EDnea"
  name:
    trans: nombre
    desc: "nombre completo de la aerol\u00EDnea"
help:
  name: aerolineas
  alias: aerolineas
  title: "Nombres de aerol\u00EDneas"
  description: "Nombres de aerol\u00EDneas y su respectivo c\u00f3digo
   carrier de dos d\u00EDgitos."
  usage: aerolineas
  format: Un data.frame con 16 filas y 2 columnas
```

# Conclusion

Us, as members he people of the R Community, in order to form a stronger and 
more integrated community, ease learning, foster access to education for 
students in non-English speaking countries, and secure the development and 
usage of the R Programming Language, do need to acknowledge that a large 
language gap exists and it prevents a large number of users from accessing the 
existing good quality materials created by and for ourselves. The 
solution to close the gap resides in the R Community itself, not in software. 
Our software can be used to start translating well-known R datasets and R4DS 
itself into other languages without reinventing the wheel. What we did is not 
merely translating a book and creating a package. We created the human and 
technical infrastructure to shorten the language gap. Our process, which 
resulted in brand new errors, which leaded us to find ways to make our 
community stronger.

# Acknowlegments 

We are grateful to our colleagues in R-Ladies, R Users Groups, rOpenSci, and 
The Carpentries for their perspectives and support. 

# References
