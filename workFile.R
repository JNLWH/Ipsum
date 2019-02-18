library("bookdown")

file.create("01-What-is-Lorem-Ipsum.Rmd",
            "02-Why-do-we-use-it.Rmd",
            "03-Where-does-it-come-from.Rmd",
            "04-Where-can-I-get-some.Rmd")

file.remove("01-Introduction.Rmd", 
            "02-Diving-In.Rmd",
            "03-Work-In-Progress.Rmd")

bookdown::render_book("index.Rmd")

