# 🚴 RIDER TRACKER PRO 1.1
**Controllo reale del guadagno per Rider professionisti**

---

## 📌 COS'È RIDER TRACKER PRO
**Rider Tracker Pro** è una Progressive Web App (PWA) pensata per Rider professionisti che vogliono capire **quanto guadagnano davvero**, non solo quanto incassano.

Il "Lordo" è un numero incompleto.  
Questa app calcola il **Netto Economico Reale**, sottraendo:
- tasse (configurabili tramite percentuale)
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

### 🔹 Gestione Tassazione
La percentuale di tasse è **personalizzabile** nel campo "TAX %":
- si applica automaticamente al lordo di ogni turno
- il calcolo è: **Netto = Lordo - (Lordo × TAX%) - Costo Benzina**
- modificabile in qualsiasi momento per adattarsi al proprio regime fiscale

---

### 🔹 Sistema Target
Imposta un obiettivo mensile di guadagno:
- visualizzazione percentuale obiettivo raggiunto
- calcolo automatico dell'importo mancante
- motivazione visiva del progresso

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

## 🚗 GESTIONE KM EXTRA

La funzione **KM EXTRA** permette di registrare chilometri percorsi **fuori dall'attività lavorativa**.

**A cosa serve:**
- monitorare l'uso personale del veicolo
- calcolare i consumi reali complessivi
- separare km lavorativi da km privati

**Come funziona:**
- i km extra vengono registrati con data e descrizione
- visibili nello storico separatamente dai turni
- utilizzati per l'analisi del consumo medio reale del veicolo

**Utilità:**
- capire se i consumi dichiarati nei turni sono realistici
- individuare anomalie nel consumo (es. perdite, problemi meccanici)
- pianificare manutenzioni basandosi sul chilometraggio totale

---

## 📱 INTERFACCIA E FUNZIONALITÀ

### Dashboard Principale
Mostra in tempo reale:
- **Lordo**: totale incassato nel mese
- **Netto**: guadagno reale dopo tasse e benzina
- **Ore**: ore totali lavorate
- **Litri Stim.**: litri di carburante consumati stimati
- **KM/L**: efficienza media del veicolo
- **Spesa Benz.**: costo carburante imputato ai turni
- **Target**: obiettivo mensile e percentuale raggiunta
- **Mancante**: quanto manca per raggiungere il target
- **Media**: guadagno orario medio (€/h)
- **Timestamp**: data e ora dell'ultimo aggiornamento

### Tabs di Navigazione
L'app è organizzata in **4 sezioni principali**:

1. **TURNO** - Registrazione nuovo turno di lavoro
2. **BENZINA** - Registrazione rifornimenti
3. **EXTRA** - Registrazione km non lavorativi
4. **STORICO** - Consultazione dati storici e generazione report

---

## 🔔 GESTIONE FINE MESE

All'inizio di ogni nuovo mese, l'app:
- **rileva automaticamente** il cambio mese
- mostra un **popup di notifica**
- propone di **stampare il report PDF** del mese concluso
- permette di scegliere se stampare subito o chiudere

**Funzionalità aggiuntive:**
- **Export database**: propone il backup automatico prima del nuovo mese
- **Continuità dati**: mantiene l'ultimo prezzo benzina per il mese successivo
- **Reset automatico**: azzera i contatori mantenendo lo storico

Questo garantisce:
- nessuna perdita di dati
- tracciabilità mensile completa
- archivio storico sempre disponibile

---

## 🧾 REPORT PDF

Il report mensile include:

### Dettaglio Turni
Tabella completa con:
- data e ora
- lordo e netto
- ore lavorate
- km percorsi
- consumo (L/100km e KM/L)
- litri consumati

### Dettaglio Rifornimenti
Elenco di tutti i rifornimenti con:
- data
- spesa totale
- prezzo al litro
- litri riforniti

### Analisi Efficienza Operativa
Segmentazione automatica in periodi con:
- numero turni per periodo
- km totali
- consumo medio
- spesa benzina
- netto del periodo
- €/h (netto orario)
- €/km (netto chilometrico)

### Riepilogo Finale
Totali mensili:
- turni totali
- ore lavorate
- lordo totale
- tasse pagate
- spesa benzina
- **netto finale**
- guadagno orario medio
- km totali percorsi

**Pensato per:**
- stampa e archiviazione cartacea
- confronto tra mesi
- analisi trend nel tempo
- documentazione fiscale di supporto

---

## 💾 BACKUP & SICUREZZA

### Esportazione Database
- genera un file **.json** con tutti i dati
- include: turni, rifornimenti, km extra, configurazioni
- nome file: `RiderTrackerBackup_AAAA-MM-GG.json`
- compatibile con qualsiasi dispositivo

### Importazione Database
- carica un file di backup precedente
- **sovrascrive** completamente il database locale
- utile per: ripristino dati, migrazione dispositivo, sincronizzazione

### Reset Database
- azzera **completamente** tutti i dati
- richiede **doppia conferma**
- azione **irreversibile**
- da usare con cautela

**Quando fare il backup:**
- prima di cambiare dispositivo
- prima di pulire cache/dati del browser
- periodicamente per sicurezza
- prima di un reset database

---

## ✏️ MODIFICA ED ELIMINAZIONE DATI

### Modifica Elementi
Ogni elemento nello storico può essere **modificato**:
- clicca sull'elemento da modificare
- i dati vengono caricati nel form corrispondente
- modifica i valori
- salva le modifiche

**Modificabile:**
- turni (lordo, ore, km, consumo)
- rifornimenti (spesa, prezzo/litro, litri)
- km extra (km, descrizione)

### Eliminazione Elementi
Ogni elemento può essere **eliminato singolarmente**:
- clicca sull'icona cestino (🗑️)
- conferma l'eliminazione
- l'elemento viene rimosso permanentemente

**Aggiornamento automatico:**
- tutti i calcoli vengono ricalcolati
- il dashboard si aggiorna in tempo reale
- lo storico si riorganizza automaticamente

---

## 🖨️ STAMPA REPORT

Due modalità di stampa:

### 1. Stampa da Popup Fine Mese
- si attiva automaticamente al cambio mese
- stampa il report del mese appena concluso
- include tutti i dati fino all'ultimo giorno

### 2. Stampa Manuale
- pulsante **"GENERA REPORT PDF"** sempre disponibile
- permette di stampare il mese corrente in qualsiasi momento
- utile per controlli intermedi

**Ottimizzato per:**
- stampa A4
- visualizzazione PDF
- salvataggio digitale
- condivisione via email

---

## ⚠️ NOTE TECNICHE

### Requisiti
- Browser moderno (Chrome, Firefox, Safari, Edge)
- JavaScript abilitato
- LocalStorage disponibile

### Compatibilità
- **Mobile-first**: ottimizzato per smartphone
- **Responsive**: funziona su tablet e desktop
- **Cross-platform**: iOS, Android, Windows, macOS

### Separatore Decimale
- usa **solo il punto (.)** come separatore decimale
- esempi corretti: `15.50`, `4.2`, `1.85`
- esempi errati: `15,50`, `4,2`, `1,85`

### Offline-First
- funziona **completamente offline**
- nessuna connessione richiesta
- dati salvati localmente
- **nessun dato inviato online**

### Installazione PWA
L'app può essere **installata come app nativa**:
- su Android: "Aggiungi a schermata Home"
- su iOS: "Aggiungi a Home"
- su Desktop: icona di installazione nella barra indirizzi

---

## 📲 COME INSTALLARE L'APP SULLO SMARTPHONE

### 📱 Android (Chrome/Edge)
1. Apri il link dell'app con Chrome o Edge
2. Tocca il menu (tre puntini) in alto a destra
3. Seleziona **"Aggiungi a schermata Home"** o **"Installa app"**
4. Conferma toccando **"Aggiungi"** o **"Installa"**
5. L'icona dell'app apparirà nella schermata Home
6. Aprila come una normale app: funzionerà anche offline!

**Alternativa veloce:**
- Cerca il banner/popup automatico **"Installa Rider Tracker Pro"**
- Tocca **"Installa"**

### 🍎 iPhone/iPad (Safari)
1. Apri il link dell'app con **Safari** (non Chrome!)
2. Tocca l'icona **Condividi** (quadrato con freccia verso l'alto) in basso
3. Scorri verso il basso e seleziona **"Aggiungi alla schermata Home"**
4. Modifica il nome se vuoi (es. "Rider Pro")
5. Tocca **"Aggiungi"** in alto a destra
6. L'icona apparirà nella Home del tuo iPhone/iPad
7. Aprila come una normale app!

**IMPORTANTE per iOS:**
- Usa **solo Safari**, gli altri browser non supportano l'installazione PWA
- L'app funzionerà offline dopo la prima apertura

### ✅ Vantaggi dell'installazione
- **Icona dedicata** nella schermata Home
- **Apertura rapida** come app nativa
- **Schermo intero** senza barra del browser
- **Funzionamento offline** completo
- **Notifiche** (se abilitate)
- **Prestazioni migliori**

---

## 🧑‍💻 TECNOLOGIE

- **HTML5**: struttura semantica
- **CSS3**: styling moderno e responsive
- **JavaScript Vanilla**: nessuna dipendenza esterna
- **LocalStorage**: persistenza dati locale
- **PWA**: installabile come app
- **jsPDF**: generazione report PDF

---

## 🔄 CHANGELOG

### v1.1 - Versione Attuale
- ✅ Analisi efficienza operativa con segmentazione periodi
- ✅ Sistema di gestione target personalizzabile
- ✅ Percentuale tasse configurabile
- ✅ Alert automatico fine mese con proposta stampa
- ✅ Export/import database JSON
- ✅ Modifica ed eliminazione elementi storici
- ✅ Gestione KM extra
- ✅ Calcolo consumo medio reale (KM/L)
- ✅ Timestamp ultimo aggiornamento
- ✅ Report PDF con analisi dettagliata

### v1.0 - Release Iniziale
- Gestione turni base
- Registrazione rifornimenti
- Calcolo netto con tasse fisse
- Storico mensile
- Report PDF semplificato

---

## 👤 AUTORE

**Progettato e sviluppato da:**  
[Marco Carbone](https://facebook.com/madmaddj)

**Contatti:**
- Facebook: /madmaddj
- GitHub: madcarbone-ctrl

---

## ☕ SUPPORTA IL PROGETTO

Se questa app ti è utile e vuoi supportare il lavoro di sviluppo:

**[☕ Offrimi un caffè](https://www.paypal.com/paypalme/madcarbone)**

Rider Tracker Pro è gratuita e sempre lo sarà.  
Il tuo supporto aiuta a mantenerla aggiornata e a sviluppare nuove funzionalità.

Ogni contributo è apprezzato! 🙏

---

## 📝 DISCLAIMER

Questo software fornisce **stime economiche operative**  
e non sostituisce strumenti fiscali o consulenza professionale.

**Limitazioni:**
- i calcoli sono basati su dati dichiarativi inseriti dall'utente
- non tiene conto di deduzioni fiscali specifiche
- non gestisce contributi previdenziali
- non è uno strumento di contabilità ufficiale

**Per obblighi fiscali reali, consulta sempre un commercialista.**

---

**Versione:** 1.1  
**Stato:** stabile  
**Licenza:** uso personale gratuito

-------

# 🚴 RIDER TRACKER PRO 1.1
**Real earnings control for professional Riders**

---

## 📌 WHAT RIDER TRACKER PRO IS

**Rider Tracker Pro** is a Progressive Web App (PWA) designed for professional Riders who want to understand **how much they actually earn**, not just how much they collect.

"Gross" income is misleading.  
This app calculates **Real Economic Net**, subtracting:
- taxes (configurable percentage)
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

### 🔹 Tax Management
The tax percentage is **customizable** in the "TAX %" field:
- automatically applied to gross income of each shift
- calculation: **Net = Gross - (Gross × TAX%) - Fuel Cost**
- modifiable anytime to adapt to your tax regime

---

### 🔹 Target System
Set a monthly earning goal:
- percentage visualization of target achieved
- automatic calculation of missing amount
- visual motivation of progress

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

## 🚗 EXTRA KM MANAGEMENT

The **EXTRA KM** function allows you to record kilometers traveled **outside work activity**.

**Purpose:**
- monitor personal vehicle use
- calculate overall real consumption
- separate work km from private km

**How it works:**
- extra km are recorded with date and description
- visible in history separately from shifts
- used for analyzing vehicle's real average consumption

**Benefits:**
- understand if consumption declared in shifts is realistic
- identify consumption anomalies (e.g., leaks, mechanical issues)
- plan maintenance based on total mileage

---

## 📱 INTERFACE AND FEATURES

### Main Dashboard
Shows in real-time:
- **Gross**: total earned in the month
- **Net**: real earnings after taxes and fuel
- **Hours**: total hours worked
- **Est. Liters**: estimated fuel consumed
- **KM/L**: vehicle average efficiency
- **Fuel Exp.**: fuel cost allocated to shifts
- **Target**: monthly goal and percentage achieved
- **Missing**: amount needed to reach target
- **Average**: average hourly earning (€/h)
- **Timestamp**: date and time of last update

### Navigation Tabs
The app is organized into **4 main sections**:

1. **SHIFT** - Record new work shift
2. **FUEL** - Record refuels
3. **EXTRA** - Record non-work km
4. **HISTORY** - View historical data and generate reports

---

## 🔔 END OF MONTH MANAGEMENT

At the beginning of each new month, the app:
- **automatically detects** the month change
- shows a **notification popup**
- proposes to **print the PDF report** of the concluded month
- allows you to choose whether to print immediately or close

**Additional features:**
- **Database export**: proposes automatic backup before new month
- **Data continuity**: keeps last fuel price for next month
- **Automatic reset**: resets counters while maintaining history

This ensures:
- no data loss
- complete monthly tracking
- always available historical archive

---

## 🧾 PDF REPORT

The monthly report includes:

### Shift Details
Complete table with:
- date and time
- gross and net
- hours worked
- km traveled
- consumption (L/100km and KM/L)
- liters consumed

### Refuel Details
List of all refuels with:
- date
- total expense
- price per liter
- liters refueled

### Operational Efficiency Analysis
Automatic segmentation into periods with:
- number of shifts per period
- total km
- average consumption
- fuel expense
- period net
- €/h (net hourly)
- €/km (net per kilometer)

### Final Summary
Monthly totals:
- total shifts
- hours worked
- total gross
- taxes paid
- fuel expense
- **final net**
- average hourly earning
- total km traveled

**Designed for:**
- printing and paper archiving
- month-to-month comparison
- trend analysis over time
- supporting tax documentation

---

## 💾 BACKUP & SECURITY

### Database Export
- generates a **.json** file with all data
- includes: shifts, refuels, extra km, configurations
- filename: `RiderTrackerBackup_YYYY-MM-DD.json`
- compatible with any device

### Database Import
- loads a previous backup file
- **completely overwrites** local database
- useful for: data restoration, device migration, synchronization

### Database Reset
- **completely** clears all data
- requires **double confirmation**
- **irreversible** action
- use with caution

**When to backup:**
- before changing device
- before clearing browser cache/data
- periodically for security
- before a database reset

---

## ✏️ DATA EDITING AND DELETION

### Edit Items
Each item in history can be **edited**:
- click on the item to edit
- data is loaded into the corresponding form
- modify values
- save changes

**Editable:**
- shifts (gross, hours, km, consumption)
- refuels (expense, price/liter, liters)
- extra km (km, description)

### Delete Items
Each item can be **deleted individually**:
- click on trash icon (🗑️)
- confirm deletion
- item is permanently removed

**Automatic update:**
- all calculations are recalculated
- dashboard updates in real-time
- history reorganizes automatically

---

## 🖨️ PRINT REPORT

Two printing modes:

### 1. Print from End-of-Month Popup
- automatically activates at month change
- prints report of just concluded month
- includes all data up to last day

### 2. Manual Print
- **"GENERATE PDF REPORT"** button always available
- allows printing current month anytime
- useful for intermediate checks

**Optimized for:**
- A4 printing
- PDF viewing
- digital saving
- email sharing

---

## ⚠️ TECHNICAL NOTES

### Requirements
- Modern browser (Chrome, Firefox, Safari, Edge)
- JavaScript enabled
- LocalStorage available

### Compatibility
- **Mobile-first**: optimized for smartphones
- **Responsive**: works on tablets and desktops
- **Cross-platform**: iOS, Android, Windows, macOS

### Decimal Separator
- use **only dot (.)** as decimal separator
- correct examples: `15.50`, `4.2`, `1.85`
- incorrect examples: `15,50`, `4,2`, `1,85`

### Offline-First
- works **completely offline**
- no connection required
- data saved locally
- **no data sent online**

### PWA Installation
The app can be **installed as a native app**:
- on Android: "Add to Home Screen"
- on iOS: "Add to Home"
- on Desktop: install icon in address bar

---

## 📲 HOW TO INSTALL THE APP ON SMARTPHONE

### 📱 Android (Chrome/Edge)
1. Open the app link with Chrome or Edge
2. Tap the menu (three dots) in the top right corner
3. Select **"Add to Home screen"** or **"Install app"**
4. Confirm by tapping **"Add"** or **"Install"**
5. The app icon will appear on your Home screen
6. Open it like a regular app: it works offline too!

**Quick alternative:**
- Look for the automatic banner/popup **"Install Rider Tracker Pro"**
- Tap **"Install"**

### 🍎 iPhone/iPad (Safari)
1. Open the app link with **Safari** (not Chrome!)
2. Tap the **Share** icon (square with arrow pointing up) at the bottom
3. Scroll down and select **"Add to Home Screen"**
4. Edit the name if you want (e.g., "Rider Pro")
5. Tap **"Add"** in the top right corner
6. The icon will appear on your iPhone/iPad Home screen
7. Open it like a regular app!

**IMPORTANT for iOS:**
- Use **only Safari**, other browsers don't support PWA installation
- The app will work offline after the first opening

### ✅ Installation Benefits
- **Dedicated icon** on Home screen
- **Quick launch** like native app
- **Full screen** without browser bar
- **Complete offline** functionality
- **Notifications** (if enabled)
- **Better performance**

---

## 🧑‍💻 TECHNOLOGIES

- **HTML5**: semantic structure
- **CSS3**: modern and responsive styling
- **Vanilla JavaScript**: no external dependencies
- **LocalStorage**: local data persistence
- **PWA**: installable as app
- **jsPDF**: PDF report generation

---

## 🔄 CHANGELOG

### v1.1 - Current Version
- ✅ Operational efficiency analysis with period segmentation
- ✅ Customizable target system
- ✅ Configurable tax percentage
- ✅ Automatic end-of-month alert with print proposal
- ✅ JSON database export/import
- ✅ Historical item editing and deletion
- ✅ Extra km management
- ✅ Real average consumption calculation (KM/L)
- ✅ Last update timestamp
- ✅ PDF report with detailed analysis

### v1.0 - Initial Release
- Basic shift management
- Refuel recording
- Net calculation with fixed taxes
- Monthly history
- Simplified PDF report

---

## 👤 AUTHOR

**Designed and developed by:**  
[Marco Carbone](https://facebook.com/madmaddj)

**Contacts:**
- Facebook: /madmaddj
- GitHub: madcarbone-ctrl

---

## ☕ SUPPORT THE PROJECT

If this app is useful to you and you want to support the development work:

**[☕ Buy me a coffee](https://www.paypal.com/paypalme/madcarbone)**

Rider Tracker Pro is free and always will be.  
Your support helps keep it updated and develop new features.

Every contribution is appreciated! 🙏

---

## 📝 DISCLAIMER

This software provides **operational economic estimates**  
and does not replace tax tools or professional consulting.

**Limitations:**
- calculations are based on declarative data entered by user
- does not account for specific tax deductions
- does not manage pension contributions
- is not an official accounting tool

**For real tax obligations, always consult an accountant.**

---

**Version:** 1.1  
**Status:** stable  
**License:** free for personal use
