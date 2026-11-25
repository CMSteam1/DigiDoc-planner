# DigiDoc-Kasper — plán a stav k 25. 11. 2026

DigiDoc 2.0 — výrobní časy. Chronologický plán pro DS a BL. Vývoj ≈100 h, testy 14 h (BL 10 + DS bugfix 4). Výjimky: svátek 17. 11.; team building 3. 12. půl dne + 4. 12. volno; DS půl dne mimo 9. 12. Kapacita: vývoj 98 h + testy 14 h · DS 64 · BL 48. Cíl produkce **14. 12. držíme**.

Zdroj stavu: GitLab `kasper/kasperdigitaldocapp` větve `ft/prototype`, `ft/timetracking`, `bl-ft/downtime-reasons`, `ds/basket`; BE `kasper.digitaldocumentationbe` `ft/timetracking` / `ds/basket` (fetch **25. 11.**). Výrobní časy: beze změny od **23. 11. 14:10**. 24. 11. DS sloučil DigiDoc údržbu do `ds/basket` (CSP, docs auth, login, help, logo, deps).

**Pravidlo:** věci jen na `ft/prototype` (localStorage) **nejsou hotová dodávka**. Počítají se až produkční FE/BE.

## Hotovo (dodávka)

| Dráha | Bod z plánu | Rozpracovanost |
| --- | --- | --- |
| VČ | Analýza a UX/UI (KT45) | Hotovo |
| MP | Analýza a UX/UI (KT45) | Hotovo |
| DS | Analýza a UX/UI (KT45) | Hotovo |
| DS | TN rev02 návrh | Hotovo jako podklad |
| DS | FE prototyp na `ft/prototype` | Hotovo jako UX náhled · ne produkční dodávka · poslední 18. 11. |
| BL | FE shell z prototypu (DS) | Hotovo jako podklad · BL dodává produkční FE |

## Probíhá (produkční)

| Dráha | Co | Poznámka |
| --- | --- | --- |
| BL | Stránka Časy / reporty | Menu + hlavička `TimeReports` · `bl-ft/downtime-reasons` · bez tabulek/filtrů/API |
| BL | UI důvodů prostojů | Modal: mock + přidání + inline edit s validací · smazání a BE ještě ne · 23. 11. 14:10 |
| DS | DigiDoc údržba / shell | 24. 11. merge do `ds/basket` (CSP, docs auth, login length, help back, users redirect, logo, deps, Node 26). Top bar office/pracoviště na `ft/timetracking` 23. 11. 13:53. Mimo plán výrobních časů. |

## Plán podle osob

### DS — fullstack · 64 h (60 h vývoj + 4 h bugfix)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| FE prototyp (náhled) | Hotovo jako UX náhled · ne produkční dodávka | — |
| Migrace EF | Nezačato | 4 h |
| CRUD důvodů (BE) | Nezačato | 6 h |
| Start/Stop API | Nezačato | 10 h |
| Převzetí, směny, checklist BE | Nezačato | 8 h |
| Report BE | Nezačato | 8 h |
| Opravy API | Nezačato | 8 h |
| Export data (BE) | Plán začátek KT50 | 4 h · přesun z KT49 kvůli TB |
| Live napojení na API | Nezačato | 2 h |
| Lišta / FE převzetí (produkční) | Nezačato · jen náhled v prototypu | — |
| Bugfix z testů | Plán KT50 | 4 h |
| Mimo plán časů | Probíhá · CSP + docs auth; společný top bar (`ft/timetracking`) | — |

### BL — junior FE · 48 h (38 h vývoj + 10 h testy)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| Report shell (UI) | Probíhá · hlavička stránky; bez obsahu reportů | 8 h |
| UI důvodů | Probíhá · modal + mock + přidání + inline edit; smazání a API chybí | 4 h |
| Reporty — filtry a záložky | Nezačato · jen náhled v prototypu DS | 6 h |
| Detail shell (UI) | Nezačato · jen náhled v prototypu DS | 7 h |
| Produkční FE / stránka Časy | Probíhá · menu + hlavička + modal důvodů | — |
| Napojení reportů / detailu na API | Plán KT49 do 3. 12. dopoledne | 7 h |
| Právě běží — napojení | Plán KT49 do 3. 12. dopoledne | 4 h |
| Export UI — napojení | Plán začátek KT50 | 2 h · se Export BE |
| Testování UC / UI | Plán KT50 | 10 h |

## Milníky

| Milník | Plán | Stav k 25. 11. |
| --- | --- | --- |
| KT45 | Analýza a UX/UI | Hotovo · VČ, MP, DS |
| KT46 | Schválení TN | Probíhá · otevřené otázky u zákazníka |
| KT47–KT49 | Vývoj BE + FE ≈100 h | 3. den KT48 (25. 11.). BL: hlavička + modal důvodů (mock). BE API časů stále nezačato. KT49 efektivně **3,5 dne** (TB). Report BE do **2. 12.**, BL napojení do **3. 12. dopoledne**. |
| KT50 | Interní a zákaznické testy 10–16 h | Plán 7.–13. 12. (+ Export 4+2 h na začátku týdne). DS ne 9. 12. půl dne. |
| KT51 | Nasazení a předání | **Držíme** cíl produkce 14. 12., provoz do 18. 12. |

## Větve

| Repo | Větev | Co tam je |
| --- | --- | --- |
| `kasperdigitaldocapp` | `ft/prototype` | FE náhled výrobních časů (DS) · ne dodávka |
| `kasperdigitaldocapp` | `ft/timetracking` | menu Časy + dřívější stub (bez modalu) |
| `kasperdigitaldocapp` | `bl-ft/downtime-reasons` | TimeReports hlavička + modal důvodů (add/edit mock) · 23. 11. 14:10 |
| `kasperdigitaldocapp` | `ds/basket` | DigiDoc údržba · merge 24. 11. (CSP, docs auth, login, help, logo, deps) · mimo plán časů |
| `kasper.digitaldocumentationbe` | `ft/timetracking` / `ds/basket` | docs auth + deps · **žádný** manufacturing-times kód |

## Kalendářní výjimky

- 17. 11. svátek → KT47 jen 4 dny · už proběhlo.
- **3. 12. půl dne + 4. 12. volno · team building** → KT49 efektivně 3,5 dne (30. 11.–3. 12. dopoledne). Výpadek ≈1,5 MD / osoba.
- 9. 12. DS půl dne mimo → KT50 úkoly ne na 9. 12.

## Přepočet po team buildingu (udržení 14. 12.)

| Co | Dřív | Po TB |
| --- | --- | --- |
| KT49 kalendář | 5 pracovních dní | **3,5 dne** práce |
| DS v KT49 | 20 h (report 6 + opravy 8 + export 4 + FE 2) | **16 h** (report 6 + opravy 8 + FE 2); export 4 h → KT50 |
| BL v KT49 | 13 h (napojení 7 + Právě běží 4 + export UI 2) | **11 h** do 3. 12. dopoledne; export UI 2 h → KT50 |
| KT50 DS | 8 h | **12 h** (export 4 + FE 2 + Live 2 + bugfix 4) · 7./8./10./11. 12. |
| KT50 BL | 10 h testy | **12 h** (export UI 2 na začátku + 10 h testy) |
| Nasazení | 14. 12. | **beze změny 14. 12.** |

Podmínka: zbývající KT48 (do 28. 11.) maximálně na BE Start/Stop a začátek reportu, ať KT49 stihne kritickou cestu.

## Handoffy (zbývá)

1. Migrace + model BE
2. CRUD důvodů BE → napojení UI důvodů (smazání + persistence; edit už je lokálně)
3. Start/Pauza/Stop API → produkční lišta
4. Report + opravy + export API → produkční reporty/detail (BL)
5. Live API → Právě běží

## Rizika

- TN bez všech zákaznických rozhodnutí.
- Prototyp vytváří dojem hotového FE — produkční FE/BE ještě chybí.
- DS kapacita i do DigiDoc údržby mimo plán časů.

## Osa

25. 11. jste tady (3. den KT48). Prototyp ≠ hotová dodávka. BL: hlavička reportů + modal důvodů (mock + přidání + inline edit) · bez změny od 23. 11. 14:10. BE API časů nezačato. DS 24. 11. DigiDoc údržba do `ds/basket` (mimo plán časů). TB 3.–4. 12. · termín 14. 12. držíme.
