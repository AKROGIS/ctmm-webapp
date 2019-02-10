## Introduction

This is a web app for analyzing animal tracking data, built upon [ctmm R package](https://github.com/ctmm-initiative/ctmm). It's also an R package so you can use some features in your code directly.

## Install and run app

Just run this in R console ([More detailed instructions](https://ctmm-initiative.github.io/ctmmwebdoc/articles/installation.html)):

2. Use the upstream code to load dependencies

    ```bash
    $ cd $repo_dir
    $ git checkout upstream/master
    ```

3. Start R console, run these lines.

    ```r
    install.packages("ctmmweb", repos = c(getOption("repos"),
                     "https://ctmm-initiative.github.io/ctmm_repo/"))
    quit
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

Just open [https://tiny.cc/ctmmweb](https://tiny.cc/ctmmweb) (Chrome recommended). This will have some resource limitations compare to run the app locally.

## References

- Check the [videos](https://ctmm-initiative.github.io/ctmmwebdoc/articles/demo.html), release [History](https://ctmm-initiative.github.io/ctmmwebdoc/news/index.html), package reference [website](https://ctmm-initiative.github.io/ctmmwebdoc)
- Suggested citation for the app/package:

```
X. Dong, C.H. Fleming, M.J. Noonan, and J.M. Calabrese. 2018. ctmmweb: A Shiny web app for the ctmm movement analysis package.
https://github.com/ctmm-initiative/ctmmweb
```
