# Turn on for debugging
# options("shiny.fullstacktrace" = TRUE)
# we also need a data directory in the current directory, not the app_DIR
library(ctmmweb)
app_DIR="/Users/regan/MyForks/ctmm-webapp/inst/app"
source(file.path(app_DIR, "global.R"), local = TRUE, chdir = TRUE)
source(file.path(app_DIR, "ui.R"), local = TRUE, chdir = TRUE)
source(file.path(app_DIR, "server.R"), local = TRUE, chdir = TRUE)
runApp(shinyApp(ui = ui, server = server), port=7893, host="0.0.0.0", launch.browser = TRUE, display.mode = "normal")
