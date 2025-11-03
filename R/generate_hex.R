#' Gera uma cor aleatória em formato hexadecimal ou RGB
#'
#' Função para gerar uma cor aleatória em formato **hexadecimal** (padrão) ou **RGB**.
#'
#' @param format Define o formato de saída: `"hex"` (padrão) ou `"rgb"`.
#'
#' @return Uma string com o código hexadecimal ou uma matriz RGB.
#'
#' @examples
#' generate_hex()         # retorna algo como "#A3B9F0"
#' generate_hex("rgb")    # retorna a matriz RGB correspondente
#'
#' @export
generate_hex <- function(format = "hex") {
  # cria 6 caracteres aleatórios (0–9 ou A–F)
  choices <- sample(
    x = c(as.character(0:9), LETTERS[1:6]),
    size = 6,
    replace = TRUE
  )

  # concatena em um código hexadecimal
  output <- paste0("#", stringr::str_flatten(choices))

  # se solicitado, converte para RGB
  if (format == "rgb") {
    output <- grDevices::col2rgb(output)
  }

  return(output)
}
