app_DIR="/Users/regan_sarwas/MyForks/ctmmweb/inst/app"
source(file.path(app_DIR, "global.R"), local = TRUE, chdir = TRUE)
source(file.path(app_DIR, "ui.R"), local = TRUE, chdir = TRUE)
source(file.path(app_DIR, "server.R"), local = TRUE, chdir = TRUE)
runApp(shinyApp(ui = ui, server = server), port=7893, host="0.0.0.0", launch.browser = TRUE, display.mode = "normal")
