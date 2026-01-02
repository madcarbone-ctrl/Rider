# RIDER TRACKER PRO V5.0

Questa è la versione di riferimento stabile (v5.0). L'applicazione è progettata per funzionare come **Web App** tramite browser mobile, garantendo un monitoraggio completo della contabilità per rider.

## 📋 Requisiti di Funzionamento
Per garantire la navigazione e il calcolo dei dati, i due file devono risiedere nella stessa cartella:
- `index.html` (Dashboard principale e database)
- `report.html` (Visualizzazione dati e stampa)

## 🚀 Funzionalità Ottimizzate

### 💰 Gestione Economica e Target
- **Netto Reale**: Calcolo basato sulla sottrazione di imposte (%) e costi carburante effettivi.
- **Barra di Progresso**: Indicatore visivo (Verde -> Rosso) sul raggiungimento dell'obiettivo.
- **Mancante Lordo**: Indica quanto lavoro è ancora necessario per toccare il target netto.

### 📱 Esperienza su Smartphone (Browser)
- **Anti-Tastiera**: I modali di inserimento sono fissati in alto per non essere coperti dalla tastiera di sistema.
- **Focus Intelligente**: Scroll automatico sui campi di input per mantenere sempre visibile ciò che si scrive.
- **Interfaccia Fluida**: Design ottimizzato per eliminare lo scorrimento laterale (niente barre orizzontali).

### 📄 Report e Stampa Professionale
- **Visualizzazione Mobile**: Report pulito e leggibile direttamente dal telefono.
- **Formato A4 PDF**: Layout pre-impostato per generare documenti A4 perfetti per la stampa o l'archiviazione digitale.

## ⚙️ Note Tecniche
- **Database Locale**: I dati vengono salvati nella cache del browser tramite `localStorage` (v95).
- **Navigazione**: Il passaggio tra Dashboard e Report avviene tramite link locale diretto.
- **Privacy**: 100% Offline. Nessun dato viene inviato a server esterni.

---
* Ottimizzata per l'uso tramite Browser Mobile.*
