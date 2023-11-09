# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' @title Print "hello world"
#' @description  Print the Hello, world! function to the console with
#' parameter say who to say hello to
#' @param who who to say hello to. (Default is "world")
#' @examples
#' hello("people in BIS620")
#' @export
hello <- function(who = "world") {
  sprintf("Hello, %s!", who)
  # paste0("Hello, ", who, "!")
}
