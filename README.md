# 🛵 Rider Tracker Pro V5.2.3

[Italiano](#it) | [English](#en)

---

<a name="it"></a>
## 🇮🇹 Versione Italiana

**Rider Tracker Pro** è un'applicazione web leggera e privata progettata per i rider che vogliono gestire guadagni e spese carburante in tempo reale. Questa è la **Versione Finale (Punto di Arrivo)**.

### ✨ Caratteristiche
* **Gestione Benzina**: Inserimento rapido a 4 cifre (es. `1855` -> `1.855`).
* **Report Mensile**: Generazione PDF automatica con statistiche dettagliate.
* **Privacy**: I dati restano solo sul tuo telefono (LocalStorage).
* **Notifiche**: Avviso automatico al cambio del mese.

### 🛠️ Configurazione Tecnica
Per il corretto funzionamento come App (PWA), assicurati che il tuo `index.html` contenga questo codice nel tag `<head>`:
```html
<link rel="manifest" href="manifest.json">
