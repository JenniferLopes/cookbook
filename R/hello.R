#' Saúda um nome informado
#'
#' Função simples que retorna uma saudação no formato `"Hello <nome>"`.
#'
#' @param name Character. Nome da pessoa a ser saudada.
#'
#' @return Uma string com a saudação.
#'
#' @examples
#' hello("Jenni")
#' hello("mundo")
#'
#' @export
hello <- function(name) {
  output <- paste("Hello", name)
  return(output)
}
