# 🗂️ Data Annotation Project (Lonely Planet - Travel Data)

This project demonstrates manual text data annotation performed for a travel guide client (Lonely Planet) using **Microsoft Excel**. 
It was part of the early model development phase to support natural language processing (NLP) models.


## 🔍 Project Overview

- Manually annotated unstructured travel-related text such as descriptions of places, activities, and attractions.
- Assigned labels like **Destination Type**, **Activity Type**, and **Region** etc.
- Used Excel to track annotation status, ensure label consistency, and support quality checks.

---

## 📊 Sample Excel Template

| ID  | Text Snippet                                           | Category (Dropdown) | Sub-Category  | Status    | Notes                     |
|-----|--------------------------------------------------------|---------------------|---------------|-----------|---------------------------|
| 001 | Visit the snow-capped peaks of Himachal Pradesh.       | Destination Type    | Mountain      | Completed |                           |
| 002 | Try scuba diving in the clear waters of Andaman.       | Activity            | Water Sports  | Review    | Confirm location accuracy |
| 003 | Explore local food markets in Bangkok.                 | Activity            | Food          | Completed |                           |
| 004 | Experience the rich history of Rome's Colosseum.       | Destination Type    | Heritage      | Rework    | Add city/country details  |

---

## 🛠 Excel Features Used

- **Data Validation**: Drop-down menus for consistent labeling.
- **Conditional Formatting**: Color-coded labels for review, rework, and completed tasks.
- **Formulas**: Used `IF()`, `ISBLANK()`, `VLOOKUP()`, `COUNTIF()` for label checks and summaries.
- **Filters & Sorting**: Fast navigation through annotations.
- **Comments**: Reviewer notes for corrections and feedback.

---

## 🧠 Skills Highlighted

- Microsoft Excel (Intermediate – Data validation, formulas, formatting)
- Data Annotation
- Text Classification
- Quality Control in Annotation Projects
