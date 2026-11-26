# DigiDoc-Kasper — plán a stav k 26. 11. 2026 (ráno)

DigiDoc 2.0 — výrobní časy. Chronologický plán pro DS a BL. Vývoj ≈100 h, testy 14 h (BL 10 + DS bugfix 4). Výjimky: svátek 17. 11.; team building 3. 12. půl + 4. 12. volno (**jen BL**; DS pracuje); DS půl dne mimo 9. 12.

**Upozornění — termín 14. 12. je ohrožený.** Produkční BE (migrace, CRUD, Start/Stop) je stále **nezačaté**. DS večer 25. 11. dál DigiDoc údržba + prototyp (≠ dodávka). Zbývá **dnes + zítra** KT48 (26.–27. 11.). Handoff Report BE do **2. 12.** je na kritické hraně.

Zdroj: GitLab FE + BE (stav k **26. 11. ráno**).

**Nové od 25. 11.:**
- BL — produkční FE časů **beze změny** (hlavička + modal důvodů).
- DS — prototyp: checklist (skrýt hotové, check-all, upozornění bez času) · **≠ dodávka**.
- DS — produkční FE: jen drobnosti top baru · **ne reporty časů**.
- DS — DigiDoc údržba přes noc (přístupnost, auth, hub, logout, upload) · **mimo plán časů**.
- BE výrobních časů: **stále žádný kód**.

**Pravidlo:** prototyp ≠ hotová dodávka.

## Hotovo (dodávka / podklad)

| Dráha | Bod | Stav |
| --- | --- | --- |
| VČ / MP / DS | Analýza a UX/UI (KT45) | Hotovo |
| DS / zákazník | Schválení TN (KT46) | Hotovo · návrh schválen |
| DS | TN rev02 návrh | Hotovo jako podklad |
| DS | FE prototyp | Hotovo jako UX náhled · **ne dodávka** · update 25. 11. (checklist) |
| BL | FE shell z prototypu | Hotovo jako podklad |

## Probíhá (produkční)

| Dráha | Co | Poznámka |
| --- | --- | --- |
| BL | Stránka Časy / reporty | Hlavička + modal důvodů (mock, add, inline edit) · beze změny od 25. 11. |
| DS | DigiDoc údržba | 25. 11. večer / noc · mimo plán časů |
| DS | Prototyp (mimo dodávku) | 25. 11. večer checklist UX |

## Posun nezačatých (25. 11. · drží se)

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
| BL filtry + detail shell · 13 h | KT48 | **KT48 zbývá / přesah KT49 ráno** | Dnes + zítra · mock bez BE možné |
| BL napojení + Právě běží · 11 h | KT49 | **KT49 do 3. 12. dopoledne** | Závisí na Report BE · **ohroženo** |

## Plán podle osob (po posunu)

### DS — 64 h (60 vývoj + 4 bugfix)

| Plán | Stav | Kde teď |
| --- | --- | --- |
| FE prototyp | UX hotovo · ne dodávka · 25. 11. checklist | prototyp |
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
| Report shell + UI důvodů | Probíhá (hlavička + modal) | beze změny od 25. 11. |
| Filtry a záložky · 6 h | Nezačato | KT48 zbývá / přesah KT49 |
| Detail shell · 7 h | Nezačato | KT48 zbývá / přesah KT49 |
| Napojení reportů/detailu · 7 h | Plán | KT49 do 3. 12. dopoledne · závisí na BE |
| Právě běží · 4 h | Nezačato | KT49 do 3. 12. dopoledne |
| Export UI · 2 h | Plán | začátek KT50 (po TB) |
| Testování UC/UI · 10 h | Plán | KT50 |

## Milníky

| Milník | Závazek | Stav k 26. 11. ráno |
| --- | --- | --- |
| KT45 | Analýza a UX/UI | Hotovo |
| KT46 | Schválení TN | Hotovo · návrh schválen |
| KT47–KT49 | Vývoj ≈100 h | **Propad:** BE API časů nezačato. Zbývá 26.–27. 11. KT48. DS přes noc údržba DigiDocu + prototyp ≠ dodávka. |
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

- **Termín 14. 12. ohrožen** — produkční BE stále na nule; DS kapacita šla do prototypu a DigiDoc údržby (včetně noci 25./26. 11.).
- Report BE do 2. 12. na kritické hraně → skluz zkrátí testy KT50.
- Prototyp (včetně 25. 11.) vytváří dojem hotového FE.

## Osa

26. 11. ráno jste tady (4. den KT48). BL beze změny od 25. 11. BE výrobních časů bez kódu. DS přes noc DigiDoc údržba + večer prototyp. **14. 12. ohroženo**, pokud BE nezačne hned.
