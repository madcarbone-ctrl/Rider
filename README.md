<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manuale Rider Tracker Pro v95</title>
    <style>
        :root { --primary: #00CCBC; --bg: #121212; --text: #e0e0e0; }
        body { font-family: 'Segoe UI', system-ui, sans-serif; background: var(--bg); color: var(--text); line-height: 1.6; padding: 20px; max-width: 800px; margin: auto; }
        h1 { color: var(--primary); text-align: center; border-bottom: 2px solid var(--primary); padding-bottom: 10px; }
        h2 { color: var(--primary); margin-top: 30px; border-left: 4px solid var(--primary); padding-left: 10px; }
        .lang-section { background: #1e1e1e; padding: 20px; border-radius: 12px; margin-bottom: 20px; border: 1px solid #333; }
        code { background: #333; padding: 2px 5px; border-radius: 4px; color: #ff4d4d; }
        ul { padding-left: 20px; }
        li { margin-bottom: 10px; }
        hr { border: 0; border-top: 1px solid #444; margin: 40px 0; }
        .badge { background: var(--primary); color: black; padding: 3px 8px; border-radius: 5px; font-weight: bold; font-size: 0.8em; }
    </style>
</head>
<body>

    <h1>Rider Tracker Pro <span class="badge">v95 Final</span></h1>

    <div class="lang-section">
        <h2>🇮🇹 Istruzioni in Italiano</h2>
        <p><strong>Rider Tracker Pro</strong> è lo strumento definitivo per monitorare i tuoi guadagni e i costi del carburante durante i tuoi turni di consegna.</p>
        
        <h3>Configurazione</h3>
        <ul>
            <li>Assicurati che i file <code>index.html</code> e <code>report.html</code> siano nella stessa cartella.</li>
            <li>Inserisci il tuo <strong>Target €</strong> (l'importo netto che vuoi raggiungere) e la tua percentuale di <strong>Tasse</strong>.</li>
        </ul>

        <h3>Funzioni Principali</h3>
        <ul>
            <li><strong>Nuovo Turno:</strong> Registra lordo, ore, chilometri e consumo medio (L/100km).</li>
            <li><strong>Benzina:</strong> Registra i rifornimenti; l'ultimo prezzo inserito aggiornerà automaticamente il calcolo del costo carburante per i turni.</li>
            <li><strong>Progresso Obiettivo:</strong> Una barra stile mixer che si riempie in base al tuo guadagno netto rispetto al target.</li>
            <li><strong>Report A4:</strong> Genera un documento professionale ottimizzato per la stampa o il salvataggio in PDF.</li>
        </ul>

        <h3>Salvataggio Dati</h3>
        <p>I dati vengono salvati localmente (<code>localStorage</code>) sulla chiave <code>rider_db_v95</code>. Non cancellare i dati del browser per non perdere lo storico.</p>
    </div>

    <hr>

    <div class="lang-section">
        <h2>🇬🇧 Instructions in English</h2>
        <p><strong>Rider Tracker Pro</strong> is the ultimate tool for tracking your earnings and fuel costs during your delivery shifts.</p>
        
        <h3>Setup</h3>
        <ul>
            <li>Ensure <code>index.html</code> and <code>report.html</code> are stored in the same directory.</li>
            <li>Set your <strong>Target €</strong> (the net amount you want to earn) and your <strong>Tax %</strong>.</li>
        </ul>

        <h3>Key Features</h3>
        <ul>
            <li><strong>New Shift:</strong> Record gross pay, hours, kilometers, and average consumption (L/100km).</li>
            <li><strong>Fuel:</strong> Log your refuels; the latest price per liter will automatically update fuel cost calculations.</li>
            <li><strong>Goal Progress:</strong> A mixer-style bar that fills based on your net earnings vs. target.</li>
            <li><strong>A4 Report:</strong> Generates a professional document optimized for printing or saving as a PDF.</li>
        </ul>

        <h3>Data Storage</h3>
        <p>Data is saved locally (<code>localStorage</code>) under the <code>rider_db_v95</code> key. Avoid clearing browser data to keep your history intact.</p>
    </div>

    <p style="text-align: center; font-size: 0.8em; color: #666; margin-top: 50px;">
        Sviluppato con Gemini 3 Flash | 2026 Edition
    </p>

</body>
</html>
