# Execute a partir da raiz do projeto.
raiz <- normalizePath(getwd(), winslash = "/", mustWork = TRUE)
if (!file.exists(file.path(raiz, "exercicios_R.Rproj"))) {
  stop("Execute este comando na pasta raiz de exercicios_R.")
}
options(exercicios.root = raiz)
arquivos <- sort(c(list.files("exercicios", pattern = "\\.R$", recursive = TRUE, full.names = TRUE),
                   list.files("projetos", pattern = "\\.R$", recursive = TRUE, full.names = TRUE)))
for (arquivo in arquivos) {
  if (grepl("02_diamantes", arquivo) && !requireNamespace("ggplot2", quietly = TRUE)) {
    message("Pulado: diamantes requer ggplot2. Execute scripts/instalar_dependencias.R.")
    next
  }
  message("\nExecutando: ", arquivo)
  source(arquivo, local = new.env(parent = globalenv()), echo = TRUE, encoding = "UTF-8")
}
message("\nTrilha concluída. Consulte outputs/ para os gráficos gerados.")
