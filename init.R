# init.R
#
# Example R code to install packages if not already installed
#

my_packages = c("shinythemes","shinydashboard","shiny","dplyr","ggplot2","leaflet","scales")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p, dependencies = TRUE)
  }
}

invisible(sapply(my_packages, install_if_missing))
