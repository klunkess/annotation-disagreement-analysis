# DICES-350 Data Dictionary

## Dataset Overview

The DICES-350 dataset contains human evaluations of conversational AI safety.

- **350 unique conversations**
- **123 human evaluators**
- **43,050 evaluation records**

Each row represents one evaluator's assessment of one conversation.

## Key Columns

| Column | Description |
|---|---|
| `id` | Unique identifier for each evaluation record |
| `item_id` | Identifier for the evaluated conversation |
| `rater_id` | Identifier for the human evaluator |
| `context` | Previous messages in the conversation |
| `response` | AI response being evaluated |
| `harm_type` | Type or types of potential harm identified |
| `degree_of_harm` | Expert-assessed severity of potential harm |
| `safety_gold` | Expert reference safety label |
| `Q2_harmful_content_overall` | Rater's aggregated harmful-content judgment |
| `Q3_bias_overall` | Rater's aggregated bias judgment |
| `Q_overall` | Overall safety judgment derived from the rater's evaluation criteria |

## Important Notes

- The same conversation appears in multiple records because different people evaluated it.
- Evaluator disagreement does not necessarily indicate an error.
- Expert reference labels and human judgments are distinct measurements.
- Some harm categories contain multiple topics.
- Missing values and data types should be checked before analysis.

## Source

Google Research — DICES Dataset

https://github.com/google-research-datasets/dices-dataset
