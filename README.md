# RIDER TRACKER PRO V5.0

Questa è la versione definitiva (v5.0) ottimizzata per l'uso come Web App o pacchettizzata in APK. Il sistema garantisce un monitoraggio completo della contabilità per rider, con particolare attenzione all'usabilità su smartphone.

## 📦 Struttura File
Per il corretto funzionamento, i seguenti file devono trovarsi nella stessa cartella:
- `index.html` (Interfaccia principale e inserimento dati)
- `report.html` (Generazione report e stampa A4)

## 🚀 Funzionalità Principali

### 1. Dashboard e Calcoli
- **Netto Reale**: Calcolo automatico sottraendo imposte (%) e costi carburante.
- **Progress Bar**: Barra colorata dinamica basata sul target impostato.
- **Mancante Lordo**: Calcolo immediato di quanto bisogna ancora incassare per raggiungere il netto desiderato.

### 2. Ottimizzazione Mobile (Anti-Tastiera)
- **Modali Top-Aligned**: I moduli di inserimento si aprono nella parte alta per non essere coperti dalla tastiera.
- **Focus Smart**: Scroll automatico sui campi di testo al tocco per una visibilità perfetta durante la digitazione.
- **Zero Zoom**: Font a 16px per prevenire l'ingrandimento automatico della pagina su iOS e Android.

### 3. Storico e Reportistica
- **Storico Interattivo**: Navigazione semplificata con tasti di scorrimento rapido.
- **Report Fluido**: Il file `report.html` è progettato per adattarsi allo schermo mobile (niente barre laterali).
- **Stampa A4**: Layout professionale pronto per essere salvato in PDF o stampato su carta.

## ⚙️ Note Tecniche
- **Database**: `localStorage` (Versione v95).
- **Offline**: Funziona senza connessione internet una volta caricati i file.
- **Privacy**: Tutti i dati restano salvati localmente sul dispositivo dell'utente.

---
*Versione di riferimento salvata come "OK" il 02/01/2026.*
