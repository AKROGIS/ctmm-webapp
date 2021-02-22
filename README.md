# Continuous Time Movement Model

This is a fork of R code and a [Shiny](https://shiny.rstudio.com/) web app for doing
CTMM analysis of animal movement data from GPS collars.  It has been modified to
integrate with the NPS [Animal Movement](https://github.com/AKROGIS/AnimalMovement)
database.

It currently presents the animal movement data to the shiny app via CSV extracts from
SQL Server that are converted to R dataframes (`rda`). Directly querying the database
was slow and required caching network credentials in the YAML file that the R service
could use for database access, so I had planned to create a scheduled task to refresh
the `rda` files on a regular basis.

The CSV files have the following format with the records in timestamp order.
See `test.csv` for an example.
```
id,timestamp,longitude,latitude
LC0802,2008-12-06 00:01:00,-153.7778,60.9401
```
created with SQL similar to the following:
```SQL
Select AnimalId as id, fixdate as timestamp, Location.Long as longitude, Location.Lat as latitude
from Locations where projectid = 'PROJECT' order by fixdate
```
A CSV file was created for each project. The CSV files were converted to `rda` files
with the `make_data.R` script.  The `rda` files need to be put in a `data`
folder in the current working directory when the `Run.R` file is executed. Each
file also needs to be shown to the user by adding a reference to each file in 
[inst/app/server.R](https://github.com/regan-sarwas/ctmm-webapp/blob/c4716f63c0ebc8942dcdb8d34b5bd6e487fa1b20/inst/app/server.R#L572-L574).

The web app (actually just an http end point served by the R/Shiny code)
was deployed on one of our GIS servers, however it wasn't very stable. It seems
like the code was designed to be run in a local mode (single user), and doesn't
handle multiple concurrent sessions with different users.

While there are significant advantages of CTMM over other home range anaylsis
methods, this project has not progressed past the prototype stage.  Resolving
the server stability and data refresh issues was put on hold awaiting further
direction from the NPS biologists.

## Install/Deploy/Run

**To deploy the web app on a local server, see [Server_Install.md](Server_Install.md)**

This will run the app from the repo dir.  These instructions have changed several
times as the upstream code has evolved, so you may need to adapt if you encounter
errors. The instructions also assume a *nix environment.  They will also work in
Windows with appropriate adaptations.

1. Use the upstream code to load dependencies

    ```bash
    $ cd $repo_dir
    $ git checkout upstream/master
    ```
    Start R console and download dependencies.

    ```r
    $ R
    > install.packages("ctmmweb", 
                    repos = c("https://cloud.r-project.org/",
                              "https://ctmm-initiative.github.io/ctmm_repo/"))
    > quit
    $
    ```

2. Use the NPS fork to run the app
    ```bash
    $ git checkout master
    ```
   Review/edit `run.R` and ensure the path is correct,
   and there is a `data` folder in the cwd.  Then

    ```bash
    $ R --vanilla < run.R &
    ```

   Or run the local developer version for testing/demonstrations,
   without internet downloads, etc.

    ```bash
    $ cd $repo_dir
    $ R
    > shiny:::runApp(appDir=getwd(), port=7893, host="0.0.0.0")
    ctrl-c # to quit
    ```


Original(Upstream) Readme
=========================

## Introduction

This is a web app for analyzing animal tracking data, built upon [ctmm R package](https://github.com/ctmm-initiative/ctmm). It's also an R package so you can use some features in your code directly.

## Install and run app

- Just run this in R console ([More detailed instructions](https://ctmm-initiative.github.io/ctmmwebdoc/articles/installation.html)):

```r
if (!require("remotes")) install.packages("remotes")
remotes::install_github("ctmm-initiative/ctmmweb")

ctmmweb::app()  
```

- We also built [a windows installer](https://github.com/ctmm-initiative/ctmmweb/releases/download/v0.2.10/ctmmwebsetup.exe), which will download R installer if needed, install R and package, create shortcut for the app.


## Run app from our website

Just open [https://tiny.cc/ctmmweb](https://tiny.cc/ctmmweb) (Chrome recommended). This will have some resource limitations compare to run the app locally.

## References

- Check the [videos](https://ctmm-initiative.github.io/ctmmwebdoc/articles/demo.html), release [History](https://ctmm-initiative.github.io/ctmmwebdoc/news/index.html), package reference [website](https://ctmm-initiative.github.io/ctmmwebdoc)
- Suggested citation for the app/package:

```
X. Dong, C.H. Fleming, M.J. Noonan, and J.M. Calabrese. 2018. ctmmweb: A Shiny web app for the ctmm movement analysis package.
https://github.com/ctmm-initiative/ctmmweb
```
