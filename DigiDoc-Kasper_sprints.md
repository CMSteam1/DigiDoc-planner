# DigiDoc-Kasper — plán a stav k 21. 11. 2026

DigiDoc 2.0 — výrobní časy. Chronologický plán pro DS a BL. Vývoj ≈100 h, testy 14 h (BL 10 + DS bugfix 4). Výjimky: svátek 17. 11. a DS půl dne mimo 9. 12. Kapacita: vývoj 98 h + testy 14 h · DS 64 · BL 48.

Zdroj stavu: GitLab `kasper/kasperdigitaldocapp` větve `ft/prototype` a `ft/timetracking`, BE `kasper.digitaldocumentationbe` větev `ft/timetracking` (fetch 21. 11.).

**Pravidlo:** věci jen na `ft/prototype` (localStorage) **nejsou hotová dodávka**. Počítají se až produkční FE/BE.

## Hotovo (dodávka)

| Dráha | Bod z plánu | Rozpracovanost |
| --- | --- | --- |
| VČ | Analýza a UX/UI (KT45) | Hotovo |
| MP | Analýza a UX/UI (KT45) | Hotovo |
| DS | Analýza a UX/UI (KT45) | Hotovo |
| DS | TN rev02 návrh | Hotovo jako podklad |

## Jen prototyp (ne dodávka)

| Dráha | Co | Poznámka |
| --- | --- | --- |
| DS | FE prototyp na `ft/prototype` | Lišta, reporty, detail, důvody, live, export · localStorage · poslední 18. 11. |
| BL | Start `ft/timetracking` | Menu Časy + stub `TimeReports` (`return null`) + docs · 20. 11. |

## Plán podle osob

### DS — fullstack · 64 h (60 h vývoj + 4 h bugfix)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| FE prototyp (náhled) | Jen prototyp · ne dodávka | — |
| Migrace EF | Nezačato | 4 h |
| CRUD důvodů (BE) | Nezačato | 6 h |
| Start/Stop API | Nezačato | 10 h |
| Převzetí, směny, checklist BE | Nezačato | 8 h |
| Report BE | Nezačato | 8 h |
| Opravy API | Nezačato | 8 h |
| Export data (BE) | Nezačato | 4 h |
| Live napojení na API | Nezačato | 2 h |
| Lišta / FE převzetí (produkční) | Nezačato · jen náhled v prototypu | — |
| Bugfix z testů | Plán KT50 | 4 h |
| Mimo plán časů | Probíhá · DigiDoc deps/bugfixy (`ds/basket`) | — |

### BL — junior FE · 48 h (38 h vývoj + 10 h testy)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| Report shell (UI) | Nezačato · jen náhled v prototypu DS | 8 h |
| UI důvodů | Nezačato · jen náhled v prototypu DS | 4 h |
| Reporty — filtry a záložky | Nezačato · jen náhled v prototypu DS | 6 h |
| Detail shell (UI) | Nezačato · jen náhled v prototypu DS | 7 h |
| Produkční FE větev / stránka Časy | Probíhá · stub bez UI | — |
| Napojení reportů / detailu na API | Plán KT49 | 7 h |
| Právě běží — napojení | Nezačato | 4 h |
| Export UI — napojení | Nezačato | 2 h |
| Testování UC / UI | Plán KT50 | 10 h |

## Milníky

| Milník | Plán | Stav k 21. 11. |
| --- | --- | --- |
| KT45 | Analýza a UX/UI | Hotovo · VČ, MP, DS |
| KT46 | Schválení TN | Probíhá · otevřené otázky u zákazníka |
| KT47–KT49 | Vývoj BE + FE ≈100 h | Prototyp existuje (ne dodávka). BL stub. Produkční BE/FE časů nezačato. Konec KT47. |
| KT50 | Interní a zákaznické testy 10–16 h | Plán 7.–13. 12. |
| KT51 | Nasazení a předání | Plán · cíl produkce 14. 12., provoz do 18. 12. |

## Větve

| Repo | Větev | Co tam je |
| --- | --- | --- |
| `kasperdigitaldocapp` | `ft/prototype` | FE náhled výrobních časů (DS) · ne dodávka |
| `kasperdigitaldocapp` | `ft/timetracking` | stub Časy (BL) + env; DS deps mimo časy |
| `kasper.digitaldocumentationbe` | `ft/timetracking` | deps/basket · žádný manufacturing-times kód |

## Kalendářní výjimky

- 17. 11. svátek → KT47 jen 4 dny · už proběhlo.
- 9. 12. DS půl dne mimo → KT50 úkoly ne na 9. 12.

## Handoffy (zbývá)

1. Migrace + model BE
2. CRUD důvodů BE → produkční UI důvodů
3. Start/Pauza/Stop API → produkční lišta
4. Report + opravy + export API → produkční reporty/detail (BL)
5. Live API → Právě běží

## Rizika

- TN bez všech zákaznických rozhodnutí.
- Prototyp vytváří dojem hotového FE — produkční FE/BE ještě chybí.
- DS kapacita i do DigiDoc údržby mimo plán časů.

## Osa

21. 11. jste tady (konec KT47). Prototyp existuje, ale není hotová dodávka. BL má stub Časy. Produkční BE/FE API časů není. KT48 začíná 23. 11.
