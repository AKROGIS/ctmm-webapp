## Introduction

This is a web app for analyzing animal tracking data, built upon [ctmm R package](https://github.com/ctmm-initiative/ctmm). It's also an R package so you can use some features in your code directly.

## Install app

1. Install [the latest R](https://cloud.r-project.org/). [RStudio](https://www.rstudio.com/products/rstudio/download/) is recomended for R development, but not required for just using the app.

2. Use the upstream code to load dependencies

    ```bash
    $ cd $repo_dir
    $ git checkout upstream/master
    ```

3. Start R console, run these lines.

    ```r
    #Install Using devtools
    # if (!require("devtools")) install.packages("devtools")
    # devtools::install_github("ctmm-initiative/ctmmweb")
    # ctmmweb::app()

    # install using remotes (This is similar to devtools but it has less dependencies)
    # I install the upstream version to load dependencies (because my repo does not have the zipped tarball releases),
    # but then run my local version (step 3 below)
    # I need to specify the repo location, otherwise install.packages will try to load tcl/tk (not installed)
    if (!require("remotes")) install.packages("remotes",repos="https://cloud.r-project.org")
    remotes::install_github("ctmm-initiative/ctmmweb")
    # remotes::install_github("ctmm-initiative/ctmmweb", ref = "commit or tag name")
    # remotes::install_github("regan-sarwas/ctmmweb")
    ctrl-c # to quit
    ```

    ```bash
    $ git checkout master
    $ R
    ```

    ```r
    source('regan.R')
    ```

   Or run the local developer version for testing/demonstrations, without internet downloads, etc.

    ```bash
    $ cd $repo_dir
    $ R
    > shiny:::runApp(appDir=getwd(), port=7893, host="0.0.0.0")
    ctrl-c # to quit
    ```

  More details about installation and compatibility problems can be [found here.](https://ctmm-initiative.github.io/ctmmwebdoc/articles/installation.html)

## Run app from our website

Just open [https://tiny.cc/ctmmweb](https://tiny.cc/ctmmweb) (Chrome recommended). This will have more resource limitations compare to run app locally.

## References

- Check [the videos](https://ctmm-initiative.github.io/ctmmwebdoc/articles/demo.html) for feature demonstrations.
- The `help` buttons in each page also have detailed documentations for the specific feature.
- [The package reference website](https://ctmm-initiative.github.io/ctmmwebdoc/) provided some tips on installation and documentations for package functions.
- [Release History](https://ctmm-initiative.github.io/ctmmwebdoc/news/index.html)
- Suggested citation for the app/package:

```
X. Dong, C.H. Fleming, M.J. Noonan, and J.M. Calabrese. 2018. ctmmweb: A Shiny web app for the ctmm movement analysis package.
https://github.com/ctmm-initiative/ctmmweb
```
