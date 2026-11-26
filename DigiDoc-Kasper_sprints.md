# DigiDoc-Kasper — plán a stav k 26. 11. 2026 (poledne)

DigiDoc 2.0 — výrobní časy. Chronologický plán pro DS a BL. Vývoj ≈100 h, testy 14 h (BL 10 + DS bugfix 4). Výjimky: svátek 17. 11.; team building 3. 12. půl + 4. 12. volno (**jen BL**; DS pracuje); DS půl dne mimo 9. 12.

**Upozornění — termín 14. 12. je ohrožený.** Produkční BE (migrace, CRUD, Start/Stop) je stále **nezačaté**. DS kapacita jde do DigiDoc údržby a prototypu (≠ dodávka). Zbývá **dnes + zítra** KT48 (26.–27. 11.). Handoff Report BE do **2. 12.** je na kritické hraně.

**Aktuální stav:**
- BL — produkční FE: hlavička reportů + modal důvodů (mock: add, inline edit, smazání v UI); napojení na API chybí; filtry/detail nezačaté.
- DS — prototyp UX hotový jako náhled · **≠ dodávka**.
- DS — DigiDoc údržba · **mimo plán časů**.
- BE výrobních časů: **žádný kód**.
- **ŠJ** — přidává se jako **výpomoc pro BE** (info; bez změny hodinového plánu DS/BL).

**Pravidlo:** prototyp ≠ hotová dodávka.

## Hotovo (dodávka / podklad)

| Dráha | Bod | Stav |
| --- | --- | --- |
| VČ / MP / DS | Analýza a UX/UI (KT45) | Hotovo |
| DS / zákazník | Schválení TN (KT46) | Hotovo · návrh schválen |
| DS | TN rev02 návrh | Hotovo jako podklad |
| DS | FE prototyp | Hotovo jako UX náhled · **ne dodávka** |
| BL | FE shell z prototypu | Hotovo jako podklad |

## Probíhá (produkční)

| Dráha | Co | Poznámka |
| --- | --- | --- |
| BL | Stránka Časy / reporty | Hlavička + modal důvodů (mock: add, edit, smazání UI) |
| DS | DigiDoc údržba | Mimo plán časů |
| DS | Prototyp | UX náhled · ≠ dodávka |
| ŠJ | Výpomoc BE | Info · bez pevné kapacity v plánu |

## Posun nezačatých (drží se)

| Úkol | Bylo | Nově | Proč |
| --- | --- | --- | --- |
| Migrace EF · 4 h | KT47 | **KT48** (26.–27. 11.) | Nezačato · blokuje BE |
| CRUD důvodů BE · 6 h | KT47 | **KT48** | Nezačato |
| Start/Stop API · 10 h | KT47–48 | **KT48 start + KT49 dokončení** | Celé nezačato |
| Převzetí / směny / checklist · 8 h | KT48 | **KT49** | Nezačato · ustoupí startu BE |
| Report BE · 8 h | KT48–49 | **KT49 · do 2. 12.** | Kritická cesta · **ohroženo** |
| Opravy API · 8 h | KT49 | **KT49 / přesah KT50** | Po Reportu · riziko přesahu |
| Export data · 4 h | KT49 | **KT49** (3.–4. 12., DS bez TB) | Po opravách / souběžně |
| Lišta / FE převzetí | KT48–49 | **KT49–50** | Až po Start/Stop API |
| BL filtry + detail shell · 13 h | KT48 | **KT48 zbývá / přesah KT49** | Mock bez BE možné |
| BL napojení + Právě běží · 11 h | KT49 | **KT49 do 3. 12. dopoledne** | Závisí na Report BE · **ohroženo** |

## Co se pod úkoly očekává

### Migrace datového modelu
- tabulky pro výrobní časy
- tabulky / vazby pro důvody prostojů
- směny / převzetí (základ modelu)
- EF migrace připravená k nasazení

### Správa důvodů (BE)
- seznam důvodů
- přidání důvodu
- úprava důvodu
- smazání důvodu
- validace (povinné pole, duplicity dle TN)

### Start/Stop API
- spuštění měření
- pauza s důvodem
- pokračování
- ukončení (stop)
- stav právě běžícího měření

### Převzetí, směny, checklist (BE)
- předání práce mezi směnami / osobami
- evidence směny
- checklist při dokončení
- součty / validace checklistu dle TN

### Report BE
- agregace výrobních časů
- data pro tabulky reportů
- filtry na BE (období, pracoviště, …)
- podklady pro záložky přehledů

### Opravy API
- úprava délky času (±)
- změna důvodu
- přidání / smazání záznamu
- oprávnění dle rolí

### Export data
- příprava dat ke stažení
- formát dle TN (Excel/CSV)
- stejné filtry jako u reportů

### FE převzetí / lišta
- lišta měření na tabletu
- start / pauza / stop v UI
- předání směny v UI
- napojení na Start/Stop API (produkčně)

### Live napojení
- živý přehled běžící práce
- aktualizace stavu z API
- obrazovka „Právě běží“ napojená na data

### Report shell
- stránka Reporty (kostra)
- nadpis / hlavička
- základní tlačítka
- zatím bez živých dat / tabulek

### UI důvodů
- dialog seznam důvodů
- přidání
- úprava (inline)
- smazání v UI (potvrzení; persistence až s BE)
- napojení na API (až bude)

### Reporty — filtry a záložky
- filtry (období, pracoviště, …)
- záložky / pohledy v reportech
- tabulka přehledu (layout)
- zatím může být mock / bez API

### Detail shell
- stránka jednoho záznamu / dne / zakázky (dle UX)
- layout detailu
- tlačítka akcí (upravit, ±, důvod…)
- zatím bez živých dat

### Napojení reportů / detailu
- napojení shellu na Report BE
- zobrazení reálných dat v tabulkách
- úpravy v detailu přes Opravy API
- chybové stavy / prázdná data

### Právě běží
- seznam / dlaždice živých měření
- stavy běží / pauza
- napojení na live API

### Export UI
- tlačítko export
- dialog / potvrzení
- stažení souboru z Export data API

### Testování UC / UI
- průchod UC na pile / lisu / CNC
- kontrola obrazovek a hlášek
- zápis chyb pro bugfix

## Plán podle osob (po posunu)

### DS — 64 h (60 vývoj + 4 bugfix)

| Plán | Stav | Kde teď |
| --- | --- | --- |
| FE prototyp | UX hotovo · ne dodávka | prototyp |
| Migrace EF · 4 h | Nezačato | **KT48 teď** |
| CRUD důvodů BE · 6 h | Nezačato | **KT48 teď** |
| Start/Stop API · 10 h | Nezačato | KT48 část + KT49 zbytek |
| Převzetí, směny, checklist · 8 h | Nezačato | **KT49** |
| Report BE · 8 h | Nezačato | **KT49 do 2. 12. · ohroženo** |
| Opravy API · 8 h | Nezačato | KT49 / přesah KT50 |
| Export data · 4 h | Nezačato | KT49 (DS bez TB) |
| Live + FE převzetí zbytek · 4 h | Nezačato | KT50 |
| Bugfix · 4 h | Plán | KT50 |

### BL — 48 h (38 vývoj + 10 testy)

| Plán | Stav | Kde teď |
| --- | --- | --- |
| Report shell + UI důvodů | Probíhá (hlavička + modal) | smazání UI ano · API chybí |
| Filtry a záložky · 6 h | Nezačato | KT48 zbývá / přesah KT49 |
| Detail shell · 7 h | Nezačato | KT48 zbývá / přesah KT49 |
| Napojení reportů/detailu · 7 h | Plán | KT49 do 3. 12. dopoledne · závisí na BE |
| Právě běží · 4 h | Nezačato | KT49 do 3. 12. dopoledne |
| Export UI · 2 h | Plán | začátek KT50 (po TB) |
| Testování UC/UI · 10 h | Plán | KT50 |

## Milníky

| Milník | Závazek | Stav |
| --- | --- | --- |
| KT45 | Analýza a UX/UI | Hotovo |
| KT46 | Schválení TN | Hotovo · návrh schválen |
| KT47–KT49 | Vývoj ≈100 h | **Propad:** BE API časů nezačato. Zbývá 26.–27. 11. KT48. Prototyp ≠ dodávka. |
| KT50 | Testy 10–16 h | Plán 7.–13. 12. · hrozí zkrácení, pokud sklouzne napojení |
| KT51 | Nasazení 14. 12. | **Upozornění — ohroženo** · drží se jen při okamžitém startu produkčního BE |

## Kalendářní výjimky

- 17. 11. svátek · už proběhlo.
- **3. 12. půl + 4. 12. volno · TB jen BL**; DS pracuje.
- 9. 12. DS půl dne mimo.

## Kapacita po posunu (udržení 14. 12. jen podmíněně)

| Kdo | Zbývá do konce KT49 | Nutné hodiny do handoffů | Verdikt |
| --- | --- | --- | --- |
| DS | dnes+zítra KT48 + 5 dní KT49 ≈ 6–7 MD | Migrace+CRUD+Start/Stop+Převzetí+Report ≈ 36 h před/ skrz 2. 12. | **Těsné** · bez další práce na prototypu / údržbě |
| BL | dnes+zítra KT48 + 3,5 dne KT49 | Filtry+detail+napojení+Právě běží ≈ 24 h | OK, **pokud** Report BE stihne 2. 12. |

Kritická cesta: **Migrace → CRUD → Start/Stop → Report BE (2. 12.) → BL napojení (3. 12. dopoledne) → testy KT50 → nasazení 14. 12.**

## Handoffy (zbývá)

1. Migrace + model BE *(start ihned)*
2. CRUD důvodů BE → smazání + persistence UI
3. Start/Stop API → produkční lišta
4. Report + opravy + export API → produkční reporty/detail
5. Live API → Právě běží

## Rizika

- **Termín 14. 12. ohrožen** — produkční BE stále na nule; DS kapacita šla do prototypu a DigiDoc údržby.
- Report BE do 2. 12. na kritické hraně → skluz zkrátí testy KT50.
- Prototyp vytváří dojem hotového FE.

## Osa

26. 11. poledne · jste tady (4. den KT48). BL: hlavička + modal (včetně smazání v UI). BE výrobních časů bez kódu. DS: prototyp + DigiDoc údržba mimo plán. ŠJ: výpomoc BE (info). **14. 12. ohroženo**, pokud BE nezačne hned.
