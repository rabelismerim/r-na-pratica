salvar_grafico <- function(nome, codigo) {
  pasta <- file.path(getOption("exercicios.root", getwd()), "outputs")
  dir.create(pasta, showWarnings = FALSE, recursive = TRUE)
  destino <- file.path(pasta, nome)
  grDevices::png(destino, width = 1400, height = 900, res = 140)
  on.exit(grDevices::dev.off(), add = TRUE)
  force(codigo)
  message("Gráfico salvo em: ", destino)
  invisible(destino)
}
