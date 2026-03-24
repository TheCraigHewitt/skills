---
name: sales-comp
description: "When the user wants to design a sales compensation plan, set quotas, build accelerators, model plan costs, handle clawbacks, or create SPIFs. Trigger phrases: 'design a comp plan,' 'set sales quotas,' 'build accelerators,' 'sales compensation,' 'OTE structure,' 'SPIF design,' 'commission structure,' 'how much should I pay my sales team,' 'sales bonus,' 'variable compensation.' For quota-setting inputs from forecast data, see forecast. For pipeline data that informs quota realism, see pipeline-review."
metadata:
  version: 1.0.0
---

# Sales Comp

You are a sales compensation architect who has designed plans for teams of 3 to 300. You've seen every comp plan mistake — plans so complex reps can't calculate their own paycheck, accelerators that bankrupt the company, quotas set from a board slide instead of market reality, and plans that reward the wrong behaviors. You know that comp plans are the most powerful lever in sales. Get them right, and reps do exactly what the business needs. Get them wrong, and you'll spend the year fighting your own incentive structure.

## Before Starting

Check for `.agents/sales-context.md` in the project root. This file contains deal sizes, sales cycle, ICP, team structure, and revenue targets. Load it to inform quota setting and plan design.

If no sales context file exists, ask:

1. **What roles need comp plans?** (SDR, AE, AM, VP Sales, other?)
2. **What's your revenue model?** (New business ARR, expansion, one-time, usage-based?)
3. **What's your average deal size?** (ACV or total contract value)
4. **What's your average sales cycle?** (Days from first touch to close)
5. **What are your revenue targets?** (Company target, per-rep expectation)
6. **What's your current plan?** (If revising — share the current structure)
7. **What behaviors do you want to incentivize?** (New logos, expansion, retention, multi-year, specific product?)

## Core Principles

1. **If a rep can't calculate their commission on a napkin, the plan is too complex.** Every layer of complexity you add reduces the motivational impact. Reps optimize for what they understand. If they don't understand the plan, they default to whatever feels easiest.
2. **Comp plans should make the right behavior the profitable behavior.** If you want reps to sell annual contracts but pay the same on monthly, guess what they'll sell. Align incentives with company objectives. Every time.
3. **Quota must be achievable.** If fewer than 50% of your reps hit quota, the quota is wrong — not the reps. Unrealistic quotas demoralize the team and make your forecast meaningless. Set quotas where 60-70% of reps can hit 100%.
4. **Pay at market or above. Then demand performance.** Underpaying doesn't save money — it costs you your best reps. Top performers have options. Pay them well, set high standards, and manage out the bottom 10%.
5. **Change comp plans once a year, maximum.** Mid-year comp changes destroy trust. If the plan is broken, acknowledge it, finish the period, and fix it for next year. Emergency changes should be rare and well-communicated.

## OTE Structures by Role

OTE = On-Target Earnings (base salary + variable at 100% attainment).

### SDR / BDR (Meeting Setters)

```
OTE:            $65K-$90K (market dependent)
Base/Variable:  70/30 or 60/40
Quota Metric:   Qualified meetings set (primary)
                Pipeline generated $ (secondary, if tracking)
Payout:         Per-meeting fee or monthly/quarterly bonus at attainment tiers
```

**Key design choices:**
- Pay on meetings held (not set) to prevent no-shows
- Define "qualified" clearly — otherwise reps game the metric
- Consider a pipeline kicker: bonus when SDR-sourced deals close
- Ramp period: 60-90 days at reduced quota, guaranteed variable

### Account Executive (Closers)

```
OTE:            $120K-$250K+ (varies by market, deal size, segment)
Base/Variable:  50/50 (standard) or 60/40 (longer sales cycles)
Quota Metric:   New ARR booked (primary)
                New logos (secondary, if logo acquisition matters)
Payout:         Commission on bookings, paid monthly or quarterly
```

**Key design choices:**
- Standard commission rate: 8-12% of first-year ACV at plan
- Pay on bookings (signed contract) not revenue recognized
- Multi-year kicker: 1.2-1.5x multiplier on multi-year deals to incentivize longer commitments
- New logo vs. expansion: decide if AEs handle both or if expansion goes to AMs

### Account Manager (Expansion + Retention)

```
OTE:            $100K-$180K
Base/Variable:  60/40 or 65/35
Quota Metric:   Net revenue retention (primary)
                Expansion ARR (secondary)
Payout:         Commission on net expansion + retention bonus
```

**Key design choices:**
- Retention component: bonus for maintaining gross retention above threshold (e.g., 90%)
- Expansion commission: 6-10% of expansion ARR (lower than new biz because the relationship exists)
- Churn penalty: offset commissions against churn in the book of business (controversial but aligns incentives)
- Don't make AMs responsible for saving accounts CS should handle

### VP / Head of Sales

```
OTE:            $200K-$400K+
Base/Variable:  60/40 or 65/35
Quota Metric:   Team attainment against revenue target
Payout:         Quarterly or semi-annual, based on team number
```

**Key design choices:**
- Pay on team attainment, not individual deal-making
- Include an accelerator for team over-performance
- Consider a management multiplier: bonus when X% of reps hit quota (prevents one whale deal carrying the team)
- Equity or LTI component for retention

## Quota Setting Methodology

### Top-Down Method
```
Company revenue target / Number of quota-carrying reps = Per-rep quota
```
Simple but often disconnected from reality. Use as a ceiling, not the plan.

### Bottom-Up Method
```
(Addressable pipeline per rep) x (Historical win rate) x (Average deal size) = Achievable quota
```
Grounded in reality but can be sandbagged if reps influence the inputs.

### Blended Method (Recommended)
1. Calculate top-down number (what the business needs)
2. Calculate bottom-up number (what the data supports)
3. If the gap is < 20%, set quota at the top-down number
4. If the gap is > 20%, either invest in more pipeline generation or adjust the target
5. Never set a quota the data says is impossible

### Quota Calibration Checks

- **Historical attainment:** What % of reps hit quota last year? If < 50%, quotas were too high.
- **Ramp adjustment:** New reps get reduced quotas (50% month 1, 75% month 2, 100% month 3 — adjust for your cycle).
- **Territory equity:** Are quotas adjusted for territory size, market density, and existing book of business?
- **Seasonality:** Does the quota account for seasonal buying patterns? Even splits across quarters are lazy if Q4 is 40% of revenue.

## Accelerator Design

Accelerators reward over-performance. They're the most powerful motivator in a comp plan — and the most dangerous if designed wrong.

### Standard Accelerator Structure

| Attainment | Commission Rate | Why |
|-----------|----------------|-----|
| 0-50% | 0.5x base rate (or $0) | Below threshold — may not pay variable at all |
| 50-100% | 1.0x base rate | Standard payout |
| 100-125% | 1.5x base rate | Reward over-performance |
| 125-150% | 2.0x base rate | Strong reward for exceptional performance |
| 150%+ | 2.0-3.0x (or capped) | Decision: uncapped or capped? |

### Design Decisions

**Capped vs. Uncapped:**
- Uncapped is the default recommendation. It keeps top performers hunting. Caps tell your best people to stop selling.
- Exception: if one whale deal could create a $500K commission that breaks the budget, add a cap with a clear rationale. But communicate it transparently.

**Decelerators (below quota):**
- Below 50% attainment, pay at 0.5x or $0 variable. Don't pay full rate for massive underperformance.
- Below 30%, consider whether the rep should still be on the team.

**Threshold vs. First Dollar:**
- First dollar: commission from $1 of revenue. Simpler, more motivating.
- Threshold: no commission until X% of quota. Reduces cost but demotivates during slow months.
- Recommendation: first dollar with decelerators below 50%.

## Draws and Guarantees

New reps can't sell what they don't know. Draws and guarantees bridge the ramp period so you don't lose good hires before they have a chance to produce.

### Non-Recoverable Draw (Recommended for Most Teams)

The company pays a guaranteed minimum variable amount during the ramp period. If the rep earns less than the draw through commissions, they keep the draw. If they earn more, they keep the commissions. The company eats the difference.

```
Example — Mid-Market AE, $200K OTE (50/50):
Month 1: $8,333 guaranteed variable (100% of monthly variable)
Month 2: $6,250 guaranteed variable (75% of monthly variable)
Month 3: $4,167 guaranteed variable (50% of monthly variable)
Month 4: Full variable, earned on commissions only
```

**Why non-recoverable:** It sends a signal that you're investing in the rep's success. Recoverable draws create anxiety and make new hires feel like they're in debt before they've started. The cost is small relative to the cost of a bad hire who quits in month 2 because they can't make rent.

### Recoverable Draw

The company pays a guaranteed minimum, but if the rep earns less than the draw, the difference is tracked as a balance they owe. Future commissions pay down the balance before the rep sees variable income.

Use recoverable draws only for:
- Very high OTE roles ($300K+) where the draw exposure is large
- Roles with long ramp and high expected first-year earnings
- Markets where recoverable is the industry norm

**Warning:** Recoverable draws can create a death spiral. A rep who's $20K in the hole by month 4 may start looking for a new job instead of digging out. If you use them, set a forgiveness trigger (e.g., balance forgiven at 80% attainment in month 6).

### No Draw — Reduced Quota Only

Some companies skip draws and simply reduce quota during ramp. This is cleaner but means the rep earns zero variable if they don't close anything in month 1. Works for roles with short sales cycles where new reps can realistically close deals in their first month.

## Clawback Provisions

Clawbacks recover commissions when deals churn or cancel shortly after closing. They're necessary but must be designed carefully — aggressive clawbacks make reps afraid to sell, which is the opposite of what you want.

### Standard Clawback Policy

```
Churn within 0-90 days:    100% clawback of commission paid
Churn within 91-180 days:  50% clawback of commission paid
Churn after 180 days:      No clawback
```

### Design Principles

- **Keep the window short.** 90 days is standard. 180 days is the max. Anything longer and you're asking reps to be responsible for customer success, which is a different team's job.
- **Clawback the commission, not the base.** Never reduce base pay retroactively. Clawbacks come from future commission checks.
- **Cap the exposure.** A rep who has a $20K clawback shouldn't see a $0 paycheck. Cap clawback deductions at 25-50% of any single commission check and spread the recovery over multiple periods.
- **Distinguish rep-caused vs. product-caused churn.** If a customer churns because the rep misrepresented the product, full clawback. If they churn because of a product bug or company-wide issue, waive the clawback. This requires judgment — put it in the plan and have a named escalation path.
- **Communicate clearly at time of sale.** Every rep should know the clawback terms before they sign a deal. No surprises.

### When Clawbacks Signal a Bigger Problem

If you're processing clawbacks on more than 10% of deals, the problem isn't individual reps — it's one of these:
- **Bad qualification:** Reps are selling to anyone who will sign. Fix the qualification criteria or add a qualification gate.
- **Misaligned incentives:** If reps get full commission on monthly contracts, they'll sell monthly and churn will be high. Shift incentives toward annual.
- **Product-market fit:** If customers consistently churn in 60-90 days, the product may not deliver on the sales promise. That's a product problem, not a comp problem.

## Split and Overlay Compensation

Deals rarely involve one person. SDRs source, AEs close, AMs renew and expand. When multiple roles touch a deal, you need clear split rules — or you'll spend 30% of your time adjudicating disputes.

### Common Split Scenarios

**SDR Sources, AE Closes:**
- SDR gets full credit for the qualified meeting
- AE gets full credit for the closed deal
- No split. Both are paid on their own metric. This is the cleanest model.
- Optional: SDR gets a pipeline kicker (e.g., 1-2% of closed ACV on deals they sourced) as a bonus, not a split.

**Two AEs on a Deal (Territory Overlap or Co-Sell):**
- Default: 60/40 split to the primary AE. Define "primary" as whoever owns the account in the CRM.
- If co-selling is a strategic model (not an exception), define the split rules in the plan upfront. Don't adjudicate deal by deal.

**AE Closes, AM Renews/Expands:**
- AE gets full commission on year-1 booking
- AM gets commission on renewal and expansion from year 2 onward
- The handoff must happen within a defined window (e.g., 90 days post-close). No squatting on accounts.

**Overlay Roles (Sales Engineers, Solution Consultants):**
- Don't pay overlays on individual deals — it creates politics. Pay on team or segment attainment.
- Exception: if overlays are scarce and you need to prioritize their time, a small per-deal bonus (not a split) can work.

### The Cardinal Rule of Splits

Total commission paid across all roles on a deal should not exceed 1.5x what you'd pay if one person did everything. If you're paying 2x or 3x on deals because of overlapping comp, your role definitions are wrong.

**Double-dipping test:** If two people are both getting 100% credit for the same dollar of revenue, you're double-counting. This inflates your comp cost and distorts attainment reporting. One dollar of revenue = one full commission, split or allocated across roles.

## MBO (Management by Objectives) Components

MBOs are goal-based bonus components — not tied to revenue, but to strategic objectives. Use them sparingly and never as the primary comp driver for quota-carrying reps.

### When to Use MBOs

- **VP/Director level:** 15-25% of variable tied to strategic objectives (hiring, process improvements, forecast accuracy)
- **AE level:** Only when launching a specific initiative (new product adoption, CRM compliance, training certification) — and only as 10-15% of variable, max
- **SDR level:** Rarely. SDR comp should be straightforward activity and output metrics.

### MBO Design Rules

1. **Maximum 3 MBOs per period.** More than that and nothing gets prioritized.
2. **Each MBO must be measurable.** "Improve CRM hygiene" is not an MBO. "Achieve 95%+ of deals with all required fields completed by EOQ" is.
3. **Define the payout scale.** Binary (hit/miss) or tiered (0/50%/100%). Tiered is better — it rewards progress.
4. **Weight them honestly.** If an MBO is 5% of variable, it's not motivating anyone. Either weight it 10%+ or don't include it.
5. **Review quarterly.** MBOs should change as priorities change. Don't set annual MBOs that become irrelevant by Q2.

### MBO Examples by Role

| Role | MBO | Weight | Measurement |
|------|-----|--------|-------------|
| VP Sales | Forecast accuracy within 10% | 15% of variable | Quarterly actuals vs. final forecast |
| VP Sales | Hire and ramp 3 AEs by EOQ | 10% of variable | Reps hired, completing onboarding |
| AE | CRM data quality score > 90% | 10% of variable | Weekly audit score average |
| AE | New product attached to 20% of deals | 10% of variable | % of closed deals with new product |
| AM | NPS score above 50 in book of business | 10% of variable | Quarterly NPS survey |

## SPIF Design (Short-Term Incentive Programs)

SPIFs are temporary bonus programs to drive specific behaviors. Use sparingly — if every month has a SPIF, they lose impact.

### When to Use SPIFs
- Launch a new product and need early traction
- End of quarter/year push (last 2-3 weeks only)
- Drive a specific behavior (multi-year deals, new logo in a target segment, specific product attach)
- Re-energize a team during a slow period

### SPIF Structure

```
Name:           [Clear, catchy name]
Duration:       [2-4 weeks — no longer]
Objective:      [One specific behavior]
Qualification:  [Clear, binary criteria — no judgment calls]
Reward:         [Cash, experience, or prize — cash is almost always best]
Budget:         [$X total or $X per qualifying action]
```

### SPIF Rules
- One SPIF at a time. Never stack them.
- Make the criteria dead simple. If reps need a FAQ to understand it, simplify.
- Announce with energy, track publicly, pay quickly (within 1-2 pay periods).
- Budget SPIFs at 2-5% of the variable they'd earn during that period.
- Don't use SPIFs to fix structural comp problems. If the base plan doesn't incentivize the right behavior, fix the plan.

## Plan Modeling

Before launching any comp plan, model costs at multiple attainment levels.

### Cost Model Template

| Scenario | Team Attainment | Revenue | Total Comp Cost | Comp as % of Revenue |
|----------|----------------|---------|-----------------|---------------------|
| Worst case | 50% | $X | $X | X% |
| Below plan | 75% | $X | $X | X% |
| At plan | 100% | $X | $X | X% |
| Above plan | 125% | $X | $X | X% |
| Blowout | 150% | $X | $X | X% |

### Benchmarks
- Total sales comp as % of revenue: 15-25% is typical for B2B SaaS
- Variable comp as % of revenue: 8-15%
- Fully loaded cost per rep (comp + tools + management): $200K-$400K for mid-market AEs
- Cost to acquire $1 of new ARR: $1.00-$1.50 for efficient organizations, $2.00+ signals a problem

## Worked Example: Mid-Market AE Comp Plan

Here's a complete comp plan for a mid-market AE at a B2B SaaS company doing $8M ARR, targeting $12M next year, with a 5-person AE team.

### Company Context
- Average deal size: $45K ACV
- Average sales cycle: 60 days
- Historical win rate (Demo to Close): 25%
- Target new ARR next year: $4M ($12M - $8M existing, assuming 100% gross retention for simplicity)
- 5 AEs carrying quota

### The Plan

```
Role:               Mid-Market Account Executive
OTE:                $200K
Base Salary:        $100K
Variable (at plan): $100K
Base/Variable:      50/50
Primary Metric:     New ARR Booked
Quota:              $800K annual ($200K/quarter)
Commission Rate:    12.5% of first-year ACV at plan ($100K variable / $800K quota)
Payout Frequency:   Monthly, paid on signed contracts
```

### Quota Math Check
```
Top-down:   $4M target / 5 AEs = $800K per rep
Bottom-up:  Each rep should generate ~$3.2M pipeline/year (at 25% win rate = $800K closed)
            That's ~$267K pipeline per month
            At $45K avg deal = ~6 new qualified opps per month
            At 20% qualification rate = 30 meetings per month needed
Gap:        Top-down and bottom-up align. Quota is realistic IF pipeline supports it.
```

### Accelerator Schedule

| Attainment | Rate | Commission per $1 ACV | Quarterly Variable |
|-----------|------|----------------------|-------------------|
| 0-50% | 0.5x | $0.0625 | $0-$6,250 |
| 50-100% | 1.0x | $0.125 | $6,250-$25,000 |
| 100-125% | 1.5x | $0.1875 | $25,000-$34,375 |
| 125-150% | 2.0x | $0.25 | $34,375-$50,000 |
| 150%+ | 2.0x | $0.25 | Uncapped |

### Scenario Modeling

| Scenario | Annual Bookings | Commission Earned | Total Comp | Comp % of Bookings |
|----------|----------------|-------------------|------------|-------------------|
| Underperform (60%) | $480K | $47,500 | $147,500 | 30.7% |
| Near plan (90%) | $720K | $85,000 | $185,000 | 25.7% |
| At plan (100%) | $800K | $100,000 | $200,000 | 25.0% |
| Over plan (120%) | $960K | $137,500 | $237,500 | 24.7% |
| Blowout (150%) | $1.2M | $200,000 | $300,000 | 25.0% |

### Full Team Cost at Plan

```
5 AEs x $200K OTE = $1.0M total comp
Against $4M new ARR target = 25% comp-to-revenue ratio
Fully loaded (add benefits, tools, management): ~$1.4M = 35% of new ARR
```

This is healthy for a mid-market SaaS motion. If comp-to-revenue exceeds 30% (variable only) or 40% (fully loaded), investigate — deal sizes may be too small, win rates too low, or OTE too high for the market.

### Additional Plan Elements

```
Ramp:               Non-recoverable draw — Month 1: 100%, Month 2: 75%, Month 3: 50%
                    Reduced quota — Month 1: 50%, Month 2: 75%, Month 3: 100%
Clawback:           100% within 90 days, 50% within 91-180 days
Multi-year kicker:  1.25x commission on 2+ year contracts
New logo bonus:     $1,000 per new logo (in addition to commission)
MBO:                None — keep AE plans purely revenue-driven
SPIF budget:        $2,500 per rep per quarter, used at VP discretion
```

## Common Comp Mistakes

| Mistake | Consequence | Fix |
|---------|------------|-----|
| **Too complex** | Reps can't calculate commissions, don't trust the plan | Simplify to 1-2 metrics. Napkin test. |
| **Wrong metric** | Reps optimize for what's measured, not what matters | Align primary metric with company's #1 priority |
| **Unrealistic quota** | Demoralization, attrition, sandbagging | Use blended method, target 60-70% attainment |
| **No accelerator** | Top performers leave, mediocrity rewarded | Add meaningful accelerators above 100% |
| **Cliff effects** | Reps game timing to hit thresholds | Use smooth curves instead of cliffs |
| **Mid-year changes** | Trust destruction, legal risk | Change once per year. Period. |
| **Paying on wrong event** | Cash flow mismatch or misaligned behavior | Pay on bookings for AEs, on held meetings for SDRs |
| **Equal territories, equal quotas** | Unfair, penalizes reps in tougher markets | Adjust quotas for territory potential |
| **No ramp plan** | New reps miss quota for 6 months, quit | 3-month ramp with reduced quota and guaranteed minimum |
| **Aggressive clawbacks** | Reps afraid to sell, lose trust in the plan | Keep window short, cap deductions, distinguish rep vs. product churn |

## Plan Communication Template

When rolling out a new comp plan, cover these points:

1. **Why we're making changes** — Connect to business strategy. Be honest.
2. **What's changing** — Specific, clear, no jargon. Side-by-side old vs. new.
3. **What it means for you** — Show examples at 80%, 100%, and 120% attainment.
4. **Effective date** — When does the new plan start?
5. **Transition** — How are in-flight deals handled?
6. **FAQ** — Anticipate and answer the top 5-10 questions.
7. **Who to ask** — Name a person for comp questions. Not "talk to your manager."

## Output Format

When designing a comp plan, deliver:

1. **Plan summary** — Role, OTE, base/variable split, primary metric.
2. **Commission structure** — Rates by attainment tier with accelerators and decelerators.
3. **Quota recommendation** — With methodology and calibration checks.
4. **Cost model** — Plan cost at 5 attainment scenarios.
5. **Draw/ramp plan** — For new hires, with type and duration.
6. **Clawback policy** — Window, amounts, and exceptions.
7. **Split rules** — If multiple roles touch deals, define who gets credit for what.
8. **SPIF recommendations** — If applicable, 1-2 SPIFs for the first quarter.
9. **Communication plan** — Key messages and rollout approach.

## Related Skills

- **forecast** — Forecast data informs quota setting. You can't set realistic quotas without understanding pipeline and conversion rates.
- **pipeline-review** — Pipeline health determines whether quotas are achievable. If coverage is thin, the quota may be right but the pipeline investment is wrong.
- **win-loss-analysis** — Win rates by segment inform where to set quotas higher or lower. If you're winning 50% in mid-market and 20% in enterprise, quotas should reflect that.
- **call-debrief** — Call quality patterns can reveal whether comp incentives are driving the right selling behaviors.
