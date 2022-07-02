---
title:
  - Healthcare Data Analytics
author:
  - Dr. Michael Strobel
subtitle:
  - Big Data Processing & Spark
date:
  - 04.07.2022
classoption:
  - aspectratio=1610,9pt
---

## Inhalt

### Letzte Vorlesung

- Datenbanksysteme
- Data Warehousing
  - OLAP vs OLTP
  - Sterne und Schneeflocken
- Intro zu Big Data

### Diese Woche

- UNIX Philosophie
- Big Data Processing
- Spark
- Stream Processing
- GraphDB

## Online Services / Batch Processing / Stream Processing

- Daten Anwendungen können unterschiedliche Anforderungen haben, letzte Woche haben wir OLTP und OLAP Systeme gesehen
- Wir unterscheiden drei verschiedene Systeme Arten
  - Online Services
  - Batch Processing
  - Stream Processing
- Die verschiedenen Anforderungen resultieren in sehr unterschiedlichen Algorithmen und Implementierungen

## Online Services

- Das System wartet auf eingehende Request und startet daraufhin Berechnungen
- Die Bearbeitung erfolgt so schnell wie möglich und mit geringer Zeitverzögerung
- Die Datenmengen sind verhältnismäßig gering
- Wichtigste Performance Metriken: response time und availability
- Beispiele: REST Api und OLTP Systeme

## Batch Processing

- Batch Processing verarbeitet in der Regel **große Datenmengen**
- Anwendungsgebiet sind Datenverarbeitung: Input Daten werden zu Output Daten verarbeitet und abgelegt
- Daten sind zu Begin des Batch Processing bekannt und fixiert
- Die Laufzeit ist lang: Minuten bis Tage
- Der User wartet in der Regel nicht auf das Ergebnis, normalerweise laufen die Anfragen auf periodischer Basis (täglich, wöchentlich, ...)
- Wichtigste Performance Metrik: Datendurchsatz

## Stream Processing

- Mittelweg aus Online Services und Batch Processing
- Anwendungsgebiet sind Datenverarbeitung: Input Daten werden zu Output Daten verarbeitet und abgelegt
- Stream Processing reagiert auf auf Events (z.B. Eingang von Daten)
- Verarbeitung findet zeitnah statt
- Datengröße variiert und ist zum Start des Stream Processing unbekannt
- Die Laufzeit ist geringer als beim Batch Processing

## UNIX Philosophie

## UNIX Philosophie, Beispiel

#### HL7 V2 Beispiel

```
OBX|1|NM|^Body Height||1.80|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||1.50|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||1.70|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||1.20|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||1.92|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||1.30|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||1.40|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||2.01|m^Meter^ISO+|||||F
OBX|1|NM|^Body Height||1.50|m^Meter^ISO+|||||F
...
```

## UNIX Philosophie, Beispiel cont'd

Wie berechnet man mit UNIX tools die drei Pantient:innen mit der größten Körpergröße?

```bash
cat hl7.txt |
awk -F\| '{print $6}' |
sort -r |
head -n 3
```

- cat: liest die Datei in die UNIX Pipeline ein
- awk extrahiert die Größe (-F gibt das Zeichen an bei dem der Split erfolgen soll)
- sort -r sortiert absteigend
- head -n 3 gibt die 3 größten Instanzen aus

## MapReduce

## MapReduce bei Google

## MapReduce: joins und grouping

## Hadoop

## HDFS

## Beyond MapReduce

## Pig, Hive et. al.

## Spark

## Future Work

## Stream Processing

## GraphDB

## Reinforced Learning

## GANN

## Referenzen

- Kleppmann, M. (2017). Designing data-intensive applications: The big ideas behind reliable, scalable, and maintainable systems. " O'Reilly Media, Inc.".
- https://www.oracle.com/de/big-data/what-is-big-data/
