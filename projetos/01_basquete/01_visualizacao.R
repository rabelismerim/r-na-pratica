raiz <- getOption("exercicios.root", getwd())
source(file.path(raiz, "R", "dados_basquete.R"))
source(file.path(raiz, "R", "salvar_grafico.R"))
cores <- grDevices::hcl.colors(length(Players), "Dark 3")
salvar_grafico("basquete_aproveitamento.png", {
  matplot(as.integer(Seasons), t(FieldGoals / FieldGoalAttempts),
          type = "b", pch = seq_along(Players), col = cores, lty = 1,
          xlab = "Temporada", ylab = "Proporção de arremessos convertidos",
          main = "Aproveitamento — dados fictícios", ylim = c(0.30, 0.60))
  legend("bottomleft", legend = Players, col = cores,
         pch = seq_along(Players), lty = 1, cex = 0.65, ncol = 2, bty = "n")
})
print(round(FieldGoals / Games, 1))
