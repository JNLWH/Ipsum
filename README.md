# Ipsum

Ipsum is a repo I created to test how Bookdown works. I use Sean Kross [Bookdown boilerplate](https://github.com/seankross/bookdown-start) to get started.

# Step-by-step

This part is the same in Ipsum Chapter 5 My Bookdown Step-by-Step.

## A new R project "Ipsum"

Create a new project in R Studio. Create a new `doc/` folder directly under `Master` branch. Push repo to Github.

This repo is hosted on a free account. So the repo is set to public for me to enable [Github Pages](https://pages.github.com) settings.  

One needs to go into repo settings to enable github page.

## Bookdown boilerplate

Copy or clone Sean's Bookdown boilerplate ([Bookdown-Start Repo](https://github.com/seankross/bookdown-start)). Start with these files and make modifications.

**`_output.yml`**

Update line 8 "Ipsum" as this will be the book name.

**`_bookdown.yml`**

Update:

* `book_filename`
* `repo` (optional)
* `output_dir` : docs
* `rmd_files` specifies the order of chapters. It helps to name each file with a number prefix.
* `new_session` : yes

**`index.Rmd`**

Write *Preface* or *Introduction*. 

Update:

* `Title`
* `Author`
* `Date`
* `GitHub-repo` 
* `Url` is where the book will be published. I used [https://jnlwh.github.io/Ipsum/](https://jnlwh.github.io/Ipsum/) to see the final results.
* `Description`
* `cover-image`: optional

## Start writing

I created a number of `.Rmd` files and removed Sean's boilerplate chapter files.

```{r eval = FALSE}

library("bookdown")

file.create("01-What-is-Lorem-Ipsum.Rmd",
            "02-Why-do-we-use-it.Rmd",
            "03-Where-does-it-come-from.Rmd",
            "04-Where-can-I-get-some.Rmd")
```

Each file is a "page" on the online book website. 

Personally I prefer longer pages with subsection (Heading 2, 3, ...). For me it's easier to scroll down with a good menu rather than need to load page after page containing very little content.

Headings automatically get to turn into Chapter and subsections with numbering in place.

## Book preview

Render book with r code

```{r eval = FALSE}

bookdown::render_book("index.Rmd")

```

Go into ´docs > index.html` to preview book in Web Browser. Up until now, the book HTML is on the local computer.

## Push code to GitHub

Thanks to the `docs` folder under `master` branch, once repo is pushed to master the Github Page is live immediately at [https://jnlwh.github.io/Ipsum/](https://jnlwh.github.io/Ipsum/).

After I made some changes, I need to re-render the books and then push to Github for the changes to show on the Github Page.
