if (!requireNamespace("ggplot2", quietly = TRUE)) {
  stop("Instale ggplot2: Rscript scripts/instalar_dependencias.R")
}
raiz <- getOption("exercicios.root", getwd())
source(file.path(raiz, "R", "salvar_grafico.R"))
mydata <- ggplot2::diamonds
grafico <- ggplot2::ggplot(mydata[mydata$carat < 2.5, ],
                          ggplot2::aes(x = carat, y = price, colour = clarity)) +
  ggplot2::geom_point(alpha = 0.1) +
  ggplot2::geom_smooth(method = "loess", formula = y ~ x, se = FALSE) +
  ggplot2::labs(title = "Preço e peso dos diamantes", x = "Peso (quilates)",
                y = "Preço (US$)", colour = "Pureza") +
  ggplot2::theme_minimal()
salvar_grafico("diamantes.png", print(grafico))
