# Hosting CTMM web app on a local server

The Continuous Time Movement Model (CTMM) web app is hosted on INPAKROVMAIS.
Instructions for installing/Configuring this app are as follows (only needed in a server rebuild).
Instructions for updating are at the end .

## Install

* Download latest version of R stats from CRAN (https://cloud.r-project.org/)
* Install R by running the downloaded installation file.
  - You can accept all the default options, however...
  - the 32bit files are not required
* Install the CTMM app
  - See the Repository Readme file for details
* Install the RODBC module to talk to SQL Server
  - Run R console: `C:\Program Files\R\R-3.6.1\bin\R.exe` as adminc
  - Install the default CTMM app (paste into the R command line
      ```R
      install.packages("ctmmweb", 
                 repos = c("https://cloud.r-project.org/",
                           "https://ctmm-initiative.github.io/ctmm_repo/"))
      ```
    * If prompted to install these in a local library, you are not admin
    * test by running: ctmmweb::app(), this will display in a IE browser on the server ONLY
      - It doesn't work in IE, so it only partially shows, to test in a client browser:
        - quit with control-C
        - `> options("shiny.host" = "0.0.0.0", "shiny.port" = "6330")`
        - `> ctmm::app()`
        - test by opening inpakrovmais:6330 in a chrome browser on any NPS workstation

## Update

Instructions Pending first update
