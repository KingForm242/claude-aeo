---
name: aeo
description: "Answer Engine Optimization for any website: get your brand cited by ChatGPT, Perplexity, Claude, and Google AI Overviews. Client-ready AI visibility audits with dollar figures, citation testing, AEO content optimization, JSON-LD schema, E-E-A-T scoring, keyword AI-risk classification, competitor gap analysis, internal linking, content briefs, GBP posts. Triggers on: AEO, AI visibility, cited by ChatGPT, AI Overviews, answer engine, LLM SEO, GEO, citation, AI search, schema, E-E-A-T, audit."
user-invocable: true
argument-hint: "[command] [input]"
license: MIT
metadata:
  author: coreyfox
  version: "1.0.0"
  category: aeo
---

# AEO: Answer Engine Optimization Skill

**Invocation:** `/aeo $1 $2` where `$1` is the command and `$2` is the input, or just describe the task and the right sub-skill loads automatically.

The job of this plugin is different from a rank tracker or a technical crawler: it makes brands the answer AI engines give at the moment of decision, and it produces consultant-grade deliverables, not just findings.

## Quick Reference

| Command | What it does |
|---------|-------------|
| `/aeo audit paste the 4 input blocks: CLIENT / TRAFFIC DATA / QUERY TEST / TECHNICAL OBSERVATIONS` | Generate a client-ready AI Visibility Audit report from collected data: traffic value deltas, 5-query citation tests across ChatGPT/Perplexity/AI Overviews, and technical observations |
| `/aeo site url or pasted HTML/crawl data` | Full technical and on-page SEO audit: canonicals, robots, redirects, title/meta/heading hierarchy, content quality, Core Web Vitals signals, mobile |
| `/aeo optimize target query + pasted content` | Restructure existing content to get cited in AI answers from ChatGPT, Perplexity, Claude, and Google AI Overviews: direct answer paragraph, structure conversion, citation readiness, entity optimization |
| `/aeo schema url or pasted page content` | Generate valid JSON-LD structured data for any page type: Article, Product, FAQ, HowTo, LocalBusiness, Organization, BreadcrumbList, VideoObject, nested via @graph |
| `/aeo eeat pasted content` | Score content 1-10 against Google E-E-A-T rater guidelines (Experience, Expertise, Authoritativeness, Trustworthiness) with a PUBLISH/REVISE/REWRITE verdict, top weaknesses and strengths |
| `/aeo intent keyword list, one per line` | Classify keywords by search intent, buyer journey stage, and AI answer risk (will an LLM answer this without a click) |
| `/aeo gap your content + competitor content` | Entity-level comparison of your content vs a competitor page ranking above you: missing entities, data points, FAQ coverage, depth and structure deltas, with impact-ranked gap report |
| `/aeo gbp business name, location, service/topic` | Generate three Google Business Profile post variations (Update, Offer, Event/Seasonal) under 1,500 characters with geo-modifiers and CTA buttons |
| `/aeo links list of page titles, URLs, target keywords` | Map hub-and-spoke internal linking architecture: pillar identification, cluster assignment, cross-cluster limits, exact anchor text, orphan page rescue, top 5 priority links |
| `/aeo brief target keyword + audience` | Writer-ready SEO content brief covering intent, H1-H3 outline, keyword placement rules, PAA questions with 40-60 word AEO answers, competitor benchmark, AEO formatting notes, and meta tags |
| `/aeo check target query + pasted content` | Score whether an LLM would cite this page for a target query: answer positioning, structural clarity, factual density, entity coverage, freshness |

## Orchestration Logic

Route by intent, not keyword match:
1. Client deliverable or "audit report" language -> aeo-visibility-audit (collect the 4 input blocks first; never invent data)
2. "Why don't we show up in ChatGPT/AI Overviews" -> aeo-visibility-check on their money page, then aeo-content-optimizer
3. Site-wide or technical language -> aeo-site-audit, then aeo-schema for the highest-value page found
4. Keyword lists -> aeo-keyword-intent
5. "Competitor outranks us" -> aeo-competitor-gap

## Chains

**New client onboarding:** site -> check -> gap -> intent -> brief (x5)
**Content refresh:** eeat -> optimize -> schema -> check
**Client audit deliverable:** collect data -> audit -> eeat (QA pass on the report itself) -> send within 24 hours
**Weekly local:** gbp -> links -> schema

## Rules that hold across every sub-skill

- Never invent data. Missing input = "insufficient data", stated plainly.
- Every recommendation must be specific enough to hand to any implementer.
- Revenue framing beats ranking framing: state dollar impact when traffic value data exists.
- No em dashes, no hype words, no filler in any client-facing output.
