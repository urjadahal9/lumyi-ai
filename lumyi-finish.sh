#!/usr/bin/env bash
# Run from the project root (the folder that contains package.json and src/).
set -e
mkdir -p src/routes src/components/common

############################################
# 1. BRIGHT, FUN THEME
############################################
cat > src/styles.css <<'EOF'
@import "tailwindcss" source(none);
@source "../src";
@import "tw-animate-css";

@custom-variant dark (&:is(.dark *));

/* Lumyi AI: bright, playful design system (light-first). */

@theme inline {
  --font-sans: "IBM Plex Sans", ui-sans-serif, system-ui, sans-serif;
  --font-mono: "IBM Plex Mono", ui-monospace, monospace;
  --font-serif: "Instrument Serif", ui-serif, Georgia, serif;

  --radius-sm: calc(var(--radius) - 4px);
  --radius-md: calc(var(--radius) - 2px);
  --radius-lg: var(--radius);
  --radius-xl: calc(var(--radius) + 4px);
  --radius-2xl: calc(var(--radius) + 8px);
  --color-background: var(--background);
  --color-foreground: var(--foreground);
  --color-card: var(--card);
  --color-card-foreground: var(--card-foreground);
  --color-popover: var(--popover);
  --color-popover-foreground: var(--popover-foreground);
  --color-primary: var(--primary);
  --color-primary-foreground: var(--primary-foreground);
  --color-secondary: var(--secondary);
  --color-secondary-foreground: var(--secondary-foreground);
  --color-muted: var(--muted);
  --color-muted-foreground: var(--muted-foreground);
  --color-accent: var(--accent);
  --color-accent-foreground: var(--accent-foreground);
  --color-destructive: var(--destructive);
  --color-destructive-foreground: var(--destructive-foreground);
  --color-border: var(--border);
  --color-input: var(--input);
  --color-ring: var(--ring);
  --color-ring-offset-background: var(--background);
  --color-chart-1: var(--chart-1);
  --color-chart-2: var(--chart-2);
  --color-chart-3: var(--chart-3);
  --color-chart-4: var(--chart-4);
  --color-chart-5: var(--chart-5);
  --color-sidebar: var(--sidebar);
  --color-sidebar-foreground: var(--sidebar-foreground);
  --color-sidebar-primary: var(--sidebar-primary);
  --color-sidebar-primary-foreground: var(--sidebar-primary-foreground);
  --color-sidebar-accent: var(--sidebar-accent);
  --color-sidebar-accent-foreground: var(--sidebar-accent-foreground);
  --color-sidebar-border: var(--sidebar-border);
  --color-sidebar-ring: var(--sidebar-ring);

  --color-surface: var(--surface);
  --color-surface-raised: var(--surface-raised);
  --color-hairline: var(--hairline);
  --color-signal: var(--signal);
  --color-risk-high: var(--risk-high);
  --color-risk-elevated: var(--risk-elevated);
  --color-risk-moderate: var(--risk-moderate);
  --color-risk-low: var(--risk-low);
  --color-unknown: var(--unknown);
}

:root {
  --radius: 1rem;
  --background: oklch(0.975 0.02 300);
  --foreground: oklch(0.27 0.09 285);
  --surface: oklch(1 0 0);
  --surface-raised: oklch(0.96 0.04 300);
  --card: oklch(1 0 0);
  --card-foreground: oklch(0.27 0.09 285);
  --popover: oklch(1 0 0);
  --popover-foreground: oklch(0.27 0.09 285);
  --primary: oklch(0.56 0.25 293);
  --primary-foreground: oklch(0.99 0.01 300);
  --secondary: oklch(0.93 0.07 200);
  --secondary-foreground: oklch(0.3 0.09 230);
  --muted: oklch(0.95 0.035 300);
  --muted-foreground: oklch(0.46 0.07 285);
  --accent: oklch(0.94 0.1 95);
  --accent-foreground: oklch(0.3 0.09 70);
  --destructive: oklch(0.6 0.24 22);
  --destructive-foreground: oklch(0.99 0.01 20);
  --border: oklch(0.86 0.07 295);
  --hairline: oklch(0.8 0.09 295 / 0.35);
  --input: oklch(0.88 0.06 295);
  --ring: oklch(0.56 0.25 293 / 0.5);
  --signal: oklch(0.6 0.2 250);

  --risk-high: oklch(0.6 0.25 18);
  --risk-elevated: oklch(0.68 0.2 50);
  --risk-moderate: oklch(0.6 0.16 80);
  --risk-low: oklch(0.62 0.17 160);
  --unknown: oklch(0.58 0.17 235);

  --chart-1: oklch(0.56 0.25 293);
  --chart-2: oklch(0.72 0.19 50);
  --chart-3: oklch(0.62 0.2 250);
  --chart-4: oklch(0.7 0.17 160);
  --chart-5: oklch(0.65 0.25 350);

  --sidebar: oklch(0.96 0.05 310);
  --sidebar-foreground: oklch(0.3 0.1 290);
  --sidebar-primary: oklch(0.56 0.25 293);
  --sidebar-primary-foreground: oklch(0.99 0.01 300);
  --sidebar-accent: oklch(0.9 0.11 340);
  --sidebar-accent-foreground: oklch(0.28 0.1 320);
  --sidebar-border: oklch(0.86 0.08 305);
  --sidebar-ring: oklch(0.56 0.25 293 / 0.5);

  --shadow-panel: 0 5px 0 -1px oklch(0.8 0.1 295 / 0.45), 0 14px 28px -16px oklch(0.5 0.2 295 / 0.35);
  --gradient-scan: linear-gradient(180deg, oklch(0.9 0.12 340 / 0.35), transparent 65%);
}

@layer base {
  * {
    border-color: var(--color-border);
  }
  html {
    color-scheme: light;
  }
  body {
    background-color: var(--color-background);
    background-image:
      radial-gradient(circle at 8% 0%, oklch(0.9 0.12 340 / 0.55), transparent 38%),
      radial-gradient(circle at 92% 8%, oklch(0.92 0.1 200 / 0.6), transparent 38%),
      radial-gradient(circle at 70% 100%, oklch(0.94 0.13 95 / 0.65), transparent 42%);
    background-attachment: fixed;
    color: var(--color-foreground);
    font-family: var(--font-sans);
    -webkit-font-smoothing: antialiased;
  }
  ::selection {
    background: oklch(0.85 0.14 340 / 0.5);
  }
}

@utility panel {
  background-color: var(--color-card);
  border: 2px solid var(--color-border);
  border-radius: var(--radius-2xl);
  box-shadow: var(--shadow-panel);
}

@utility label-mono {
  font-family: var(--font-mono);
  font-size: 0.68rem;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: var(--color-muted-foreground);
}

@utility grid-backdrop {
  background-image:
    linear-gradient(var(--hairline) 1px, transparent 1px),
    linear-gradient(90deg, var(--hairline) 1px, transparent 1px);
  background-size: 40px 40px;
  mask-image: radial-gradient(ellipse at 30% 0%, black 20%, transparent 75%);
}

@utility scan-top {
  background-image: var(--gradient-scan);
}

@utility tabular {
  font-variant-numeric: tabular-nums;
}

@utility text-rainbow {
  background-image: linear-gradient(90deg, var(--primary), oklch(0.65 0.25 350), oklch(0.7 0.2 50));
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
}

/* ---------- Map ---------- */
.lumyi-map {
  background: var(--surface-raised);
}
.lumyi-map .leaflet-tile-pane {
  filter: saturate(1.25) hue-rotate(-8deg) brightness(1.02);
}
.lumyi-map .leaflet-control-attribution {
  background: oklch(1 0 0 / 0.85);
  color: var(--muted-foreground);
  font-size: 10px;
}
.lumyi-map .leaflet-control-attribution a {
  color: var(--primary);
}
.lumyi-map .leaflet-bar a {
  background: var(--surface);
  color: var(--foreground);
  border-color: var(--border);
}
.lumyi-map .leaflet-bar a:hover {
  background: var(--accent);
}
.lumyi-map .leaflet-tooltip {
  background: var(--popover);
  color: var(--popover-foreground);
  border: 2px solid var(--border);
  border-radius: 10px;
  font-family: var(--font-sans);
  font-size: 12px;
  box-shadow: var(--shadow-panel);
}
.lumyi-map .leaflet-tooltip::before {
  display: none;
}

.lm-rain { stroke-width: 0; fill-opacity: 0.22; }
.lm-rain-1 { fill: var(--risk-moderate); }
.lm-rain-2 { fill: var(--risk-elevated); }
.lm-rain-3 { fill: var(--risk-high); }
.lm-pop { fill: var(--signal); fill-opacity: 0.16; stroke: var(--signal); stroke-opacity: 0.6; stroke-width: 1.5; }
.lm-road { fill: none; stroke-width: 4; stroke-linecap: round; }
.lm-road-open { stroke: var(--risk-low); stroke-opacity: 0.85; }
.lm-road-partial { stroke: var(--risk-elevated); stroke-opacity: 0.9; stroke-dasharray: 8 6; }
.lm-road-blocked { stroke: var(--risk-high); stroke-opacity: 1; stroke-dasharray: 2 6; }
.lm-road-unknown { stroke: var(--unknown); stroke-opacity: 0.7; stroke-dasharray: 1 5; }

.lm-marker {
  width: 18px;
  height: 18px;
  border-radius: 9999px;
  border: 3px solid #fff;
  box-shadow: 0 0 0 1.5px currentColor, 0 4px 10px -2px currentColor;
  background: currentColor;
  transition: transform 150ms ease;
}
.lm-marker:hover, .lm-marker.is-selected { transform: scale(1.35); }
.lm-marker.is-selected { box-shadow: 0 0 0 3px var(--foreground), 0 4px 14px 0 currentColor; }
.lm-tier-elevated { color: var(--risk-high); }
.lm-tier-moderate { color: var(--risk-elevated); }
.lm-tier-lower { color: var(--risk-low); }
.lm-tier-insufficient { color: var(--unknown); }
.lm-marker.lm-tier-insufficient { background: #fff; border: 3px dashed currentColor; }

.lm-hotspot {
  width: 48px;
  height: 48px;
  border-radius: 9999px;
  border: 2px solid var(--risk-high);
  animation: lm-pulse 2.6s ease-out infinite;
  pointer-events: none;
}
@keyframes lm-pulse {
  0% { transform: scale(0.4); opacity: 0.9; }
  100% { transform: scale(1.6); opacity: 0; }
}
.lm-hospital {
  width: 20px;
  height: 20px;
  display: grid;
  place-items: center;
  border-radius: 6px;
  background: #fff;
  border: 2px solid var(--risk-low);
  color: var(--risk-low);
  font: 700 13px/1 var(--font-mono);
}
.lm-report {
  width: 13px;
  height: 13px;
  transform: rotate(45deg);
  background: var(--chart-5);
  border: 2px solid #fff;
  box-shadow: 0 2px 8px var(--chart-5);
}
.lm-report.is-flagged { background: var(--muted-foreground); box-shadow: none; }

@media (prefers-reduced-motion: reduce) {
  .lm-hotspot { animation: none; opacity: 0.4; }
}
EOF

# Remove the forced dark mode and fix the toaster + headline
sed -i 's/<html lang="en" className="dark">/<html lang="en">/' src/routes/__root.tsx
sed -i 's/<Toaster theme="dark"/<Toaster theme="light"/' src/routes/__root.tsx
sed -i 's|<h1 className="text-4xl font-semibold tracking-tight md:text-5xl">|<h1 className="text-rainbow text-4xl font-bold tracking-tight md:text-5xl">|' src/routes/index.tsx

############################################
# 2. SMALL HELPERS
############################################
cat >> src/lib/data/reportStore.ts <<'EOF'

/** Clears reports saved in this browser (seed reports stay). */
export function resetReports() {
  load();
  userReports = [];
  flagged = new Set();
  persist();
}
EOF

cat > src/components/common/RangeToggle.tsx <<'EOF'
import { DATE_RANGES } from "@/lib/data/constants";
import { useAppState } from "@/lib/app-state";
import { cn } from "@/lib/utils";

export function RangeToggle() {
  const { range, setRange } = useAppState();
  return (
    <div className="inline-flex rounded-full border-2 border-border bg-card p-0.5" role="group" aria-label="Date range">
      {DATE_RANGES.map((d) => (
        <button
          key={d}
          onClick={() => setRange(d)}
          className={cn(
            "rounded-full px-3 py-1 text-xs font-medium transition-colors",
            range === d ? "bg-primary text-primary-foreground" : "text-muted-foreground hover:text-foreground",
          )}
        >
          {d} days
        </button>
      ))}
    </div>
  );
}
EOF

############################################
# 3. PAGES
############################################
cat > src/routes/map.tsx <<'EOF'
import { createFileRoute, useNavigate } from "@tanstack/react-router";
import { useSuspenseQuery } from "@tanstack/react-query";
import { useMemo, useState } from "react";
import { MapView } from "@/components/map/MapView";
import { MapLegend } from "@/components/map/MapLegend";
import { LocationDetailPanel } from "@/components/map/LocationDetailPanel";
import { DEFAULT_LAYERS, LAYERS, type LayerKey } from "@/components/map/layers";
import { SimulatedBadge } from "@/components/common/ui-bits";
import { RangeToggle } from "@/components/common/RangeToggle";
import { datasetQuery } from "@/lib/data/service";
import { useAppState, useAssessments, withinRange } from "@/lib/app-state";
import { useReports } from "@/lib/data/reportStore";
import { PROVINCES } from "@/lib/data/constants";

export const Route = createFileRoute("/map")({
  validateSearch: (s: Record<string, unknown>): { loc?: string | undefined } => ({ loc: typeof s.loc === "string" ? s.loc : undefined }),
  head: () => ({ meta: [{ title: "Crisis Intelligence Map · Lumyi AI" }, { name: "description", content: "Interactive Nepal map of priority tiers, hotspots, roads, hospitals and community reports." }] }),
  component: MapPage,
});

function MapPage() {
  const { loc } = Route.useSearch();
  const navigate = useNavigate({ from: "/map" });
  const { data } = useSuspenseQuery(datasetQuery);
  const assessments = useAssessments();
  const reports = useReports();
  const { region, range } = useAppState();
  const [layers, setLayers] = useState<Record<LayerKey, boolean>>(DEFAULT_LAYERS);

  const inRange = useMemo(() => reports.filter((r) => withinRange(r.observedAt, range)), [reports, range]);
  const selected = assessments.find((a) => a.community.id === loc) ?? null;
  const bounds = region === "all" ? null : (PROVINCES.find((p) => p.id === region)?.bounds ?? null);

  return (
    <div className="flex h-[calc(100vh-3.5rem)] min-h-[560px] flex-col lg:flex-row">
      <aside className="w-full shrink-0 space-y-5 overflow-y-auto border-b-2 border-border bg-card p-4 lg:w-64 lg:border-b-0 lg:border-r-2">
        <div className="space-y-2">
          <SimulatedBadge />
          <RangeToggle />
        </div>
        <div>
          <div className="label-mono mb-2">Layers</div>
          <ul className="space-y-2">
            {LAYERS.map((l) => (
              <li key={l.key}>
                <label className="flex cursor-pointer items-start gap-2.5 text-sm">
                  <input
                    type="checkbox"
                    className="mt-1 h-4 w-4 accent-[var(--primary)]"
                    checked={layers[l.key]}
                    onChange={(e) => setLayers((p) => ({ ...p, [l.key]: e.target.checked }))}
                  />
                  <span>
                    {l.label}
                    <span className="block text-[11px] text-muted-foreground">{l.hint}</span>
                  </span>
                </label>
              </li>
            ))}
          </ul>
        </div>
        <div>
          <div className="label-mono mb-2">Legend</div>
          <MapLegend />
        </div>
      </aside>
      <div className="relative min-h-[420px] flex-1">
        <MapView
          assessments={assessments}
          reports={inRange}
          hospitals={data.hospitals}
          roads={data.roads}
          layers={layers}
          selectedId={loc ?? null}
          onSelect={(id) => navigate({ search: { loc: id } })}
          focusBounds={bounds}
        />
      </div>
      {selected && (
        <div className="w-full border-t-2 border-border bg-card lg:w-[380px] lg:border-l-2 lg:border-t-0">
          <LocationDetailPanel a={selected} reports={inRange.filter((r) => r.communityId === selected.community.id)} onClose={() => navigate({ search: { loc: undefined } })} />
        </div>
      )}
    </div>
  );
}
EOF

cat > src/routes/vulnerability.tsx <<'EOF'
import { createFileRoute, Link } from "@tanstack/react-router";
import { useState } from "react";
import { PageContainer } from "@/components/layout/AppShell";
import { EmptyState, PageHeader, Panel, ScoreBar, SimulatedBadge, TierBadge, tierTone } from "@/components/common/ui-bits";
import { ContributionChart, DimensionRadar, ExposureChart } from "@/components/charts/Charts";
import { useAssessments } from "@/lib/app-state";
import { cn } from "@/lib/utils";

export const Route = createFileRoute("/vulnerability")({
  head: () => ({ meta: [{ title: "Vulnerability Analysis · Lumyi AI" }, { name: "description", content: "Population exposure, access and data gaps for each assessed community." }] }),
  component: Vulnerability,
});

function Vulnerability() {
  const assessments = useAssessments();
  const [sel, setSel] = useState<string | null>(null);
  const current = assessments.find((a) => a.community.id === sel) ?? assessments[0];

  return (
    <PageContainer>
      <PageHeader eyebrow="Vulnerability analysis" title="Who is exposed, and who is hard to reach?" description="Population exposure, road and hospital access, and data gaps side by side. Select a row or bar to inspect a community." actions={<SimulatedBadge />} />
      {!current ? (
        <EmptyState title="No communities in this region" description="The pilot dataset has no communities here yet. Pick another province or All Nepal." />
      ) : (
        <div className="space-y-6">
          <div className="grid gap-6 xl:grid-cols-[1.4fr_1fr]">
            <Panel eyebrow="Exposure" title="Estimated population by community">
              <ExposureChart data={assessments} onSelect={setSel} />
            </Panel>
            <Panel eyebrow={current.community.district} title={`${current.community.name}: score balance`} actions={<TierBadge tier={current.tier} />}>
              <DimensionRadar a={current} />
              <ContributionChart factors={current.factors} />
            </Panel>
          </div>
          <Panel eyebrow="All communities" title="Score breakdown" bodyClassName="p-0">
            <div className="overflow-x-auto">
              <table className="w-full min-w-[760px] text-sm">
                <thead>
                  <tr className="border-b-2 border-border text-left">
                    {["Community", "Priority", "Hazard", "Exposure", "Access", "Data gap", "Tier"].map((h) => (
                      <th key={h} className="label-mono px-4 py-3 font-normal">{h}</th>
                    ))}
                  </tr>
                </thead>
                <tbody>
                  {assessments.map((a) => (
                    <tr key={a.community.id} onClick={() => setSel(a.community.id)} className={cn("cursor-pointer border-b border-border hover:bg-accent/60", a.community.id === current.community.id && "bg-accent/70")}>
                      <td className="px-4 py-3">
                        <Link to="/insights" search={{ loc: a.community.id }} className="font-medium text-primary hover:underline" onClick={(e) => e.stopPropagation()}>
                          {a.community.name}
                        </Link>
                        <div className="text-xs text-muted-foreground">{a.community.district}</div>
                      </td>
                      <td className="px-4 py-3 font-mono tabular">{a.priority}</td>
                      <td className="w-32 px-4 py-3"><ScoreBar value={a.hazard} tone="high" showValue={false} /></td>
                      <td className="w-32 px-4 py-3"><ScoreBar value={a.exposure} tone="primary" showValue={false} /></td>
                      <td className="w-32 px-4 py-3"><ScoreBar value={a.inaccessibility} tone="elevated" showValue={false} /></td>
                      <td className="w-32 px-4 py-3"><ScoreBar value={a.dataGap} tone={tierTone("insufficient")} showValue={false} /></td>
                      <td className="px-4 py-3"><TierBadge tier={a.tier} /></td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </Panel>
        </div>
      )}
    </PageContainer>
  );
}
EOF

cat > src/routes/environment.tsx <<'EOF'
import { createFileRoute } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { useState } from "react";
import { PageContainer } from "@/components/layout/AppShell";
import { EmptyState, LoadingState, PageHeader, Panel, SimulatedBadge, Stat } from "@/components/common/ui-bits";
import { RangeToggle } from "@/components/common/RangeToggle";
import { HistoricalComparisonChart, RainfallTrendChart, SurfaceWaterChart, TemperatureChart } from "@/components/charts/Charts";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { environmentQuery } from "@/lib/data/service";
import { HISTORICAL_EVENTS } from "@/lib/data/history";
import { useAppState, useAssessments } from "@/lib/app-state";

export const Route = createFileRoute("/environment")({
  head: () => ({ meta: [{ title: "Environmental Monitoring · Lumyi AI" }, { name: "description", content: "Rainfall anomalies, historical comparisons, temperature and surface-water change." }] }),
  component: Environment,
});

function Environment() {
  const assessments = useAssessments();
  const { range } = useAppState();
  const [id, setId] = useState("");
  const current = assessments.find((a) => a.community.id === id) ?? assessments[0];
  const cid = current?.community.id ?? "";
  const { data: env, isLoading } = useQuery({ ...environmentQuery(cid), enabled: !!cid });

  if (!current) return <PageContainer><EmptyState title="No communities in this region" description="Pick another province or All Nepal." /></PageContainer>;
  const c = current.community;
  const history = [
    ...HISTORICAL_EVENTS.filter((e) => e.districts.includes(c.district) && e.simulatedPeak7dMm !== null).map((e) => ({ name: `${e.name} (${e.year})`, value: e.simulatedPeak7dMm as number, current: false })),
    { name: "Current 7-day total", value: c.rain7dMm, current: true },
  ];

  return (
    <PageContainer>
      <PageHeader
        eyebrow="Environmental monitoring"
        title="Rain, rivers and water on the move"
        description="Simulated rainfall, temperature and surface-water series. Connect GPM, CHIRPS and Sentinel on the Data Sources page to replace them."
        actions={
          <>
            <SimulatedBadge />
            <RangeToggle />
            <Select value={cid} onValueChange={setId}>
              <SelectTrigger className="w-[220px] bg-card" aria-label="Community"><SelectValue /></SelectTrigger>
              <SelectContent>
                {assessments.map((a) => <SelectItem key={a.community.id} value={a.community.id}>{a.community.name}, {a.community.district}</SelectItem>)}
              </SelectContent>
            </Select>
          </>
        }
      />
      <div className="mb-6 grid grid-cols-2 gap-3 lg:grid-cols-4">
        <Stat label="7-day rainfall" value={`${c.rain7dMm} mm`} tone="primary" />
        <Stat label="Vs 20-yr baseline" value={`+${c.rainfallAnomalyPct}%`} tone={c.rainfallAnomalyPct >= 100 ? "high" : "elevated"} />
        <Stat label="River status" value={<span className="capitalize">{c.riverStatus.replace("-", " ")}</span>} tone={c.riverStatus === "unknown" ? "unknown" : "default"} />
        <Stat label="Surface water" value={`${c.surfaceWaterChangePct > 0 ? "+" : ""}${c.surfaceWaterChangePct}%`} sub="vs dry season" />
      </div>
      {isLoading || !env ? (
        <LoadingState />
      ) : (
        <div className="grid gap-6 lg:grid-cols-2">
          <Panel eyebrow={`Last ${range} days`} title="Rainfall vs baseline" className="lg:col-span-2"><RainfallTrendChart data={env.rainfall.slice(-range)} /></Panel>
          <Panel eyebrow="Comparison" title="Against past events in this district"><HistoricalComparisonChart data={history} /></Panel>
          <Panel eyebrow="2011 to 2026" title="Monsoon temperature anomaly"><TemperatureChart data={env.temperature} /></Panel>
          <Panel eyebrow="Weekly" title="Surface-water extent index" className="lg:col-span-2"><SurfaceWaterChart data={env.surfaceWater} /></Panel>
        </div>
      )}
    </PageContainer>
  );
}
EOF

cat > src/routes/reports.tsx <<'EOF'
import { createFileRoute } from "@tanstack/react-router";
import { useSuspenseQuery } from "@tanstack/react-query";
import { useMemo, useState } from "react";
import { PageContainer } from "@/components/layout/AppShell";
import { PageHeader, Panel } from "@/components/common/ui-bits";
import { RangeToggle } from "@/components/common/RangeToggle";
import { ReportForm } from "@/components/reports/ReportForm";
import { ReportList } from "@/components/reports/ReportList";
import { datasetQuery } from "@/lib/data/service";
import { useAppState, withinRange } from "@/lib/app-state";
import { useReports } from "@/lib/data/reportStore";
import type { ReportStatus } from "@/lib/data/types";
import { cn } from "@/lib/utils";

export const Route = createFileRoute("/reports")({
  head: () => ({ meta: [{ title: "Community Reports · Lumyi AI" }, { name: "description", content: "Anonymous ground observations from communities, with flagging for incorrect information." }] }),
  component: Reports,
});

const STATUSES: ("all" | ReportStatus)[] = ["all", "unverified", "corroborated", "flagged"];

function Reports() {
  const { data } = useSuspenseQuery(datasetQuery);
  const { region, range } = useAppState();
  const reports = useReports();
  const [status, setStatus] = useState<"all" | ReportStatus>("all");

  const list = useMemo(() => {
    const ids = new Set(data.communities.filter((c) => region === "all" || c.province === region).map((c) => c.id));
    return reports
      .filter((r) => ids.has(r.communityId) && withinRange(r.observedAt, range) && (status === "all" || r.status === status))
      .sort((a, b) => b.observedAt.localeCompare(a.observedAt));
  }, [reports, data, region, range, status]);

  return (
    <PageContainer>
      <PageHeader eyebrow="Community intelligence" title="What people on the ground are seeing" description="Anonymous observations. Everything starts unverified. Silence from a community never means it is safe." actions={<RangeToggle />} />
      <div className="grid gap-6 xl:grid-cols-[420px_1fr]">
        <Panel eyebrow="Share an observation" title="Submit a report"><ReportForm communities={data.communities} /></Panel>
        <Panel
          eyebrow={`${list.length} report${list.length === 1 ? "" : "s"}`}
          title="Recent reports"
          actions={
            <div className="flex flex-wrap gap-1">
              {STATUSES.map((s) => (
                <button key={s} onClick={() => setStatus(s)} className={cn("rounded-full border-2 px-2.5 py-0.5 text-xs capitalize", status === s ? "border-primary bg-primary text-primary-foreground" : "border-border text-muted-foreground hover:border-primary/50")}>{s}</button>
              ))}
            </div>
          }
        >
          <ReportList reports={list} communities={data.communities} />
        </Panel>
      </div>
    </PageContainer>
  );
}
EOF

cat > src/routes/data-gaps.tsx <<'EOF'
import { createFileRoute, Link } from "@tanstack/react-router";
import { ArrowRight } from "lucide-react";
import { PageContainer } from "@/components/layout/AppShell";
import { ConfidenceBadge, EmptyState, PageHeader, Panel, ScoreBar, SimulatedBadge, Stat } from "@/components/common/ui-bits";
import { CompletenessChart } from "@/components/charts/Charts";
import { useAssessments } from "@/lib/app-state";

export const Route = createFileRoute("/data-gaps")({
  head: () => ({ meta: [{ title: "Data Gaps · Lumyi AI" }, { name: "description", content: "Find communities that are easy to overlook because data is sparse." }] }),
  component: DataGaps,
});

function DataGaps() {
  const assessments = useAssessments();
  const rows = [...assessments].sort((a, b) => b.forgottenIndex - a.forgottenIndex);
  const flagged = rows.filter((a) => a.investigate);
  const people = flagged.reduce((s, a) => s + a.community.populationEst, 0);

  return (
    <PageContainer>
      <PageHeader eyebrow="The Forgotten Population" title="Where missing data hides risk" description="Sparse maps, no river gauge, old surveys and few reports all raise attention. Missing information is a reason to investigate, never a sign of safety." actions={<SimulatedBadge />} />
      {rows.length === 0 ? (
        <EmptyState title="No communities in this region" description="Pick another province or All Nepal." />
      ) : (
        <div className="space-y-6">
          <div className="grid grid-cols-2 gap-3 lg:grid-cols-3">
            <Stat label="Need investigation" value={flagged.length} tone="unknown" sub="Forgotten index 50+ or low completeness" />
            <Stat label="People in those areas" value={`~${Math.round(people / 1000)}k`} sub="Estimate" />
            <Stat label="Lowest completeness" value={Math.min(...rows.map((r) => r.completeness))} tone="high" sub="out of 100" />
          </div>
          <Panel eyebrow="Data completeness" title="Which places we know least about"><CompletenessChart data={rows} height={Math.max(260, rows.length * 30 + 60)} /></Panel>
          <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-3">
            {rows.map((a) => (
              <Link key={a.community.id} to="/insights" search={{ loc: a.community.id }} className="panel group block p-5 transition-transform hover:-translate-y-0.5">
                <div className="flex items-start justify-between gap-3">
                  <div>
                    <div className="font-semibold">{a.community.name}</div>
                    <div className="text-xs text-muted-foreground">{a.community.district} · ~{a.community.populationEst.toLocaleString("en-US")} people</div>
                  </div>
                  <div className="text-right">
                    <div className="font-mono text-2xl tabular text-unknown">{a.forgottenIndex}</div>
                    <div className="label-mono !text-[9px]">Forgotten</div>
                  </div>
                </div>
                <div className="mt-3 space-y-1.5">
                  <ScoreBar label="Completeness" value={a.completeness} tone="unknown" />
                  <ScoreBar label="Inaccessibility" value={a.inaccessibility} tone="elevated" />
                </div>
                {a.missing.length > 0 && (
                  <ul className="mt-3 space-y-1 text-xs text-muted-foreground">
                    {a.missing.slice(0, 3).map((m) => <li key={m}>· {m}</li>)}
                  </ul>
                )}
                <div className="mt-3 flex items-center justify-between">
                  <ConfidenceBadge confidence={a.confidence} />
                  <ArrowRight className="h-4 w-4 text-primary" />
                </div>
              </Link>
            ))}
          </div>
        </div>
      )}
    </PageContainer>
  );
}
EOF

cat > src/routes/insights.tsx <<'EOF'
import { createFileRoute, useNavigate } from "@tanstack/react-router";
import { useMemo, type ReactNode } from "react";
import { PageContainer } from "@/components/layout/AppShell";
import { ConfidenceBadge, PageHeader, Panel, SimulatedBadge, Stat, TierBadge } from "@/components/common/ui-bits";
import { ContributionChart, DimensionRadar } from "@/components/charts/Charts";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { explain } from "@/lib/analysis/explain";
import { useAssessments } from "@/lib/app-state";
import { useReports } from "@/lib/data/reportStore";

export const Route = createFileRoute("/insights")({
  validateSearch: (s: Record<string, unknown>): { loc?: string | undefined } => ({ loc: typeof s.loc === "string" ? s.loc : undefined }),
  head: () => ({ meta: [{ title: "AI Insights · Lumyi AI" }, { name: "description", content: "Plain-language explanation of why a community is flagged, built only from its own indicators." }] }),
  component: Insights,
});

function Bullets({ items }: { items: string[] }) {
  return (
    <ul className="space-y-2 text-sm leading-relaxed text-muted-foreground">
      {items.map((t, i) => (
        <li key={i} className="flex gap-2.5">
          <span className="mt-2 h-1.5 w-1.5 shrink-0 rounded-full bg-primary" />
          <span>{t}</span>
        </li>
      ))}
    </ul>
  );
}

function Section({ eyebrow, title, children, className }: { eyebrow: string; title: string; children: ReactNode; className?: string }) {
  return <Panel eyebrow={eyebrow} title={title} className={className}>{children}</Panel>;
}

function Insights() {
  const { loc } = Route.useSearch();
  const navigate = useNavigate({ from: "/insights" });
  const all = useAssessments({ allRegions: true });
  const reports = useReports();
  const a = all.find((x) => x.community.id === loc) ?? all[0];
  const ins = useMemo(() => (a ? explain(a, reports.filter((r) => r.communityId === a.community.id)) : null), [a, reports]);
  if (!a || !ins) return null;
  const c = a.community;

  return (
    <PageContainer>
      <PageHeader
        eyebrow="AI insights"
        title={`Why is ${c.name} flagged?`}
        description={ins.headline}
        actions={
          <>
            <SimulatedBadge />
            <Select value={c.id} onValueChange={(v) => navigate({ search: { loc: v } })}>
              <SelectTrigger className="w-[240px] bg-card" aria-label="Community"><SelectValue /></SelectTrigger>
              <SelectContent>
                {all.map((x) => <SelectItem key={x.community.id} value={x.community.id}>{x.community.name}, {x.community.district}</SelectItem>)}
              </SelectContent>
            </Select>
          </>
        }
      />
      <div className="mb-6 flex flex-wrap items-center gap-3">
        <TierBadge tier={a.tier} />
        <ConfidenceBadge confidence={a.confidence} />
        <span className="text-xs text-muted-foreground">Rule-based explanation: every sentence comes from a named indicator.</span>
      </div>
      <div className="mb-6 grid grid-cols-2 gap-3 lg:grid-cols-4">
        <Stat label="Priority index" value={a.priority} tone="primary" />
        <Stat label="Forgotten index" value={a.forgottenIndex} tone="unknown" />
        <Stat label="Data completeness" value={a.completeness} />
        <Stat label="Reports (30 d)" value={a.reports30d} sub={`${ins.reports.corroborated} corroborated, ${ins.reports.flagged} flagged`} />
      </div>
      <div className="grid gap-6 lg:grid-cols-2">
        <Section eyebrow="What drives the score" title="Top contributing factors"><ContributionChart factors={a.factors} /></Section>
        <Section eyebrow="Shape" title="Four dimensions"><DimensionRadar a={a} /></Section>
        <Section eyebrow="Environment" title="Rainfall, water and rivers"><Bullets items={ins.environmental} /></Section>
        <Section eyebrow="History" title="Past events in this district">
          {ins.historical.length === 0 ? (
            <p className="text-sm text-muted-foreground">No documented events in the pilot dataset. That is a data gap, not good news.</p>
          ) : (
            <ul className="space-y-3 text-sm">
              {ins.historical.map((h) => (
                <li key={h.name}>
                  <div className="font-medium">{h.name} <span className="font-mono text-xs text-muted-foreground">{h.year}</span></div>
                  <p className="text-muted-foreground">{h.summary}</p>
                  {h.compare && <p className="mt-0.5 text-xs text-primary">{h.compare}</p>}
                </li>
              ))}
            </ul>
          )}
        </Section>
        <Section eyebrow="People" title="Population exposure"><Bullets items={ins.exposure} /></Section>
        <Section eyebrow="Reach" title="Road and hospital access"><Bullets items={ins.access} /></Section>
        <Section eyebrow="Ground truth" title="Community reports">
          <Bullets items={[`${ins.reports.total} report${ins.reports.total === 1 ? "" : "s"} on file.`, ins.reports.latest ? `Latest: ${ins.reports.latest}` : "No reports yet, so conditions on the ground are unobserved."]} />
        </Section>
        <Section eyebrow="Quality" title="Data quality"><Bullets items={ins.dataQuality} /></Section>
        <Section eyebrow="Risks" title="Likely vulnerabilities"><Bullets items={ins.vulnerabilities.length ? ins.vulnerabilities : ["No specific vulnerability triggered by current indicators."]} /></Section>
        <Section eyebrow="Next" title="Suggested verification steps"><Bullets items={ins.actions} /></Section>
        <Section eyebrow="Be careful" title="Uncertainty" className="lg:col-span-2"><Bullets items={ins.uncertainty} /></Section>
      </div>
    </PageContainer>
  );
}
EOF

cat > src/routes/methodology.tsx <<'EOF'
import { createFileRoute } from "@tanstack/react-router";
import { PageContainer } from "@/components/layout/AppShell";
import { PageHeader, Panel } from "@/components/common/ui-bits";
import { WEIGHTS } from "@/lib/analysis/scoring";

export const Route = createFileRoute("/methodology")({
  head: () => ({ meta: [{ title: "Methodology · Lumyi AI" }, { name: "description", content: "How Lumyi AI scores priority, forgotten-population and confidence." }] }),
  component: Methodology,
});

const pct = (n: number) => `${Math.round(n * 100)}%`;

function Weights({ rows }: { rows: [string, number][] }) {
  return (
    <ul className="space-y-1.5 text-sm">
      {rows.map(([k, v]) => (
        <li key={k} className="flex justify-between rounded-lg bg-muted px-3 py-1.5"><span>{k}</span><span className="font-mono">{pct(v)}</span></li>
      ))}
    </ul>
  );
}

function Methodology() {
  const p = WEIGHTS.priority;
  const f = WEIGHTS.forgotten;
  return (
    <PageContainer>
      <PageHeader eyebrow="Methodology" title="How the scores work" description="Transparent, rule-based and easy to challenge. Nothing here is a prediction." />
      <div className="grid gap-6 lg:grid-cols-2">
        <Panel eyebrow="Index 1" title="Priority index (0 to 100)">
          <p className="mb-3 text-sm text-muted-foreground">A relative attention score, not the probability of a disaster. It blends four dimensions:</p>
          <Weights rows={[["Environmental hazard", p.hazard], ["Population exposure", p.exposure], ["Inaccessibility", p.access], ["Data gap", p.data]]} />
        </Panel>
        <Panel eyebrow="Index 2" title="Forgotten-population index">
          <p className="mb-3 text-sm text-muted-foreground">Finds communities that are easy to miss: many people, hard to reach, little data.</p>
          <Weights rows={[["Population exposure", f.exposure], ["Inaccessibility", f.access], ["Data gap", f.data]]} />
        </Panel>
        <Panel eyebrow="Golden rule" title="Silence is never safety" className="lg:col-span-2">
          <ul className="space-y-2 text-sm text-muted-foreground">
            <li>Fewer community reports can never lower a priority or forgotten index. They only lower confidence.</li>
            <li>A place with low data is labelled "Insufficient data", never "Lower indicated".</li>
            <li>Unknown river status adds attention points. It does not remove them.</li>
            <li>Automatic tests in <code className="font-mono text-foreground">src/test/scoring.test.ts</code> check these rules.</li>
          </ul>
        </Panel>
        <Panel eyebrow="Confidence" title="How sure are we?">
          <p className="text-sm text-muted-foreground">Confidence is 70% data completeness plus 30% recent community reports, shown as high, medium or low.</p>
        </Panel>
        <Panel eyebrow="Honesty" title="Limits of this prototype">
          <p className="text-sm text-muted-foreground">All indicator values are simulated and not validated in the field. Only OpenStreetMap tiles are live. Hospital names are real, locations approximate, and road status is schematic.</p>
        </Panel>
      </div>
    </PageContainer>
  );
}
EOF

cat > src/routes/sources.tsx <<'EOF'
import { createFileRoute } from "@tanstack/react-router";
import { useSuspenseQuery } from "@tanstack/react-query";
import { ExternalLink } from "lucide-react";
import { PageContainer } from "@/components/layout/AppShell";
import { PageHeader, Panel } from "@/components/common/ui-bits";
import { sourcesQuery } from "@/lib/data/service";
import { cn } from "@/lib/utils";

export const Route = createFileRoute("/sources")({
  head: () => ({ meta: [{ title: "Data Sources · Lumyi AI" }, { name: "description", content: "Which data sources are live, which are placeholders, and how to connect them." }] }),
  component: Sources,
});

const statusCls = {
  connected: "border-risk-low/50 bg-risk-low/10 text-risk-low",
  placeholder: "border-risk-moderate/50 bg-risk-moderate/10 text-risk-moderate",
  reference: "border-unknown/50 bg-unknown/10 text-unknown",
};

function Sources() {
  const { data } = useSuspenseQuery(sourcesQuery);
  return (
    <PageContainer>
      <PageHeader eyebrow="Data sources" title="What is live and what is simulated" description="Only OpenStreetMap tiles are live today. Everything else is a placeholder with a hint for connecting the real feed." />
      <div className="grid gap-5 md:grid-cols-2">
        {data.map((s) => (
          <Panel key={s.id} eyebrow={s.provider} title={s.name} actions={<span className={cn("rounded-full border px-2 py-0.5 text-[11px] capitalize", statusCls[s.status])}>{s.status}</span>}>
            <dl className="space-y-2 text-sm">
              <div><dt className="text-xs text-muted-foreground">Dataset</dt><dd>{s.dataset}</dd></div>
              <div><dt className="text-xs text-muted-foreground">Used for</dt><dd>{s.usedFor}</dd></div>
              <div><dt className="text-xs text-muted-foreground">Shown in app as</dt><dd className="capitalize">{s.displayed}</dd></div>
              <div><dt className="text-xs text-muted-foreground">How to connect</dt><dd className="text-muted-foreground">{s.connectHint}</dd></div>
            </dl>
            <a href={s.url} target="_blank" rel="noreferrer" className="mt-4 inline-flex items-center gap-1.5 text-sm text-primary hover:underline">
              Open source <ExternalLink className="h-3.5 w-3.5" />
            </a>
          </Panel>
        ))}
      </div>
    </PageContainer>
  );
}
EOF

cat > src/routes/settings.tsx <<'EOF'
import { createFileRoute } from "@tanstack/react-router";
import { toast } from "sonner";
import { PageContainer } from "@/components/layout/AppShell";
import { PageHeader, Panel } from "@/components/common/ui-bits";
import { RangeToggle } from "@/components/common/RangeToggle";
import { Button } from "@/components/ui/button";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { PROVINCES } from "@/lib/data/constants";
import { useAppState } from "@/lib/app-state";
import { resetReports } from "@/lib/data/reportStore";
import type { Province } from "@/lib/data/types";

export const Route = createFileRoute("/settings")({
  head: () => ({ meta: [{ title: "Settings · Lumyi AI" }, { name: "description", content: "Region, date range and local data settings." }] }),
  component: Settings,
});

function Settings() {
  const { region, setRegion } = useAppState();
  return (
    <PageContainer>
      <PageHeader eyebrow="Settings" title="Make it yours" description="Preferences apply across every page." />
      <div className="grid max-w-3xl gap-6">
        <Panel eyebrow="View" title="Default region">
          <Select value={region} onValueChange={(v) => setRegion(v as Province | "all")}>
            <SelectTrigger className="w-[220px] bg-card" aria-label="Region"><SelectValue /></SelectTrigger>
            <SelectContent>
              <SelectItem value="all">All Nepal</SelectItem>
              {PROVINCES.map((p) => <SelectItem key={p.id} value={p.id}>{p.id} Province</SelectItem>)}
            </SelectContent>
          </Select>
        </Panel>
        <Panel eyebrow="View" title="Date range"><RangeToggle /></Panel>
        <Panel eyebrow="Local data" title="Reports saved in this browser">
          <p className="mb-3 text-sm text-muted-foreground">Reports you submit are stored only in this browser. Clearing them does not touch the sample reports.</p>
          <Button variant="outline" onClick={() => { resetReports(); toast.success("Your saved reports were cleared"); }}>Clear my reports</Button>
        </Panel>
      </div>
    </PageContainer>
  );
}
EOF

############################################
# 4. README + CHECKS
############################################
cat > README.md <<'EOF'
# Lumyi AI: Invisible Crisis Intelligence (Nepal pilot)

Finds communities that disaster systems tend to overlook, by combining hazards, population exposure, road and hospital access, and community reports.

- Scores are relative attention indices, not probabilities.
- Fewer reports never lower risk. They only lower confidence.
- All indicator values are **simulated**. Only OpenStreetMap tiles are live.

## Run it

    bun install
    bun run dev

## Test

    bunx vitest run

## Stack

TanStack Start / Router / Query, React, Tailwind v4, Leaflet, Recharts.
EOF

echo "Type-checking..."
bunx tsc --noEmit 2>&1 | head -40 || true
bunx vitest run 2>&1 | tail -8 || true
echo "Done. Now run: bun run dev"
