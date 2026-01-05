# RIDER TRACKER PRO 1.0 - Manuale Integrale
**Versione: 1.0.0 (Ufficiale)**

---

## 🇮🇹 SEZIONE ITALIANO

### **1. FILOSOFIA E SCOPO DEL PROGETTO**
**Rider Tracker Pro 1.0** nasce per dare ai Rider professionisti il controllo totale sul proprio reale guadagno. Il "Lordo" è ingannevole: questa app calcola il **Netto Reale** sottraendo tasse e costi carburante in tempo reale. Tutto risiede nella memoria locale del tuo smartphone (LocalStorage).

### **2. LOGICA DEI COMANDI: COSA SUCCEDE QUANDO PREMI...**

#### **Pulsanti della Dashboard (Interazioni Rapide)**
* **Titolo "RIDER TRACKER PRO" (in alto):** Se lo premi, il sistema forza l'apertura del messaggio "Fine Mese" per permetterti di accedere velocemente alla stampa del report anche se non è il primo del mese.
* **Input "TARGET":** Quando digiti un numero, il sistema ricalcola istantaneamente la barra di progresso e la cifra "Mancante". Salva il valore automaticamente per il mese corrente.
* **Input "TAX %":** Cambiando questo numero (es. da 20 a 15), il sistema ricalcola immediatamente il Netto e il Mancante su tutti i dati salvati.

#### **Pulsanti della Navigazione (Sticky Footer)**
* **Tasto TURNO (+):** 1. Apre una finestra (modal) che blocca il resto dell'app.
    2. Genera automaticamente i menu a tendina con la data odierna.
    3. Attiva il sistema "Auto-Scroll" che sposta i campi in alto per non farli coprire dalla tastiera del telefono.
* **Tasto BENZINA (⛽):**
    1. Apre la finestra di rifornimento.
    2. Attiva il filtro "Prezzo": mentre scrivi, il sistema inserisce i punti decimali corretti per evitare errori di battitura.
* **Tasto STORICO (🕒):**
    1. Interroga il database e crea una lista cronologica di tutte le attività.
    2. Per ogni elemento, calcola statistiche specifiche (es. km/l esatti di quel turno).
* **Tasto GENERA REPORT PDF (Verde Grande):**
    1. Nasconde l'interfaccia dell'app e attiva la "Modalità Documento".
    2. Esegue la somma finale di tutti i dati del mese e genera le tabelle stampabili.
* **Tasto AZZERA DATABASE (Rosso):**
    1. Apre un avviso di sicurezza. Se confermi, il sistema cancella ogni dato dalla memoria e riavvia l'app.

#### **Pulsanti all'interno delle Finestre (Modal)**
* **Tasto SALVA (Turno/Benzina):**
    1. Controlla la validità dei dati.
    2. Se è il primo inserimento assoluto, obbliga l'impostazione di un prezzo benzina iniziale.
    3. Registra i dati, chiude la finestra e **attiva il pop-up di Backup** per la sicurezza dei dati.
* **Tasto "X" (nello Storico):**
    1. Apre una finestra di conferma.
    2. Se confermi, rimuove l'elemento e ricalcola istantaneamente i totali della Dashboard.
* **Tasto ANNULLA / CHIUDI:** Svuota i campi e chiude la finestra senza salvare.

#### **Pulsanti dell'Area Backup & Report**
* **ESPORTA DATABASE (.JSON):** Scarica un file fisico con tutta la tua storia lavorativa.
* **IMPORTA DATABASE (.JSON):** Permette di caricare un vecchio file di backup per ripristinare i dati.
* **STAMPA ORA:** Attiva la funzione di stampa del sistema operativo (o salvataggio in PDF).

### **3. GUIDA OPERATIVA E FUNZIONI**
* **LORDO/NETTO:** Monitoraggio in tempo reale del guadagno pulito.
* **LITRI STIMATI:** Calcolo preciso del consumo basato sulla resa del veicolo.
* **SICUREZZA PREZZO INIZIALE:** Garantisce che il calcolo del carburante sia accurato fin dal primo KM.
* **AUTO-FORMAT PREZZO:** Correzione automatica del formato decimale durante la digitazione.

### **⚠️ AVVERTENZE TECNICHE**
1.  **OTTIMIZZAZIONE MOBILE:** Progettato per l'uso a una mano, con protezione anti-zoom e supporto per notch/display curvi.
2.  **DECIMALI:** Prediligi sempre il **PUNTO (.)** (es. 1.752).

---

## 🇺🇸 ENGLISH SECTION

### **1. BUTTON LOGIC: WHAT HAPPENS WHEN YOU PRESS...**
* **SHIFT BUTTON (+):** Opens entry form with current date and enables keyboard auto-scroll.
* **FUEL BUTTON (⛽):** Opens refueling form with real-time price formatting.
* **SAVE BUTTON:** Validates data, writes to memory, and triggers the **Proactive Backup** prompt.
* **HISTORY (🕒):** Recalls all entries and calculates per-shift efficiency.
* **PDF REPORT:** Compiles monthly stats into a printable format.
* **RESET (Red):** Full data wipe after safety confirmation.

### **2. OPERATIONAL GUIDE**
* **GROSS/NET:** Real-time earnings tracking.
* **INITIAL PRICE LOCK:** Ensures accuracy from the very first entry.
* **PROACTIVE BACKUP:** Prompted after every save to prevent data loss.

---

**PROGETTATO E PENSATO DA: [MARCO CARBONE](https://facebook.com/madmaddj)**

**P.S. LALLA INFAME**
