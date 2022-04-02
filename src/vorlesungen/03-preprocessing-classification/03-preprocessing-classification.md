---
title:
- Healthcare Data Analytics
author:
- Dr. Michael Strobel
subtitle:
- Data Cleaning, Data Pipelines und Binäre Klassifikation 
date:
- 03.04.2022
classoption:
- aspectratio=1610,9pt
--- 


## Inhalt 

### Letzte Woche
- Stochastik Tools (Wiederholung)
- Plotting 
- Data Processing / Encoding 
- Übung: pandas, numpy, matplotlib

### Diese Woche
- Umgang mit fehlenden Datenpunkten
- Daten Pipelines
- Binäre Klassifikationsaufgaben  
- Konfusionsmatrix 
- Precision / Recall 

# Fehlende und fehlerhafte Daten 

## Umgang mit fehlenden Daten

### Definition: Beobachtungseinheit
Die kleinste Einheit einer statistischen Auswertung, an der Beobachtungen durchgeführt werden, ist die *Beobachtungseinheit (oder Versuchseinheit)*. 
Sie kann z. B. der einzelne Patient sein, wenn er nur einmal beobachtet wurde, oder der Patient zu einem bestimmten Zeitpunkt, wenn der Patient mehrfach untersucht wurde und besteht aus einem oder mehr Features.

### Definition: fehlende Daten 
In der Statistik treten fehlende Daten oder fehlende Werte auf, wenn kein Datenwert für eines oder mehrere Feature in einer Beobachtungseinheit gespeichert ist. 

Fehlende Daten kommen häufig vor und können sich erheblich auf die aus den Daten zu ziehenden Schlussfolgerungen auswirken.

## Ursache fehlender Daten

### Fehlende Daten haben unterschiedliche Ursachen 
- Nichterhebung einzelner Feature
- Probleme bei der Speicherung
    - Datentyp ungeeignet 
    - Overflow / Underflow
    - Fehlerhafte Serialisierung 
- Übertragungsfehler 
- Konvertierungsfehler 
- ...

## Repräsentation von fehlenden Daten in Python 

### Python spezifische Datentypen
- `NaN` (not a number) in numerischen arrays
- `None` oder `NaN` in Objekten 
- `NaT` (not a time) in Zeitstempeln 
- Implizit über andere Datentypen die leer initialisiert werden: `[], {}, ""`

Andere Programmiersprachen nutzen andere Schlüsselwörter, z.B. `null`, `Nil`, `undefined`

![heart data](images/heart_data.png){ width=300px  } 

## Umgang mit fehlenden Daten 
Viele Algorithmen erwarten, dass es keine fehlenden Daten einer Beobachtungseinheit gibt. Daher müssen diese Vorverarbeitet (engl. preprocessed) werden. 
Diese Arbeitsschritt wird als *data cleaning* bezeichnet und enthält oft auch die Behandlung von Outliern. 

Es gibt zwei gängige Möglichkeiten mit fehlenden Daten umzugehen:
- Entfernung der Beobachtungseinheit
- Ersatz der fehlenden Features in der Beobachtungseinheit


## Ersatz fehlender Features in einer Beobachtungseinheit
Es gibt zahlreiche Möglichkeit fehlende Daten zu ersetzen, die einzige formale Einschränkung ist ein passender Datentyp. Klassischerweise werden folgende Strategien verwendet:

- Numerische Daten: `mean`, `median`, `min/max` oder konstanter Wert
- Kategorische Daten: häufigster Wert, konstanter Wert

# Data Pipelines

## Referenzen
- Fischer, Gerd, Matthias Lehner, and Angela Puchert. Einführung in die Stochastik. Springer, 2015.
- Géron, Aurélien: Praxiseinstieg Machine Learning mit Scikit-Learn, Keras und TensorFlow : Konzepte, Tools und Techniken für intelligente Systeme. Aktuell zu TensorFlow 2. Sebastopol: O'Reilly, 2020.
- Georgii, Hans-Otto. Stochastik. de Gruyter, 2015.
- IBM SPSS Dokumentation: https://www.ibm.com/docs/de/spss-statistics/25.0.0?topic=view-variable-measurement-level
- NumPy Quickstart: https://numpy.org/doc/stable/user/quickstart.html
- 10 Minutes to Pandas: https://pandas.pydata.org/pandas-docs/stable/user_guide/10min.html
