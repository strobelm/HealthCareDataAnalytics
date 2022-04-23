---
title:
  - Healthcare Data Analytics
author:
  - Dr. Michael Strobel
subtitle:
  - Regression und Training von Modellen
date:
  - 25.04.2022
classoption:
  - aspectratio=1610,9pt
---

## Inhalt

### Letzte Woche

- Precision / Recall tradeoff
- Multi-Klassen Klassifikation

### Diese Woche

- Regression
- Gradientenabstieg
- Training von Modellen

# Intro

- Bis jetzt war für uns Machine Learning eine "Black-Box"
- Sie haben verschiedene Methoden benutzt wie z.B.
  - Decision Trees
  - Random Forests
  - Support Vector Machinen
  - ...
- Jetzt kümmern wir uns darum wie man diese Verfahren trainiert werden
- Beispielhaft schauen wir uns die _Lineare Regression_ an

# Lineare Regression

## Lineare Regression - Beispiel

TODO: Bild random Punkte

TODO: Bild random Punkte mit Regressionsgerade

## Features Verallgemeinerung

Bis jetzt haben wir angenommen, dass für jedes Feature $x_1, \ldots, x_n$ gilt dass $x_i \in \mathbb R \forall i$.

Ab jetzt nehmen wir an, dass jedes Feature $x_1, \ldots, x_n \in \mathbb R^m$ für $m \in \mathbb N$.

Wir definieren die _Featurematrix_ $X \in \mathbb R^{n \times m}$ als

$$
X = \begin{pmatrix}
 x_1^T \\
 x_2^T \\
 \ldots \\
 x_n^T \\
\end{pmatrix}
$$

Beispiel:

$x_1 = (1,2,3)^T, x_2 = (4,5,6)^T$. Damit ist $n=2$ und $m=3$. Daher ist $X \in \mathbb R^{2\times 3}$ und es gilt

$$
X = \begin{pmatrix}
1&2&3 \\
4&5&6 \\
\end{pmatrix}
$$

## Lineare Regression - Definition

Gegeben seien features $x_1, \ldots, x_n \in \mathbb R^m, n,m \in \mathbb N$ eine target variable $y(x_1, \ldots, x_n) \in \mathbb R$. Wir definieren das _lineare Regressionsmodell_ mit Hypothese $h_\alpha$ als

$$\hat y = \alpha_0 + \alpha_1 \cdot x_1 + ... + \alpha_N \cdot x_n$$

oder in Kurzschreibweise über die Matrix Multiplikation mit $\alpha = (\alpha_0, ..., \alpha_N)$ und $X = (1, x_1, ..., x_N)$

$$ \hat y = X \alpha \in \mathbb R $$

Damit kann nun ein Label vorhergesagt werden. Wie kommen wir jetzt an so ein $\alpha$? Über Training!

## Lineare Regression - Optimierungsproblem

Erinnern Sie sich an Ihre Numerik beziehungsweise Statistik Einführungvorlesung. Hier haben Sie die _lineare Ausgleichsrechnung_ kennengelernt. Wenn Sie die "beste" Lösung $\hat \alpha$ für alle Traningsdaten erhalten wollen müssen Sie den MSE minimieren.

$$ \underset{\alpha \in \mathbb R^n}{\min} \operatorname{MSE}(\alpha X, \hat y)= \underset{\alpha \in \mathbb R^n}{\min} \frac{1}{n}{{\sum_{i=1}}}^n((\alpha X)^{n}-(\hat{{y_{i}}} )^{n})^2 $$

$$\Leftrightarrow \underset{\alpha \in \mathbb R^n}{\min} \| \alpha \cdot X - \hat y\|_{2}^{2}$$

<!-- $\underset{\alpha \in \mathbb R}{\min} \| \alpha \cdot X - \hat y\|_{2}$ -->

## Lineare Regression - Geschlossene Lösung

Wir wissen aus den genannten Einführungvorlesung, dass die geschlossene Lösung von $\hat \alpha$ wie folgt lautet

$$\hat \alpha = (X^T X )^{-1} X^T y$$

Was ist das Problem mit dieser Formel?

## Lineare Regression - Geschlossene Lösung Beweis

_Beweis an der Tafel_

## Lineare Regression - Geschlossene Lösung Praxis

#### Problem:

Matrix $X^T X$ zu invertieren ist

- teuer zu berechnen: $O(n^3)$
- Anfällig für numerische Instabilität (Konditionszahl)
- Für Machine Learning Algorithmen kann die Datenmenge zu groß werden

Daher wird in der Praxis hierfür ein _iterativer_ und _approximativer_ Algorithmus verwendet. Hier ist insbesondere der _Gradietenabstieg_ zu nennen.
