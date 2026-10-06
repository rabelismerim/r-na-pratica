# Execute na raiz do projeto, depois de instalar as dependências.
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  stop("Instale ggplot2 com scripts/instalar_dependencias.R antes de atualizar as imagens.")
}
source("scripts/executar_todos.R", encoding = "UTF-8")
imagens <- file.path("outputs", c("basquete_aproveitamento.png",
                                  "basquete_jogos.png", "diamantes.png"))
if (!all(file.exists(imagens))) {
  stop("Nem todos os gráficos foram gerados.")
}
dir.create("docs/images", recursive = TRUE, showWarnings = FALSE)
if (!all(file.copy(imagens, "docs/images", overwrite = TRUE))) {
  stop("Não foi possível copiar todas as imagens para a documentação.")
}
message("Imagens do README atualizadas em docs/images/.")
