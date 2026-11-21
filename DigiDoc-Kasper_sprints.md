# DigiDoc-Kasper — plán a stav k 21. 11. 2026

DigiDoc 2.0 — výrobní časy. Chronologický plán pro DS a BL. Vývoj ≈100 h, testy 14 h (BL 10 + DS bugfix 4). Výjimky: svátek 17. 11. a DS půl dne mimo 9. 12. Kapacita: vývoj 98 h + testy 14 h · DS 64 · BL 48.

Zdroj stavu: GitLab `kasper/kasperdigitaldocapp` větve `ft/prototype` a `ft/timetracking`, BE `kasper.digitaldocumentationbe` větev `ft/timetracking` (fetch 21. 11.).

## Hotovo

| Dráha | Bod z plánu | Rozpracovanost |
| --- | --- | --- |
| VČ | Analýza a UX/UI (KT45) | Hotovo |
| MP | Analýza a UX/UI (KT45) | Hotovo |
| DS | Analýza a UX/UI (KT45) | Hotovo |
| DS | FE prototyp výrobních časů | Hotovo na `ft/prototype` · localStorage, ne produkční API · poslední commit 18. 11. |
| DS | Lišta měření, reporty, detail, důvody, Právě běží, export XLSX | Hotovo v prototypu |
| DS | TN rev02 návrh | Hotovo jako podklad |
| BL | Start produkční FE větve | Probíhá · stub `TimeReports` + menu Časy + docs (20. 11.) · UI zatím `return null` |

BL se analýzy neúčastnila. Shell KT47–48 z plánu BL prakticky dodal DS v prototypu. BL na produkční větvi zatím jen stub. DS mezitím dělá i DigiDoc údržbu mimo plán časů (deps, bugfixy).

## Plán podle osob

### DS — fullstack · 64 h (60 h vývoj + 4 h bugfix)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| FE prototyp (lišta, reporty, detail, důvody, live, export) | Hotovo · `ft/prototype` | — |
| Migrace EF | Nezačato · BE bez manufacturing modelu | 4 h |
| CRUD důvodů (BE) | Nezačato | 6 h |
| Start/Stop API | Nezačato | 10 h |
| Převzetí, směny, checklist BE | Nezačato | 8 h |
| Report BE | Nezačato | 8 h |
| Opravy API | Nezačato | 8 h |
| Export data (BE) | Nezačato | 4 h |
| Live napojení na API | Nezačato | 2 h |
| Bugfix z testů | Plán KT50 | 4 h |
| Mimo plán časů | Probíhá · Node/MUI/Vite updates, login/help/users fixy, BE packages (`ds/basket`) | — |

### BL — junior FE · 48 h (38 h vývoj + 10 h testy)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| Report shell (UI) | Hotovo v prototypu (DS) | 8 h |
| UI důvodů | Hotovo v prototypu (DS) | 4 h |
| Reporty — filtry a záložky | Hotovo v prototypu (DS) | 6 h |
| Detail shell (UI) | Hotovo v prototypu (DS) | 7 h |
| Produkční FE větev / stránka Časy | Probíhá · stub + navigace · žádné UI | — |
| Napojení reportů / úpravy detailu na API | Plán KT49 | 7 h |
| Právě běží — napojení | Shell v prototypu · Live API čeká | 4 h |
| Export UI — napojení | UI v prototypu · BE export čeká | 2 h |
| Testování UC / UI | Plán KT50 | 10 h |

## Milníky

| Milník | Plán | Stav k 21. 11. |
| --- | --- | --- |
| KT45 | Analýza a UX/UI | Hotovo · VČ, MP, DS |
| KT46 | Schválení TN | Probíhá · otevřené otázky u zákazníka |
| KT47–KT49 | Vývoj BE + FE ≈100 h | FE prototyp hotový. BL stub Časy. Produkční BE API časů nezačato. Jsme na konci KT47 (víkend). |
| KT50 | Interní a zákaznické testy 10–16 h | Plán 7.–13. 12. |
| KT51 | Nasazení a předání | Plán · cíl produkce 14. 12., provoz do 18. 12. |

## Větve

| Repo | Větev | Co tam je |
| --- | --- | --- |
| `kasperdigitaldocapp` | `ft/prototype` | FE prototyp výrobních časů (DS; poslední 18. 11.) |
| `kasperdigitaldocapp` | `ft/timetracking` | stub Časy (BL) + docs + env; DS deps/bugfixy mimo časy |
| `kasper.digitaldocumentationbe` | `ft/timetracking` | tip má deps/basket/contract search · **žádný** manufacturing-times kód |

## Kalendářní výjimky

- 17. 11. svátek → KT47 jen 4 dny · už proběhlo.
- 9. 12. DS půl dne mimo → KT50 úkoly ne na 9. 12.

## Handoffy (zbývá)

1. Migrace + model BE → odblokuje produkční API
2. CRUD důvodů BE → napojení UI důvodů z prototypu
3. Start/Pauza/Stop API → napojení lišty z prototypu
4. Report + opravy + export API → napojení (BL)
5. Live API → doladění Právě běží

## Rizika

- TN bez všech zákaznických rozhodnutí.
- FE napřed v prototypu; bez BE nejde ostrá evidence.
- DS kapacita jde i do DigiDoc údržby mimo plán časů.
- 9. 12. DS půl dne mimo.

## Osa

21. 11. jste tady (konec KT47, víkend). FE prototyp hotový. BL má stub Časy. Produkční BE API časů není. KT48 začíná 23. 11.
