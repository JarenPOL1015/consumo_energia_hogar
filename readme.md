# Proyecto: Relación entre el Número de Personas en el Hogar y el Consumo de Energía

Este proyecto tiene como objetivo analizar la relación entre el **número de personas en el hogar** y el **consumo de energía** mensual utilizando un **modelo de regresión lineal simple**. A través de este análisis, buscamos comprender cómo el número de personas en el hogar puede afectar el consumo de energía.

---

## **Objetivos**

1. **Objetivo 1**: Determinar la **relación lineal** entre el número de personas en el hogar y el consumo de energía mensual.
2. **Objetivo 2**: Evaluar la **significancia estadística** de la relación entre las dos variables mediante **regresión lineal simple**.
3. **Objetivo 3**: Predecir el **consumo de energía** en función del **número de personas en el hogar** utilizando el modelo de **regresión lineal**.

---

## **Métodos**

### **Técnicas estadísticas utilizadas**:
- **Regresión Lineal Simple**: Para modelar la relación entre el número de personas en el hogar y el consumo de energía.
- **Evaluación del Modelo**: Utilización de **coeficiente de determinación (R²)** y **p-valor** para evaluar la significancia del modelo.

### **Gráficos Generados**:
- **Diagrama de dispersión** entre el número de personas en el hogar y el consumo de energía.
- **Línea de regresión** sobre el diagrama de dispersión para visualizar la relación.
- **Gráfico de residuos** para evaluar el ajuste del modelo y detectar patrones en los errores.
- **Predicciones vs. valores reales**: Comparación entre las predicciones del modelo y los valores reales.
- **Distribución de los residuos** para verificar la normalidad de los errores.

---

## **Análisis de Datos**

El análisis de datos se ha dividido en los siguientes pasos:

1. **Limpieza de los datos**:
   - Se verificó la presencia de valores faltantes y atípicos, y se eliminaron las filas con datos faltantes.
   
2. **Descriptivos Básicos**:
   - Se calcularon estadísticas descriptivas como el promedio, la desviación estándar, y se realizaron gráficos descriptivos (como el diagrama de dispersión).
   
3. **Regresión Lineal Simple**:
   - Se ajustó el modelo de regresión lineal simple para estudiar la relación entre el número de personas en el hogar y el consumo de energía.
   
4. **Evaluación del Modelo**:
   - Se analizaron los coeficientes del modelo, el coeficiente de determinación \( R^2 \), y el p-valor del coeficiente para verificar si la relación es estadísticamente significativa.
   
5. **Gráficos adicionales**:
   - Gráfico de residuos, predicciones vs. valores reales, y distribución de los residuos para evaluar la calidad del modelo.

---

## **Resultados**

### **P-valor y R²**:
- **P-valor**: Un valor extremadamente pequeño (menor que 0.05) indica que la relación entre el número de personas y el consumo de energía es **estadísticamente significativa**.
- **\( R^2 \)**: Un valor bajo de \( R^2 \) (aproximadamente 0.17) sugiere que el modelo no explica completamente la variabilidad en el consumo de energía, lo que podría indicar que hay otros factores influyentes no considerados en el análisis.

---

## **Conclusiones**

- Existe una **relación significativa** entre el número de personas en el hogar y el consumo de energía, pero el modelo de **regresión lineal simple** no explica completamente la variabilidad del consumo.
- Se sugieren **mejoras al modelo**, como agregar más variables explicativas (por ejemplo, el tipo de vivienda o el uso de electrodomésticos).
- La visualización y el análisis de los residuos sugieren que **el modelo es adecuado**, pero hay margen de mejora.

---

## **Archivos del Proyecto**

- **`consumo_energia_hogar.csv`**: Conjunto de datos utilizado en el análisis.
- **`regresion_lineal.R`**: Código en R para realizar la regresión y análisis de datos.

---

## **Instrucciones para ejecutar el código**

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/JarenPOL1015/consumo_energia_hogar
    ```

2. **Ejecutar en R Studio**:
    ```
    En caso de tener problemas con el archivo **`consumo_energia_hogar.Rproj`**, usar el código en **`script.R`**
