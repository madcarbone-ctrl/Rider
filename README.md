# 🛵 RIDER TRACKER PRO V1.0

**Rider Tracker Pro** è una Web App avanzata (HTML5/JavaScript) progettata specificamente per i professionisti delle consegne (Rider, Courier) che desiderano un controllo totale sulle proprie finanze e prestazioni lavorative.

---

## 🚀 FUNZIONI PRINCIPALI / KEY FEATURES

### 🇮🇹 Italiano
* **Gestione Turni:** Registrazione immediata di lordo, ore lavorate, chilometri percorsi e consumo del mezzo.
* **Gestione Carburante:** Tracciamento dei costi e aggiornamento automatico del prezzo medio/ultimo per i calcoli stimati.
* **Calcolo Netto Realistico:** Sottrazione automatica della tassazione personalizzata e dei costi carburante basati sui KM reali.
* **Progress Goal:** Barra di avanzamento dinamica per monitorare quanto manca al raggiungimento del tuo obiettivo mensile.
* **Report Professionale:** Generazione di un report in bianco e nero, pulito e leggibile, pronto per il salvataggio in PDF o stampa.
* **Database Locale:** I dati vengono salvati nel `LocalStorage` del tuo browser; nessuna registrazione o server esterno necessario.

### 🇬🇧 English
* **Shift Management:** Log gross earnings, hours, mileage, and vehicle consumption.
* **Fuel Tracking:** Record fuel costs and price per liter to maintain accurate profit statistics.
* **Realistic Net Profit:** Automatic deduction of custom taxes and fuel costs based on actual distance traveled.
* **Goal Progress:** A dynamic bar that shows how close you are to your monthly income target.
* **Professional Reporting:** Generates a high-contrast B&W report for easy PDF saving or printing.
* **Offline First:** Data is stored locally in your browser's `LocalStorage` for privacy and speed.

---

## 📊 LEGENDA INTERFACCIA / INTERFACE LEGEND

| Voce / Field | Significato (IT) | Meaning (EN) |
| :--- | :--- | :--- |
| **LORDO / GROSS** | Totale guadagnato nel mese corrente. | Total monthly earnings before expenses. |
| **NETTO / NET** | Guadagno reale (Lordo - Tasse - Benzina stimata). | Real profit (Gross - Taxes - Estimated Fuel). |
| **ORE / HOURS** | Somma totale delle ore lavorate. | Total hours worked in the current month. |
| **LITRI STIM.** | Litri consumati calcolati su KM e Consumo (L/100). | Consumed liters based on distance and rate. |
| **KM/L** | Efficienza reale media del tuo mezzo. | Real average vehicle efficiency. |
| **SPESA BENZ.** | Denaro effettivamente speso in rifornimenti. | Actual cash spent on fuel refills. |
| **TARGET €** | Obiettivo monetario che vuoi raggiungere. | Your monthly income goal. |
| **TAX %** | Percentuale tasse (es. IRPEF, Gestione Separata). | Tax percentage deduction. |
| **MANCANTE** | Differenza tra il Target e il Lordo attuale. | Gap between current Gross and your Goal. |

---

## 📝 LEGENDA DATI TECNICI / TECHNICAL DATA

* **L/100km:** Inserisci il consumo medio del tuo mezzo (es. "3.5"). L'app calcolerà i litri usati moltiplicando questo valore per i chilometri del turno.
* **Prezzo (€/L):** Inserisci il prezzo della benzina al momento del rifornimento. L'app userà l'ultimo valore inserito per stimare il costo del "carburante consumato" nel calcolo del Netto.
* **Azzera Database:** (Pulsante Bordeaux) Elimina permanentemente tutti i dati salvati. Usalo solo dopo aver salvato il report di fine mese.

---

## 🛠️ INSTALLAZIONE / INSTALLATION

1.  Scarica il file `index.html`.
2.  Aprilo con qualsiasi browser moderno (Chrome, Safari, Firefox).
3.  **Mobile:** Usa la funzione "Aggiungi a schermata Home" del tuo smartphone per usarla come un'app nativa.

---
*Creato da Marco Carbone per semplificare la vita dei rider. Version 1.0 - 2026.*
