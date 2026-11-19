# DigiDoc-Kasper — plán a stav k 19. 11. 2026

DigiDoc 2.0 — výrobní časy. Chronologický plán pro DS a BL. Vývoj ≈100 h, testy 14 h (BL 10 + DS bugfix 4). Výjimky: svátek 17. 11. a DS půl dne mimo 9. 12. Kapacita: vývoj 98 h + testy 14 h · DS 64 · BL 48.

Zdroj stavu: GitLab `kasper/kasperdigitaldocapp` větve `ft/prototype` a `ft/timetracking` (fetch 19. 11.). BE `kasper.digitaldocumentationbe` zatím bez větví k výrobním časům.

## Hotovo

| Dráha | Bod z plánu | Rozpracovanost |
| --- | --- | --- |
| VČ | Analýza a UX/UI (KT45) | Hotovo |
| MP | Analýza a UX/UI (KT45) | Hotovo |
| DS | Analýza a UX/UI (KT45) | Hotovo |
| DS | FE prototyp výrobních časů | Hotovo na `ft/prototype` · localStorage, ne produkční API |
| DS | Lišta měření, reporty, detail, důvody, Právě běží, export XLSX | Hotovo v prototypu (`ProductionTimeControl`, `ProductionReportsPage`, `DowntimeReasonsPage`, …) |
| DS | TN rev02 návrh | Hotovo jako podklad · `1NB2609-207_DigiDoc_TN_rev02_navrh_srb.docx` |

BL se analýzy a návrhu neúčastnila. FE shell/mock z KT47–48 prakticky dodal DS v prototypu — BL dál napojení na živá data a testy.

## Plán podle osob

### DS — fullstack · 64 h (60 h vývoj + 4 h bugfix)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| FE prototyp (lišta, reporty, detail, důvody, live, export) | Hotovo · `ft/prototype` | — |
| Migrace EF | Nezačato | 4 h |
| CRUD důvodů (BE) | Nezačato · FE stránka je v prototypu | 6 h |
| Start/Stop API | Nezačato · FE ovládání je v prototypu | 10 h |
| Převzetí, směny, checklist BE | Nezačato · FE chování je v prototypu | 8 h |
| Report BE | Nezačato | 8 h |
| Opravy API | Nezačato · editace je v prototypu | 8 h |
| Export data (BE) | Nezačato · XLSX je v prototypu z localStorage | 4 h |
| Live napojení na API | Nezačato | 2 h |
| Bugfix z testů | Plán KT50 | 4 h |

### BL — junior FE · 48 h (38 h vývoj + 10 h testy)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| Report shell (UI) | Hotovo v prototypu (DS) · `ft/prototype` | 8 h |
| UI důvodů | Hotovo v prototypu (DS) | 4 h |
| Reporty — filtry a záložky | Hotovo v prototypu (DS) | 6 h |
| Detail shell (UI) | Hotovo v prototypu (DS) | 7 h |
| Napojení reportů / úpravy detailu na API | Plán KT49 · po Report BE a Opravách API | 7 h |
| Právě běží — napojení | Shell hotový v prototypu · Live API čeká | 4 h |
| Export UI — napojení | UI hotové v prototypu · BE export čeká | 2 h |
| Testování UC / UI | Plán KT50 | 10 h |

## Milníky

| Milník | Plán | Stav k 19. 11. |
| --- | --- | --- |
| KT45 | Analýza a UX/UI | Hotovo · VČ, MP, DS |
| KT46 | Schválení TN | Probíhá · TN rev02 návrh je, u zákazníka zbývají otevřené otázky |
| KT47–KT49 | Vývoj BE + FE ≈100 h | FE prototyp na `ft/prototype` hotový. Produkční BE nezačato. Jsme v KT47. |
| KT50 | Interní a zákaznické testy 10–16 h | Plán 7.–13. 12. |
| KT51 | Nasazení a předání | Plán · cíl produkce 14. 12., provoz do 18. 12. |

## Větve

| Repo | Větev | Co tam je |
| --- | --- | --- |
| `kasperdigitaldocapp` | `ft/prototype` | FE prototyp výrobních časů (DS 54 commitů + VČ start) |
| `kasperdigitaldocapp` | `ft/timetracking` | develop + konfigurace `VITE_API_BASE_URL` / production env |
| `kasper.digitaldocumentationbe` | — | Žádná větev k manufacturing times |

## Kalendářní výjimky

- 17. 11. svátek → KT47 jen 4 dny (DS max 16 h) · už proběhlo.
- 9. 12. DS půl dne mimo → jeho KT50 úkoly dávat na 7., 8., 10. nebo 11. 12., ne na 9. 12.

## Handoffy (zbývá)

1. Migrace + model BE → odblokuje produkční API
2. CRUD důvodů BE → napojení UI důvodů z prototypu
3. Start/Pauza/Stop API → napojení lišty z prototypu
4. Report + opravy + export API → napojení reportů/detailu/exportu (BL)
5. Live API → doladění Právě běží

## Rizika

- TN ještě nemá všechna zákaznická rozhodnutí (O-10 až O-12 a další).
- FE je napřed v prototypu; bez BE se nedá nasadit ostrá evidence.
- 9. 12. DS půl dne mimo — Live a bugfix ne na 9. 12. odpoledne.
- BL testuje 10 h v KT50; DS současně bugfix 4 h.

## Osa

19. 11. jste tady (KT47). Analýza hotová. FE prototyp výrobních časů je na `ft/prototype`. Produkční BE a napojení živých dat ještě nejsou. KT48 začíná 23. 11.
