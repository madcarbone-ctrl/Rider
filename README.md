# Rider Tracker Pro

Controllo reale del guadagno per rider.

---

## Descrizione

Rider Tracker Pro è una Progressive Web App che permette di calcolare il **guadagno reale** di un rider, andando oltre il semplice incasso lordo.

L’app tiene conto di:
- tassazione stimata
- costo carburante imputato ai turni

Tutti i dati vengono salvati **localmente sul dispositivo** tramite LocalStorage.  
Non sono presenti account, login, cloud o backend.

---

## Funzionalità principali

- Calcolo lordo, netto e media oraria
- Gestione turni di lavoro
- Supporto mezzi diversi (auto, moto, bici)
- Stima costo carburante reale
- Obiettivi mensili con barra di progresso
- Storico completo
- Report mensile stampabile
- Grafici di resa
- Backup e ripristino dati

---

## Versioni

- Versione UI: **1.2**
- Versione logica interna: **1.1.0**

Le versioni non coincidono volutamente.  
La versione UI segue le funzionalità visibili, quella interna garantisce compatibilità del database.

---

## Primo utilizzo (obbligatorio)

### Impostare la tassazione (TAX %)

Prima di inserire qualsiasi dato è necessario impostare **TAX %**.

Il valore deve rappresentare una **stima realistica** di tasse e contributi.  
Se il valore è errato, il netto risultante sarà errato.

Valori consigliati:

- Prestazione occasionale  
  **20%**

- Regime forfettario 5%  
  **20–23%**

- Regime forfettario 15%  
  **30–33%**

Questi valori non sono fiscali ufficiali, ma **stime operative** per il controllo del guadagno reale.  
In caso di dubbio è consigliato usare un valore prudente più alto.

---

### Impostare l’obiettivo mensile (TARGET)

Il campo **TARGET** rappresenta il **guadagno netto desiderato** per il mese.

Serve per:
- monitorare l’avanzamento
- visualizzare quanto manca all’obiettivo
- evitare lavoro non pianificato

---

## Modello di calcolo

### Turni

Ogni turno registra:
- incasso lordo
- ore lavorate
- chilometri percorsi
- consumo del veicolo
- mezzo utilizzato

Il consumo è dichiarativo.  
Se non disponibile può restare vuoto.  
Con la bici il consumo è sempre zero.

---

### Mezzi supportati

- Auto
- Moto
- Bici

Con la bici:
- consumo carburante zero
- nessun costo benzina
- nessuna richiesta di prezzo carburante

---

### Rifornimenti

I rifornimenti **non vengono sottratti direttamente dal guadagno**.

Servono esclusivamente a:
- determinare il prezzo al litro valido
- stimare il costo carburante dei turni

È normale che la spesa reale al distributore non coincida con la spesa benzina stimata.

---

### Prezzo iniziale carburante

Se il mese inizia senza rifornimenti:
- viene richiesto il prezzo dell’ultimo pieno noto
- serve solo per continuità di calcolo

Se il primo turno è in bici, il prezzo non viene richiesto.

---

## Obiettivi e progresso

L’app mostra:
- percentuale di obiettivo raggiunto
- barra di progresso
- importo mancante

Tutti i valori si aggiornano in tempo reale.

---

## Inserimento dati

### Turno
- selezione mezzo
- inserimento lordo, ore e chilometri
- consumo solo per auto e moto

### Rifornimento
- importo pagato
- prezzo al litro  
Il rifornimento non influisce direttamente sul netto.

### KM Extra
- chilometri non lavorativi
- solo a scopo informativo
- non influiscono sui calcoli economici

---

## Storico

Lo storico contiene:
- turni
- rifornimenti
- km extra

I dati possono essere eliminati singolarmente con conferma.  
Non è prevista la modifica diretta di un elemento.

---

## Report e grafici

Dal pulsante **Riepilogo | Grafico | Stampa** è possibile:
- visualizzare il report mensile
- stampare o salvare in PDF
- analizzare i grafici di resa

Grafici disponibili:
- guadagno netto per ora
- guadagno netto per chilometro

I turni in bici non compaiono nel grafico per chilometro.

---

## Backup e ripristino

Dal report è possibile:
- esportare il database in formato JSON
- importare un backup esistente

Il ripristino sovrascrive completamente i dati locali.

---

## Gestione fine mese

Il primo giorno del mese:
- i contatori mensili vengono azzerati
- lo storico rimane disponibile
- il prezzo carburante viene mantenuto

Nessun dato viene perso.

---

## Limitazioni

- Nessuna modifica diretta dei dati
- Nessuna sincronizzazione cloud
- Nessuna validazione fiscale ufficiale

---

## Licenza e Copyright

Copyright © 2026 **Marco Carbone**  
Tutti i diritti riservati.

Questo software è **gratuito per uso personale**.

È consentito:
- utilizzare l’app
- studiarne il funzionamento

Non è consentito:
- copiare il progetto
- ridistribuire il codice
- pubblicare versioni derivate
- vendere o includere il progetto in altri prodotti
- rimuovere o modificare il copyright

Qualsiasi utilizzo diverso da quello personale richiede **autorizzazione scritta dell’autore**.

---

## Obiettivo del progetto

Rider Tracker Pro è uno strumento di **controllo personale** pensato per:
- capire se il lavoro è sostenibile
- evitare di lavorare in perdita
- prendere decisioni basate sul netto reale

---

## Regola fondamentale

Prima si impostano **tassazione e obiettivo**.  
Poi si inseriscono i dati.  
Poi si guarda il **NETTO**.
