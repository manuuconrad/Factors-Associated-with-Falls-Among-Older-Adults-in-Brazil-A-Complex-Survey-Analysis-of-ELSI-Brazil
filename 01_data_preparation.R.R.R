# 1. Criar modelo linear
modelo_linear <- lm(
  log(taxa_100k) ~ ano,
  data = brasil
)

# 2. Confirmar que foi criado
print(summary(modelo_linear))

# 3. Carregar segmented
library(segmented)

# 4. Criar modelo com 1 ponto de mudança
modelo_seg <- segmented(
  modelo_linear,
  seg.Z = ~ ano,
  npsi = 1
)

# 5. Mostrar breakpoint
print(modelo_seg$psi)

# 6. Mostrar slopes
print(slope(modelo_seg))

