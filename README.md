The [mlr-org.com](https://mlr-org.com/) website is created with [Distill for R Markdown](https://rstudio.github.io/distill/website.html) and publish with github pages.

# How to add a new blog post

1. Add a new post with `distill::create_post("Title of Post in Title Case")`.
The new post is created within the `_posts/` subdirectory.
2. Write the post. 
Place external images in the subdirectory.
3. Run `rmarkdown::render_site(encoding = 'UTF-8')` to render the website.
The website is created within the `docs/` directory. 
Open `index.html` to check your post.
4. Open a pull request and commit all changed files.
Merged post are published via github pages.
