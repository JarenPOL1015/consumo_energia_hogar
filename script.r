# 1. Cargar las librerías necesarias
library(ggplot2) # Para gráficos
library(dplyr)    # Para manipulación de datos
library(stats)    # Para regresión y análisis estadísticos

# 2. Cargar el dataset
df <- read.csv('consumo_energia_hogar.csv', encoding = "ISO-8859-1")

# 3. Verificar las primeras filas de los datos
head(df)

# 4. Limpiar los datos (si es necesario)
# Revisar valores faltantes
sum(is.na(df))

# Eliminar filas con NA (si es necesario)
df <- na.omit(df)

# 5. Análisis descriptivo de las variables
summary(df)

# 6. Gráfico de dispersión entre el número de personas y el consumo de energía
ggplot(df, aes(x = nro_habitantes, y = consumo_kwh_mensual)) +
  geom_point() +
  labs(title = "Diagrama de dispersión entre Número de Personas y Consumo de Energía",
       x = "Número de Personas en el Hogar",
       y = "Consumo de Energía (kWh mensual)") +
  theme_minimal()

# 7. Ajustar el modelo de regresión lineal simple
modelo <- lm(consumo_kwh_mensual ~ nro_habitantes, data = df)

# 8. Resumen del modelo (coeficientes, R^2, p-valor)
summary(modelo)

# 9. Evaluar el modelo con el coeficiente de determinación (R^2) y p-valor
# El valor de R^2 indica qué porcentaje de la variabilidad del consumo de energía se explica por el modelo
# El p-valor asociado al coeficiente de nro_habitantes indica si es significativo

# 10. Realizar las predicciones del consumo de energía
predicciones <- predict(modelo)

# 11. Graficar los resultados del modelo (línea de regresión sobre el diagrama de dispersión)
ggplot(df, aes(x = nro_habitantes, y = consumo_kwh_mensual)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Relación entre Número de Personas y Consumo de Energía (Regresión Lineal)",
       x = "Número de Personas en el Hogar",
       y = "Consumo de Energía (kWh mensual)") +
  theme_minimal()

# 12. Evaluar el modelo: 
# Coeficientes de la regresión
coef(modelo)

# Error estándar de las estimaciones
summary(modelo)$coefficients

# 13. Evaluar la significancia del modelo (p-valor y R^2)
p_valor <- summary(modelo)$coefficients[2,4]  # p-valor del coeficiente de nro_habitantes
r2 <- summary(modelo)$r.squared  # Coeficiente de determinación

# cat("El p-valor es:", p_valor, "\n")
cat("El valor de R^2 es:", r2, "\n")

# 14. Conclusiones
# Si el p-valor es bajo (por ejemplo, < 0.05) y el R^2 es alto, se puede concluir que existe una relación significativa entre el número de personas y el consumo de energía.

# 15. Gráfico de residuos
residuos <- residuals(modelo)

ggplot(data.frame(residuos), aes(x = residuos)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de los Residuos del Modelo de Regresión",
       x = "Residuos", y = "Frecuencia") +
  theme_minimal()

# 16. Gráfico de Predicciones vs Valores Reales
ggplot(df, aes(x = consumo_kwh_mensual, y = predicciones)) +
  geom_point(color = "blue") +
  geom_abline(slope = 1, intercept = 0, color = "red", linetype = "dashed") +
  labs(title = "Comparación entre los Valores Reales y Predichos",
       x = "Valores Reales de Consumo de Energía",
       y = "Valores Predichos de Consumo de Energía") +
  theme_minimal()

# 18. Gráfico de la línea de regresión con intervalos de confianza
ggplot(df, aes(x = nro_habitantes, y = consumo_kwh_mensual)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Línea de Regresión con Intervalos de Confianza",
       x = "Número de Personas en el Hogar",
       y = "Consumo de Energía (kWh mensual)") +
  theme_minimal()


# 20. Boxplot para la variable dependiente
ggplot(df, aes(y = consumo_kwh_mensual)) +
  geom_boxplot(fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Boxplot del Consumo de Energía Mensual",
       y = "Consumo de Energía (kWh mensual)") +
  theme_minimal()




