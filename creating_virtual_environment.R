# renv --------------------------------------------------------------------
# set up the renv from scratch

renv::init(bioconductor = TRUE)

# restore the renv from the lockfile
renv::restore()

# package installation ----------------------------------------------------
# # Try this first...it's faster
blaseRtemplates::easy_install("<package name>", how = "link_from_cache")

# # If you need a new package or an update, try this:
# blaseRtemplates::easy_install("<package name>", how = "new_or_update")

# # If you are installing from a "tarball", use this:
# blaseRtemplates::easy_install("/path/to/tarball.tar.gz")

# # use "bioc::<package name>" for bioconductor packages
# # use "<repo/package name>" for github source packages

# load and attach packages ------------------------------------------------
library("blaseRtemplates")
library("conflicted")
library("tidyverse")
library("gert")

# Setting up git and github from R
# You should only need to run these commands once.
#
# make sure you have a github account
# https://github.com/join

# install git
## Windows ->  https://git-scm.com/download/win
## Mac    ->  https://git-scm.com/download/mac
## Linux  ->  https://git-scm.com/download/linux

# configure git in Rstudio
usethis::use_git_config(user.name = "ryanmrof", user.email = "ryanmrof@gmail.com")

# create a personal access token at the github website
# set the expiration date as desired
# permissions should be set automatically
usethis::create_github_token()
blaseRtemplates::gitcreds_set()

# personal access token: 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

# run this and enter your token at the prompt
# if you have trouble accessing github, you may need to edit the .Renviron file
# this is the third usage of the term environment (sorry)
# to edit this file, run
usethis::edit_r_environ()
# if there is a line there starting GITHUB_PAT=xxx,
# it may be interfering with your credentials.  Delete it.
# press enter to generate a new line and then save
# restart R
