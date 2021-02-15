
#' Says Aloha to a friend
#'
#' @param name a character
#' @param print a boolean, default = true
#'
#' @return (character) An aloha message
#' @export
#'
#' @examples say_aloha("Lia")
say_aloha <- function(name, print = TRUE) {

  message <- paste("Aloha,",
                   name,
                   emo::ji("palm_tree"),
                   emo::ji("sunny"),
                   emo::ji("ocean"))

  if (print) {
    cat(crayon::bgGreen(message))
  }

  invisible(message)
}

# multiple functions per script is okay, if it makes sense for them to be grouped together
# when you write a function n a package, don't attach libraries (library()), we add them to description file
# namespace the function in the script with ::
