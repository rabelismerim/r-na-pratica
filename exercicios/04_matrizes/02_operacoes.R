source(file.path(getOption("exercicios.root", getwd()), "R", "dados_basquete.R"))



Games
rownames(Games)
colnames(Games)
Games ["LeBronJames","2012"]

FieldGoals

round(FieldGoals / Games,1)

round(MinutesPlayed/Games)
