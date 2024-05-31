# visualisation.R

# Installer ggplot2 si ce n'est pas déjà fait
if(!require(ggplot2)) {
  install.packages("ggplot2")
}

# Charger ggplot2
library(ggplot2)

# Charger le dataset iris
data(iris)

# Créer le graphique de dispersion avec des facettes par espèce
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +                                 # Points de dispersion
  facet_wrap(~ Species) +                                # Facettes par espèce
  geom_smooth(method = 'lm', se = FALSE, color = 'black') + # Ligne de régression
  labs(title = "Relation entre la longueur et la largeur des sépales",
       x = "Longueur des sépales (cm)",
       y = "Largeur des sépales (cm)") +
  theme_minimal()                                        # Thème minimal
