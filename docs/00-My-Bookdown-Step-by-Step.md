# My Bookdown step-by-step

## A new R project "Ipsum"

Create a new project in R Studio. Create a new `doc/` folder directly under `Master` branch. Push repo to Github.

This repo is hosted on a free account. So the repo is set to public for me to enable [Github Pages](https://pages.github.com) settings.  

One needs to go into repo settings to enable github page.

## Bookdown boilerplate

Copy or clone Sean's Bookdown boilerplate ([Bookdown-Start Repo](https://github.com/seankross/bookdown-start)). Start with these files and make modifications.

### _output.yml

Update line 8 "Ipsum" as this will be the book name.

### _bookdown.yml

Update:

`book_filename`
`repo` (optional)
`output_dir: docs` 
`rmd_files` specifies the order of chapters. It helps to name each file with a number prefix.
`new_session: yes`

### index.Rmd

Write __Preface__ or __Introduction__. 

Update:
`Title`
`Author`
`Date`
`GitHub-repo` 
`Url` is where the book will be published. I used [https://jnlwh.github.io/Ipsum/](https://jnlwh.github.io/Ipsum/) to see the final results.
`Description`
`cover-image` (optional, .pgn works)

## Start writing

I created page files at once with


```r
library("bookdown")

file.create("00-My-Bookdown-Step-by-Step.Rmd",
            "01-What-is-Lorem-Ipsum.Rmd",
            "02-Why-do-we-use-it.Rmd",
            "03-Where-does-it-come-from.Rmd",
            "04-Where-can-I-get-some.Rmd")
```

Each file is a "page" on the online book website. 

Personally I prefer longer pages with subsection (Heading 2, 3, ...). For me it's easier to scroll down with a good menu rather than need to load page after page containing very little content.

Headings automatically get to turn into Chapter and subsections with numbering in place.

## Book preview

Render book with r code


```r
bookdown::render_book("index.Rmd")
```

Go into ´docs > index.html` to preview book in Web Browser. Up until now, the book HTML is on the local computer.

## Push code to GitHub

Thanks to the `docs` folder under `master` branch, once repo is pushed to master the Github Page is live immediately at [https://jnlwh.github.io/Ipsum/](https://jnlwh.github.io/Ipsum/).

After I made some changes, I need to re-render the books and then push to Github for the changes to show on the Github Page.

