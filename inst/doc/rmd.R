## ----setup, include=FALSE-----------------------------------------------------
library(multicolor)

options(crayon.enabled=TRUE)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = TRUE
)

knitr::knit_hooks$set(
  mc_rmd = function(before, options, envir) {
    if (before) {
       return(paste("<div style='font-family: Monaco;'>"))
    } else {
       return(paste("</div>"))
    }
  }
)

## ---- results='asis'----------------------------------------------------------
library(multicolor)

## ---- results='asis', mc_rmd=TRUE---------------------------------------------
multi_color(things$buffalo, 
            colors = palettes$grandbudapest, 
            type = "rmd", 
            add_leading_newline = TRUE)

## ---- results="asis", mc_rmd=TRUE---------------------------------------------
multi_color(
  
  " Brutus is just as smart as Caesar, \n people totally like Brutus just as much as they like Caesar, \n and when did it become okay for one person \n to be the boss of everybody because \n that's not what Rome is about! \n We should totally just STAB CAESAR!",
  
  colors = c(wesanderson::wes_palettes$GrandBudapest2, wesanderson::wes_palettes$GrandBudapest2),
  
  type = "rmd",
  add_leading_newline = TRUE
  
)

## ---- eval=FALSE--------------------------------------------------------------
#  knitr::knit_hooks$set(
#    mc_rmd = function(before, options, envir) {
#      if (before) {
#         return(paste("<div style='font-family: Monaco;'>"))
#      } else {
#         return(paste("</div>"))
#      }
#    }
#  )

## ----message=FALSE------------------------------------------------------------
multi_color(type = "rmd")

## ----eval=FALSE---------------------------------------------------------------
#  knitr::opts_chunk$set(results = "asis")

## ---- eval=FALSE--------------------------------------------------------------
#  options(crayon.enabled = TRUE)

