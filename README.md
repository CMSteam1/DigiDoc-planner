# DigiDoc planner

Interaktivní vizualizace plánu projektu DigiDoc-Kasper. Statické HTML stránky fungují bez backendu, instalace balíčků a sestavování aplikace.

## Sdílený web

Po úspěšném nasazení na GitHub Pages:

- [Plán dodávky](https://cmsteam1.github.io/DigiDoc-planner/)
- [Procesní diagram](https://cmsteam1.github.io/DigiDoc-planner/proces.html)
- [Plán realizace](https://cmsteam1.github.io/DigiDoc-planner/realizace.html)

Stránky obsahují filtry, možnost stažení prezentace pro offline sdílení a tisk do PDF. Relativní odkazy podporují provoz v podadresáři GitHub Pages.

**Viditelnost:** tento repozitář a web GitHub Pages jsou veřejné. Osoby jsou označeny pouze iniciálami (DS, BL, VČ, MP); kapacity a projektové termíny zůstávají součástí plánu. Při dalších úpravách zachovejte iniciály a nepřidávejte osobní údaje ani citlivé informace. Samotné iniciály nezaručují anonymitu osob.

## Úpravy a publikování

1. Upravte příslušnou HTML stránku a podle potřeby textový podklad `DigiDoc-Kasper_sprints.md`. Obsah těchto souborů se vzájemně nesynchronizuje automaticky.
2. Změny odešlete do větve `main`.
3. Workflow **Deploy project plan to GitHub Pages** automaticky publikuje novou verzi. Lze jej spustit také ručně v záložce **Actions**.

V **Settings → Pages → Build and deployment → Source** musí být zvoleno **GitHub Actions**. Publikování ze soukromého repozitáře vyžaduje podporovaný tarif GitHubu.

Nasazují se pouze tři HTML stránky, nikoli textové podklady, lokální server nebo obsah repozitáře.

## Lokální náhled

Spusťte `start-prezentace.ps1` v PowerShellu a otevřete <http://127.0.0.1:8766/>. Server ukončíte pomocí Ctrl+C. HTTP server je potřeba také pro tlačítko **Stáhnout pro sdílení**, které načítá všechny tři stránky.

Zobrazené datum stavu a termíny jsou součástí podkladů, neposouvají se automaticky podle aktuálního dne.