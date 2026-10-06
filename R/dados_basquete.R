# Dados fictícios para estudo; não são estatísticas reais da NBA.
Players <- c("KobeBryant", "JoeJohnson", "LeBronJames", "CarmeloAnthony",
             "DwightHoward", "ChrisBosh", "ChrisPaul", "KevinDurant",
             "DerrickRose", "DwyaneWade")
Seasons <- as.character(2005:2014)
Games <- outer(1:10, 1:10, function(j, t) 60 + (j * 3 + t * 2) %% 23)
dimnames(Games) <- list(Players, Seasons)
FieldGoalAttempts <- Games * outer(1:10, 1:10, function(j, t) 12 + (j + t) %% 10)
FieldGoals <- round(FieldGoalAttempts * outer(1:10, 1:10, function(j, t) 0.40 + ((j + t) %% 13) / 100))
MinutesPlayed <- Games * outer(1:10, 1:10, function(j, t) 28 + (j + t) %% 10)
