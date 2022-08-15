library(tidyverse)
library(fs)

wd <- "~/Documents/GitHub/caccr.github.io/ccrs/"

f <- dir_ls(wd)

for(i in 1:length(f)){
  
  l <- read_lines(f[i])
  
  l <- str_replace_all(
    l, 
    'https://caccr.github.io', 
    'https://calwaterquality.com"'
  ) 
  
  l <- str_replace_all(
    l, 
    '  <a href ="http://calwaterquality.com">', 
    '  <a href ="https://calwaterquality.com">'
  )
  
  write_lines(l, f[i])
  
}
