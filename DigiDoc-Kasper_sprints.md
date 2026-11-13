# DigiDoc-Kasper — plán a stav k 11. 11. 2026

DigiDoc 2.0 — výrobní časy. Chronologický plán pro DS a BL. Vývoj ≈100 h, testy 14 h (BL 10 + DS bugfix 4). Výjimky: svátek 17. 11. a DS půl dne mimo 9. 12. Kapacita: vývoj 98 h + testy 14 h · DS 64 · BL 48.

Pravidlo paralelní práce: BL nejdřív staví UI shell (layout, filtry, mock data). DS nejdřív dodá BE a smluvní API. Napojení na živá data až po handoffu — žádné čekání „až bude hotové celé UC“.

## Hotovo

| Dráha | Bod z plánu | Rozpracovanost |
| --- | --- | --- |
| VČ | Analýza a UX/UI (KT45) | Hotovo |
| MP | Analýza a UX/UI (KT45) | Hotovo |
| DS | Analýza a UX/UI (KT45) | Hotovo |

BL se analýzy a návrhu neúčastnila. Dostává až úkoly a plán vývoje (od KT47).

## Plán podle osob

### DS — fullstack · 64 h (60 h vývoj + 4 h bugfix)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| Migrace EF | Plán KT47 | 4 h |
| CRUD důvodů | Plán KT47 | 6 h |
| Start/Stop — část 1 | Plán KT47 | 6 h |
| Start/Stop — část 2 | Plán KT48 | 4 h |
| Převzetí, směny, checklist | Plán KT48 | 8 h |
| Lišta měření (FE) | Plán KT48 | 6 h |
| Report BE — začátek | Plán KT48 | 2 h |
| Report BE — dokončení | Plán KT49 | 6 h |
| Opravy API | Plán KT49 | 8 h |
| Export data | Plán KT49 | 4 h |
| FE převzetí — část 1 | Plán KT49 | 2 h |
| FE převzetí — část 2 | Plán KT50 | 2 h |
| Live napojení | Plán KT50 | 2 h |
| Bugfix z testů | Plán KT50 | 4 h |

### BL — junior FE · 48 h (38 h vývoj + 10 h testy)

| Plán | Stav | Hodiny |
| --- | --- | --- |
| Report shell (UI) | Plán KT47 | 8 h |
| UI důvodů | Plán KT47 · po CRUD od DS | 4 h |
| Reporty — filtry a záložky | Plán KT48 | 6 h |
| Detail shell (UI) | Plán KT48 | 7 h |
| Úpravy v detailu / napojení | Plán KT49 | 7 h |
| Právě běží | Plán KT49 | 4 h |
| Export UI | Plán KT49 | 2 h |
| Testování UC / UI | Plán KT50 | 10 h |

## Milníky

| Milník | Plán | Stav k 11. 11. |
| --- | --- | --- |
| KT45 | Analýza a UX/UI | Hotovo · VČ, MP, DS |
| KT46 | Schválení TN | Před KT47 |
| KT47–KT49 | Vývoj BE + FE ≈100 h | Nezačato · start 16. 11. |
| KT50 | Interní a zákaznické testy 10–16 h | Plán 7.–13. 12. |
| KT51 | Nasazení a předání | Plán |

## Kalendářní výjimky

- 17. 11. svátek → KT47 jen 4 dny (DS max 16 h).
- 9. 12. DS půl dne mimo → jeho KT50 úkoly dávat na 7., 8., 10. nebo 11. 12., ne na 9. 12.

## Handoffy

1. Migrace + model → BL mezitím report shell
2. CRUD důvodů → UI důvodů (KT47)
3. Start/Pauza/Stop API → lištu dělá DS
4. Převzetí / směny / checklist BE → FE převzetí dělá DS
5. Report agregace + filtry API → napojení reportů a detailu (KT48→49)
6. Opravy záznamů API → úpravy v detailu (KT49)
7. Export data + Live API → export UI + Právě běží · Live (KT50)

## Rizika

- KT46 schválení TN před KT47.
- Svátek 17. 11. + DS 9. 12. půl dne mimo — Live a bugfix nesmí spadnout na 9. 12. odpoledne.
- BL testuje 10 h v KT50; DS současně bugfix 4 h.

## Osa

11. 11. jste tady. Analýza a UX/UI hotové (VČ, MP, DS). BL startuje až s vývojem. Schválení TN (KT46) před startem vývoje. Vývoj začíná 16. 11. (KT47).
