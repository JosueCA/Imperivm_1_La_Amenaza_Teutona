# Imperivm 1 - La Amenaza Teutona

## Resumen

Este MOD cambia significativamente la experiencia de juego de "Imperivm: La Guerra de las Galias", enfocándose en tres áreas principales: **balance de unidades**, **mejora de la IA** y **compatibilidad con Wine/Linux**.

---

## 1. Correcciones de Audio (Compatibilidad Wine)

- **Conversión de codec de audio**: Los archivos de voz de las unidades usaban el codec Microsoft ADPCM, que Wine no soporta completamente. Se convirtieron **120+ archivos WAV** de voces (galos, romanos y teutones) a PCM estándar para que funcionen correctamente en Linux/Wine.

---

## 2. Balance de Unidades

### Unidades
- Reajustadas las unidades aleatoriamente
- Tiempos de reclutamiento reducidos

### Arqueros
- Arqueros con más alcance

### Heroes
- Modificaciones en las estadísticas base de heroes (más resistentes)
- Más vida por nivel

### Eliminado 'entrenamiento' de las unidades
- Las unidades del cuartel se generan con el nivel según el nivel de 'entrenamiento' investigado

### Formaciones
- Reducido el 'radio' de las unidades en formación. Las unidades en formaciones están más cerca entre sí.

---

## Tabla de Estadísticas de Unidades

### Unidades Galas

| Unidad | Vida | Ataque | Def. Corte | Def. Perforación | Velocidad | Habilidad |
|--------|------|--------|------------|------------------|-----------|-----------|
| **GSwordsman** | ~~250~~ → 260 | ~~6-16~~ → 12-22 | ~~2~~ → 0 | ~~12~~ → 0 | 80 | - |
| **GArcher** | ~~140~~ → 100 | ~~4-16~~ → 4-10 | ~~2~~ → 0 | 0 | ~~60~~ → 80 | spread damage |
| **GAxeman** | ~~220~~ → 300 | ~~8-40~~ → 20-28 | ~~26~~ → 0 | ~~4~~ → 0 | ~~60~~ → 80 | ~~attack skill~~ → trample damage |
| **GSpearman** | ~~240~~ → 320 | ~~14-28~~ → 12-18 | 6 | ~~26~~ → 6 | ~~80~~ → 100 | defensive stand + attack skill |
| **GHorseman** | ~~480~~ → 550 | ~~8-26~~ → 20-24 | ~~12~~ → 4 | 0 | ~~160~~ → 140 | charge |
| **GWFighter** | ~~280~~ → 360 | ~~10-40~~ → 22-32 | 16 | ~~12~~ → 6 | 80 | ~~death blow~~ → vampire blow |
| **GVikingLord** | ~~1000~~ → 2500 | ~~20-120~~ → 42-84 | 6 | ~~16~~ → 6 | 80 | ~~vampire blow~~ → charge |
| **GDruid** | 120 | - | - | - | ~~50~~ → 60 | - |

### Unidades Romanas

| Unidad | Vida | Ataque | Def. Corte | Def. Perforación | Velocidad | Habilidad |
|--------|------|--------|------------|------------------|-----------|-----------|
| **RHastatus** | ~~220~~ → 240 | ~~8-20~~ → 8-18 | ~~32~~ → 8 | ~~0~~ → 8 | ~~60~~ → 80 | defensive stand + attack skill |
| **RArcher** | ~~150~~ → 120 | ~~10-24~~ → 6-12 | ~~12~~ → 0 | ~~2~~ → 0 | ~~60~~ → 80 | spread damage |
| **RGladiator** | ~~300~~ → 350 | ~~28-28~~ → 24-24 | ~~0~~ → 4 | ~~22~~ → 4 | ~~80~~ → 100 | + spike damage |
| **RPrinciple** | ~~300~~ → 350 | ~~14-28~~ → 12-22 | ~~14~~ → 16 | ~~32~~ → 16 | 80 | ~~attack skill~~ → defensive stand, spread damage |
| **RScout** | ~~360~~ → 480 | ~~6-18~~ → 16-24 | ~~0~~ → 4 | ~~10~~ → 0 | ~~200~~ → 140 | charge |
| **RPraetorian** | ~~600~~ → 400 | ~~20-40~~ → 35-45 | ~~6~~ → 15 | ~~6~~ → 15 | ~~60~~ → 80 | ~~spike damage~~ → death blow |
| **RLiberatus** | ~~500~~ → 400 | ~~20-50~~ → 20-40 | 0 | ~~10~~ → 0 | ~~80~~ → 100 | ~~freedom, trample~~ → attack skill |
| **RPriest** | 120 | - | - | - | ~~50~~ → 60 | - |

### Héroes

| Unidad | Vida | Ataque | Def. Corte | Def. Perforación | Velocidad |
|--------|------|--------|------------|------------------|-----------|
| **Hero** | ~~1000~~ → 1500 | ~~10-40~~ → 30-30 | ~~20~~ → 80 | ~~20~~ → 80 | ~~120~~ → 160 |

### Unidades Teutonas

| Unidad | Vida | Ataque | Def. Corte | Def. Perforación | Velocidad | Habilidad |
|--------|------|--------|------------|------------------|-----------|-----------|
| **TeutonArcher** | ~~400~~ → 200 | ~~4-16~~ → 16-22 | ~~5~~ → 0 | ~~5~~ → 0 | 160 | ~~-~~ |
| **TeutonMetal** | ~~400~~ → 250 | ~~10-40~~ → 12-22 | 10 | 10 | - | ~~-~~ → trample damage |

### Arqueros - Alcance

| Unidad | Alcance Original | Alcance MOD |
|--------|------------------|-------------|
| **GArcher** | 300 | 450 |
| **RArcher** | 300 | 450 |
| **TeutonArcher** | 400 | 450 |

---

## 3. Mejoras de la IA

### Más "inteligente"
- Mayor dificultad al jugar contra la IA

### Sistema de Construccion de Ejercito

#### Investigacion Proactiva
- Mejorado algoritmo de investigación

#### Seleccion de Unidades Mejorada
- Nuevos **Pesos** favorecen ejércitos más variados

#### Sistema de Contra-Unidades Mejorado
- Mejor respuesta a las amenazas

### Prioridades de Ataque
- Mejor gestion de objetivos, IA más agresiva
- Mayores ejércitos

### Druidas y Magia
- Ajustes al sistema de reclutamiento de druidas
- La IA utiliza los altares durante las partidas aleatorias

### Monitor de Escuadrones
- Ajustes al sistema de monitoreo y control de unidades

### Teutones
- Los Teutones pueden capturar fortalezas de los jugadores

## Y muchos más cambios sin documentar...

## Notas de Instalacion

Este MOD se aplica directamente sobre la instalacion del juego. Reemplazando los archivos .pak

---

*** Generado automáticamente ***