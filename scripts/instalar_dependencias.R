if (!requireNamespace("ggplot2", quietly = TRUE)) {
  # Use a biblioteca pessoal para não precisar escrever na instalação do R.
  biblioteca <- Sys.getenv("R_LIBS_USER")
  if (!nzchar(biblioteca)) {
    stop("Defina R_LIBS_USER com o caminho da sua biblioteca de pacotes.")
  }
  dir.create(biblioteca, showWarnings = FALSE, recursive = TRUE)
  .libPaths(c(biblioteca, .libPaths()))
  install.packages("ggplot2", lib = biblioteca, repos = "https://cloud.r-project.org")
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("A instalação de ggplot2 não foi concluída.")
  }
} else {
  message("ggplot2 já está instalado.")
}
