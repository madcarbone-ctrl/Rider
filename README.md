# 🚴 RIDER TRACKER PRO 1.1
**Controllo reale del guadagno per Rider professionisti**

---

## 📌 COS'È RIDER TRACKER PRO
**Rider Tracker Pro** è una Progressive Web App (PWA) pensata per Rider professionisti che vogliono capire **quanto guadagnano davvero**, non solo quanto incassano.

Il "Lordo" è un numero incompleto.  
Questa app calcola il **Netto Economico Reale**, sottraendo:
- tasse
- costo carburante imputato ai turni

Tutti i dati restano **esclusivamente sul tuo dispositivo** tramite **LocalStorage**.  
Nessun account, nessun cloud, nessuna dipendenza esterna.

---

## 🎯 FILOSOFIA DEL PROGETTO
Rider Tracker Pro **non è un gestionale fiscale** e non vuole esserlo.

È uno strumento di:
- **controllo di gestione personale**
- **analisi dell'efficienza lavorativa**
- **supporto decisionale**

L'obiettivo non è la precisione "da commercialista", ma:
> **evitare decisioni sbagliate basate su numeri ingannevoli**

---

## 🧠 COME FUNZIONA IL MODELLO DI CALCOLO

### 🔹 Turni
Ogni turno registra:
- lordo
- ore
- chilometri
- consumo (L/100km)

Il consumo è **dichiarativo**:
- se il veicolo non lo fornisce → il campo può restare vuoto
- il sistema usa solo dati realmente inseriti

---

### 🔹 Rifornimenti (⛽)
I rifornimenti **NON vengono scaricati direttamente sul netto**.

Servono a:
- definire il **prezzo al litro valido**
- che viene associato automaticamente ai turni successivi

Il costo carburante viene calcolato come:

**litri stimati × prezzo €/L del periodo**

Questo evita:
- mesi falsamente "in perdita"
- distorsioni dovute ai pieni anticipati

---

### 🔹 Prezzo iniziale
Se il mese inizia senza rifornimenti:
- l'app chiede il **prezzo dell'ultimo rifornimento noto**
- garantendo continuità di calcolo

---

### ℹ️ DIFFERENZA TRA "SPESA BENZINA" E "RIFORNIMENTI"

**SPESA BENZINA** (mostrata nel dashboard):
- è il **costo stimato del carburante consumato durante i turni**
- calcolato come: km percorsi × consumo × prezzo/litro del periodo
- rappresenta il costo **imputabile all'attività lavorativa**

**RIFORNIMENTI** (visibili nel report):
- sono gli **importi reali pagati al distributore**
- servono solo come **marcatori di prezzo** per calcolare i costi dei turni

È **normale** che questi due valori siano diversi:
- se fai un pieno prima dell'inizio del mese, quella spesa non impatta il calcolo del mese corrente
- se finisci il mese con il serbatoio mezzo pieno, quella benzina verrà "pagata" economicamente nei turni già registrati

**Esempio pratico:**
```
Turni di gennaio: 800 km × 4L/100km × €1.85/L = €59.20 (SPESA BENZINA)
Rifornimenti di gennaio: €35 (10 gen) + €40 (28 gen) = €75 (RIFORNIMENTI REALI)

La differenza (€15.80) dipende da:
- pieno fatto a fine dicembre
- serbatoio non completamente vuoto a fine gennaio
```

Il modello **"imputazione al consumo"** è più corretto economicamente rispetto al modello **"cassa"** (pago → scarico).

---

## 📊 ANALISI EFFICIENZA OPERATIVA (NOVITÀ v1.1)

La versione **1.1** introduce un'analisi avanzata **senza modificare l'interfaccia**.

Nel **Report PDF** viene aggiunta una sezione di:

### 🔍 Analisi dei Periodi di Consumo
Il sistema:
- analizza i turni in ordine cronologico
- individua **cambi strutturali di consumo**
- segmenta automaticamente il mese in **periodi omogenei**

Per ogni periodo vengono calcolati:
- consumo medio
- costo carburante
- netto
- netto orario (€ / h)
- netto chilometrico (€ / km)

Questa analisi è **diagnostica** e **non modifica** i calcoli economici.

**Utilità pratica:**
- individuare cali di efficienza (es. problema meccanico, cambio percorsi)
- confrontare performance in condizioni diverse (meteo, orari, zone)
- ottimizzare strategie di lavoro basandosi su dati oggettivi

---

## 🧾 REPORT PDF
Il report mensile include:
- dettaglio turni
- dettaglio rifornimenti
- analisi efficienza operativa
- riepilogo finale netto

Pensato per:
- stampa
- archiviazione
- confronto tra mesi

---

## 💾 BACKUP & SICUREZZA
Funzioni disponibili:
- **Esporta database (.json)**
- **Importa database (.json)**

Utile per:
- cambio dispositivo
- pulizia browser
- sicurezza dei dati

---

## ⚠️ NOTE TECNICHE
- App ottimizzata per **uso mobile**
- Funziona **offline**
- Usa **solo il punto (.)** come separatore decimale
- Nessun dato viene inviato online

---

## 🧑‍💻 TECNOLOGIE
- HTML5
- CSS3
- JavaScript Vanilla
- LocalStorage
- PWA-ready

---

## 👤 AUTORE
**Progettato e pensato da:**  
[Marco Carbone](https://facebook.com/madmaddj)

---

## 📝 DISCLAIMER
Questo software fornisce **stime economiche operative**  
e non sostituisce strumenti fiscali o consulenza professionale.

---

**Versione:** 1.1  
**Stato:** stabile

---

---

# 🚴 RIDER TRACKER PRO 1.1
**Real earnings control for professional Riders**

---

## 📌 WHAT RIDER TRACKER PRO IS
**Rider Tracker Pro** is a Progressive Web App (PWA) designed for professional Riders who want to understand **how much they actually earn**, not just how much they collect.

"Gross" income is misleading.  
This app calculates **Real Economic Net**, subtracting:
- taxes
- fuel costs allocated to work shifts

All data is stored **exclusively on your device** using **LocalStorage**.  
No accounts, no cloud, no external dependencies.

---

## 🎯 PROJECT PHILOSOPHY
Rider Tracker Pro **is not a tax management tool** and does not aim to be one.

It is a tool for:
- **personal cost control**
- **work efficiency analysis**
- **decision support**

The goal is not accountant-level precision, but to:
> **avoid bad decisions based on misleading numbers**

---

## 🧠 HOW THE CALCULATION MODEL WORKS

### 🔹 Shifts
Each shift records:
- gross income
- hours worked
- kilometers traveled
- consumption (L/100km)

Consumption is **declarative**:
- if your vehicle does not provide it → the field can be left empty
- the system only uses data that is actually entered

---

### 🔹 Refuels (⛽)
Refuels are **NOT directly subtracted from net earnings**.

They are used to:
- define the **valid fuel price per liter**
- which is automatically applied to subsequent shifts

Fuel cost is calculated as:

**estimated liters × €/L price of the period**

This prevents:
- falsely "negative" months
- distortions caused by advance refueling

---

### 🔹 Initial price
If a month starts without any refuels:
- the app asks for the **last known fuel price**
- ensuring calculation continuity

---

### ℹ️ DIFFERENCE BETWEEN "FUEL EXPENSE" AND "REFUELS"

**FUEL EXPENSE** (shown in dashboard):
- is the **estimated cost of fuel consumed during shifts**
- calculated as: km traveled × consumption × price/liter of the period
- represents the cost **attributable to work activity**

**REFUELS** (visible in report):
- are the **actual amounts paid at gas stations**
- serve only as **price markers** to calculate shift costs

It is **normal** for these two values to differ:
- if you refuel before the month starts, that expense doesn't impact the current month's calculation
- if you end the month with a half-full tank, that fuel will be "paid for" economically in already recorded shifts

**Practical example:**
```
January shifts: 800 km × 4L/100km × €1.85/L = €59.20 (FUEL EXPENSE)
January refuels: €35 (Jan 10) + €40 (Jan 28) = €75 (ACTUAL REFUELS)

The difference (€15.80) depends on:
- refuel made at end of December
- tank not completely empty at end of January
```

The **"consumption allocation"** model is more economically correct than the **"cash basis"** model (pay → deduct).

---

## 📊 OPERATIONAL EFFICIENCY ANALYSIS (NEW v1.1)

Version **1.1** introduces advanced analysis **without modifying the interface**.

In the **PDF Report**, an additional section is included:

### 🔍 Consumption Period Analysis
The system:
- analyzes shifts in chronological order
- detects **structural changes in consumption**
- automatically segments the month into **homogeneous periods**

For each period, it calculates:
- average consumption
- fuel cost
- net earnings
- net hourly rate (€ / h)
- net per kilometer (€ / km)

This analysis is **diagnostic only** and does **not** alter economic calculations.

**Practical utility:**
- identify efficiency drops (e.g., mechanical issues, route changes)
- compare performance under different conditions (weather, schedules, areas)
- optimize work strategies based on objective data

---

## 🧾 PDF REPORT
The monthly report includes:
- shift details
- refuel details
- efficiency analysis
- final net summary

Designed for:
- printing
- personal archiving
- month-to-month comparison

---

## 💾 BACKUP & SECURITY
Available functions:
- **Export database (.json)**
- **Import database (.json)**

Useful for:
- device changes
- browser cleanup
- data safety

---

## ⚠️ TECHNICAL NOTES
- Optimized for **mobile use**
- Works **offline**
- Uses **dot (.) only** as decimal separator
- No data is sent online

---

## 🧑‍💻 TECHNOLOGIES
- HTML5
- CSS3
- Vanilla JavaScript
- LocalStorage
- PWA-ready

---

## 👤 AUTHOR
**Designed and developed by:**  
[Marco Carbone](https://facebook.com/madmaddj)

---

## 📝 DISCLAIMER
This software provides **operational economic estimates**  
and does not replace tax tools or professional consulting.

---

**Version:** 1.1  
**Status:** stable
