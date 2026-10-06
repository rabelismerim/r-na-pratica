raiz <- getOption("exercicios.root", getwd())
source(file.path(raiz, "R", "dados_basquete.R"))
source(file.path(raiz, "R", "salvar_grafico.R"))
# Os rótulos vêm da matriz recebida, sem depender da variável global Players.
myplot <- function(data, rows = seq_len(min(10L, nrow(data)))) {
  selecionados <- data[rows, , drop = FALSE]
  cores <- grDevices::hcl.colors(nrow(selecionados), "Dark 3")
  matplot(as.integer(colnames(selecionados)), t(selecionados), type = "b",
          pch = seq_len(nrow(selecionados)), col = cores, lty = 1,
          xlab = "Temporada", ylab = "Jogos disputados", ylim = c(40, 85),
          main = "Jogos por temporada — dados fictícios")
  legend("bottomleft", legend = rownames(selecionados), col = cores,
         pch = seq_len(nrow(selecionados)), lty = 1, cex = 0.7, ncol = 2, bty = "n")
  invisible(selecionados)
}
salvar_grafico("basquete_jogos.png", myplot(Games))
