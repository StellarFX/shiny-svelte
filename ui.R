
# ---------------------------------------------------------------------------- #
#        This renders the correct index.html file based on the NODE_ENV         #
#        environment variable and append the correct scripts and styles.       #
# ---------------------------------------------------------------------------- #

if(Sys.getenv("NODE_ENV") == "development") {
  # -------------------------------- Development ------------------------------- #
  addResourcePath("static", ".")
  ui <- htmlTemplate(
    "index.html",
    head_scripts = tagList(
      tags$link(rel = "icon", type = "image/svg+xml", href = "http://localhost:5173/static/favicon.svg"),
    ),
    footer_scripts = tagList(
      tags$script(src = "http://localhost:5173/static/@vite/client", type = "module"),
      tags$script(src = "http://localhost:5173/static/src/main.ts", type = "module"),
      tags$style(type="text/css", "#shiny-disconnected-overlay { display: none; }")
    )    
  )
} else {
  # -------------------------------- Production -------------------------------- #
  addResourcePath("static", "dist")
  ui <- htmlTemplate(
    "dist/index.html",
    head_scripts = tagList(
      tags$link(rel = "icon", type = "image/svg+xml", href = "/static/favicon.svg"),
    ),
    footer_scripts = tagList()
  )
}
