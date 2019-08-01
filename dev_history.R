# setup -------------------------------------------------------------------

library(devtools)
use_build_ignore("dev_history.R")
use_git()
library(tidyverse)
library(glue)
# mkdir output analysis refs

# display -----------------------------------------------------------------

use_readme_rmd()

# release -----------------------------------------------------------------

# 复制 NEWS 第一部分进行 release
