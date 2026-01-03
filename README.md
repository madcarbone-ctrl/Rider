# 🛵 Rider Tracker Pro V1.1 - Documentazione Ufficiale

Benvenuto in **Rider Tracker Pro**, una soluzione avanzata per il monitoraggio delle attività di delivery. Questa documentazione spiega nel dettaglio la struttura, la logica di calcolo e le funzionalità del software.

---

## 🇮🇹 VERSIONE ITALIANA

### 🧠 Logica e Filosofia di Funzionamento
Rider Tracker Pro non è un semplice database, ma un **motore di calcolo dinamico** pensato per il lavoratore autonomo. L'app è stata progettata seguendo tre pilastri fondamentali:

1.  **Monitoraggio del Guadagno Reale (Netto):** A differenza di altre app che mostrano solo il lordo, questa applicazione incrocia i dati dei chilometri percorsi con i consumi medi del veicolo e le tasse. Questo permette al rider di sapere esattamente quanto gli rimarrà in tasca dopo aver pagato benzina e imposte.
2.  **Stima Predittiva del Carburante:** L'app non si limita a registrare quanto spendi al distributore, ma calcola quanto carburante *stai consumando* turno dopo turno. Se un giorno percorri molti chilometri, l'app ridurrà il tuo "Netto" in tempo reale, prevedendo l'usura e il costo del carburante anche prima che tu vada a fare rifornimento.
3.  **Gestione Target Mensile:** L'app agisce come un coach finanziario. Impostando un obiettivo, il sistema calcola il "Mancante" e la percentuale di completamento, aiutando l'utente a gestire meglio i propri ritmi di lavoro.

---

### 📊 Legenda delle Voci (Dashboard)
* **LORDO (€):** Somma dei compensi di tutti i turni del mese.
* **NETTO (€):** Guadagno reale stimato (`Lordo - Tasse - Costo Benzina Stimato`).
* **ORE (h):** Tempo totale trascorso in consegna.
* **LITRI STIM. (L):** Consumo teorico calcolato (`KM * (Consumo/100)`).
* **KM/L:** Rapporto di efficienza reale del veicolo (Chilometri per litro).
* **SPESA BENZ. (€):** Somma reale degli euro pagati per i rifornimenti registrati.
* **TARGET (€):** Obiettivo finanziario impostato per il mese.
* **TAX (%):** Aliquota fiscale applicata per scorporare le tasse dal lordo.
* **MANCANTE (€):** Euro mancanti al raggiungimento del Target.

---

### 🛠️ Dettaglio Moduli e Finestre
* **Modulo TURNO:** Permette l'inserimento di data, guadagno, ore, km e consumo medio. È il cuore dei dati statistici.
* **Modulo BENZINA:** Registra le spese vive. Include un automatismo che gestisce il punto decimale per il prezzo al litro (es: 1.854).
* **Storico Avanzato:** Archivio cronologico che calcola per ogni singolo turno l'efficienza specifica in km/L, permettendo di capire in quali giorni il veicolo ha consumato di più.
* **Report PDF:** Genera un riepilogo contabile pronto per essere inviato o stampato, con tabelle separate per lavoro e spese.

---

### 👤 Credits
Sviluppato con passione da **Marco Carbone**.
🔗 **Contatto:** [facebook.com/madmaddj](https://www.facebook.com/madmaddj)

---
---

## 🇺🇸 ENGLISH VERSION

### 🧠 Operating Logic and Philosophy
Rider Tracker Pro is not just a simple database; it is a **dynamic calculation engine** designed for freelance delivery riders. The app was built on three fundamental pillars:

1.  **Real Earnings Tracking (Net):** Unlike other apps that only show gross earnings, this application cross-references mileage data with average vehicle consumption and taxes. This allows the rider to know exactly how much will remain in their pocket after paying for fuel and taxes.
2.  **Predictive Fuel Estimation:** The app doesn't just record what you spend at the pump; it calculates how much fuel you *are consuming* shift after shift. If you drive many kilometers one day, the app will reduce your "Net" in real-time, predicting the fuel cost even before you refuel.
3.  **Monthly Target Management:** The app acts as a financial coach. By setting a goal, the system calculates the "Remaining" amount and the completion percentage, helping the user better manage their work pace.

---

### 📊 Glossary (Dashboard)
* **GROSS (€):** Sum of earnings from all monthly shifts.
* **NET (€):** Estimated real earnings (`Gross - Taxes - Estimated Fuel Cost`).
* **HOURS (h):** Total time spent on delivery.
* **EST. LITERS (L):** Theoretical consumption calculated as (`KM * (Consumption/100)`).
* **KM/L:** Real efficiency ratio of the vehicle (Kilometers per liter).
* **FUEL SPENT (€):** Real sum of euros paid for recorded refueling.
* **TARGET (€):** Financial goal set for the month.
* **TAX (%):** Tax rate applied to separate taxes from gross earnings.
* **REMAINING (€):** Euros missing to reach the Target.

---

### 🛠️ Modules and Windows Detail
* **SHIFT Module:** Allows entry of date, earnings, hours, km, and average consumption. It is the core of the statistical data.
* **FUEL Module:** Records actual expenses. Includes an automation that handles the decimal point for the price per liter (e.g., 1.854).
* **Advanced History:** Chronological archive that calculates specific efficiency in km/L for each individual shift, helping to understand which days the vehicle consumed more.
* **PDF Report:** Generates an accounting summary ready to be sent or printed, with separate tables for work and expenses.

---

### 👤 Credits
Developed with passion by **Marco Carbone**.
🔗 **Contact:** [facebook.com/madmaddj](https://www.facebook.com/madmaddj)
