# mlr3 website

The [mlr-org.com](https://mlr-org.com/) website is created with [Distill for R Markdown](https://rstudio.github.io/distill/website.html) and published with [GitHub Pages](https://docs.github.com/en/pages).

## How to add a new blog post

1. Add a new post with `distill::create_post("Title of Post in Title Case")`.
The new post is created within the `_posts/` subdirectory.
2. Write the post. 
Place external images in the subdirectory.
3. Run `rmarkdown::render_site(encoding = 'UTF-8')` to render the website.
The website is created within the `docs/` directory. 
Open `index.html` to check your post.
4. Open a pull request and commit all changed files.
Merged post are published via GitHub Pages.

## How to change the website

* The website consists of pages and blog posts.
* Pages are `.Rmd` files located in the root directory (e.g. `packages.Rmd`).
* Blog posts are stored in `_post` and `blog.Rmd` automatically list them.
* Change the style only in `theme.css` and add comments to all changes.
* The files in `docs/` are the standalone static website which is published with GitHub Pages.
Changes in `docs/` are overwritten by `rmarkdown::render_site()`.
* See [rstudio.github.io/distill](https://rstudio.github.io/distill/) to learn more about Distill.

