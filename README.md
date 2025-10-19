# Lung Cancer Classification — CT Data

## Descrição
Este notebook implementa um pipeline completo de **classificação de nódulos pulmonares** com base em imagens de tomografia computorizada (CT) do dataset **LIDC-IDRI**.  
O objetivo é prever a **probabilidade de malignidade** de cada nódulo a partir de **anotações clínicas** e **features radiômicas 2D/3D** extraídas automaticamente.

---

## Ficheiros e Pastas Necessárias
Antes de executar o notebook, garante que os seguintes ficheiros e diretórios estão disponíveis na mesma pasta:

| Ficheiro / Pasta | Descrição |
|------------------|------------|
| `lidc-idri-nodule-counts-6-23-2015.xlsx` | Dados originais do LIDC-IDRI: número de nódulos por paciente. |
| `tcia-diagnosis-data-2012-04-20.xls` | Ficheiro com diagnósticos clínicos e tipo de cancro. |
| Pasta `LIDC-IDRI/` | Diretoria com as imagens DICOM utilizadas pelo PyLIDC. |
| (Opcional) Pasta `artifacts/` | Onde serão guardados os resultados e modelos treinados. |

---

## Ficheiros Criados Automaticamente
Durante a execução do notebook, são gerados os seguintes ficheiros:

| Ficheiro | Descrição |
|-----------|------------|
| `data.csv` | Anotações radiológicas extraídas do LIDC-IDRI via PyLIDC. |
| `merged.csv` | Dados clínicos e radiológicos integrados após limpeza. |
| `annotations.csv` | Nódulos com rótulo binário (benigno/maligno) após filtragem. |
| `final.csv` | Dataset final a nível de nódulo, usado para treino dos modelos. |
| `radiomics_features_2d.csv` | Features radiômicas 2D extraídas com o PyRadiomics. |
| `radiomics_features_3d.csv` | Features radiômicas 3D extraídas com o PyRadiomics. |
| `artifacts/best_calibrated_model.joblib` | Modelo final calibrado e guardado. |
| `artifacts/model_cv_summary.csv` | Resumo das métricas de validação cruzada. |
| `artifacts/holdout_predictions.csv` | Previsões do modelo no conjunto de teste. |

---

## Estrutura do Notebook
1. Business Understanding 
2. Data Understanding
3. Data Preparation
4. Modeling 
5. Evaluation
6. Deployment & Ethics 
7. Export and Reproducibility
8. Final Project Conclusion 
9. References

