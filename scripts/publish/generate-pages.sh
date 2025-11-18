#!/bin/bash
set -e

echo "Generating GitHub Pages landing page..."

# Create docs directory
mkdir -p docs/reports

# Generate index.html
cat > docs/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strategic Research Reports</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif; line-height: 1.6; color: #333; background: #f5f5f5; }
        .container { max-width: 1200px; margin: 0 auto; padding: 40px 20px; }
        header { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; padding: 60px 20px; text-align: center; border-radius: 10px; margin-bottom: 40px; }
        h1 { font-size: 2.5em; margin-bottom: 10px; }
        .subtitle { font-size: 1.2em; opacity: 0.9; }
        .stats { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px; margin-bottom: 40px; }
        .stat-card { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); text-align: center; }
        .stat-number { font-size: 2em; font-weight: bold; color: #667eea; }
        .stat-label { color: #666; font-size: 0.9em; margin-top: 5px; }
        .reports { display: grid; grid-template-columns: repeat(auto-fill, minmax(350px, 1fr)); gap: 20px; }
        .report-card { background: white; padding: 25px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); transition: transform 0.2s, box-shadow 0.2s; }
        .report-card:hover { transform: translateY(-5px); box-shadow: 0 5px 20px rgba(0,0,0,0.15); }
        .report-title { font-size: 1.2em; font-weight: 600; color: #333; margin-bottom: 10px; }
        .report-meta { display: flex; justify-content: space-between; margin-bottom: 15px; font-size: 0.9em; color: #666; }
        .score { display: inline-block; padding: 5px 12px; background: #667eea; color: white; border-radius: 20px; font-weight: 600; }
        .score.high { background: #10b981; }
        .score.medium { background: #f59e0b; }
        .recommendation { display: inline-block; padding: 5px 12px; background: #e5e7eb; color: #374151; border-radius: 20px; font-size: 0.85em; }
        .recommendation.go { background: #d1fae5; color: #065f46; }
        .recommendation.strong-go { background: #a7f3d0; color: #064e3b; }
        .btn { display: inline-block; padding: 10px 20px; background: #667eea; color: white; text-decoration: none; border-radius: 5px; font-weight: 600; transition: background 0.2s; }
        .btn:hover { background: #5568d3; }
        footer { text-align: center; margin-top: 60px; padding-top: 40px; border-top: 2px solid #e5e7eb; color: #666; }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Strategic Research Reports</h1>
            <p class="subtitle">AI-Powered Research Automation Opportunities</p>
        </header>

        <div class="stats">
            <div class="stat-card">
                <div class="stat-number">10</div>
                <div class="stat-label">Strategic Reports</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">83.7</div>
                <div class="stat-label">Average Score</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">$600M+</div>
                <div class="stat-label">Total Market Opportunity</div>
            </div>
        </div>

        <div class="reports">
            <div class="report-card">
                <div class="report-title">Sprint 01: Consulting Research Ops Optimization</div>
                <div class="report-meta">
                    <span class="score high">~85/100</span>
                    <span class="recommendation go">GO</span>
                </div>
                <a href="reports/01-consulting-research-ops-optimization-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 02: VC Competitive Intelligence</div>
                <div class="report-meta">
                    <span class="score high">85.9/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/02-vc-competitive-intelligence-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 03: Corporate R&D Portfolio Intelligence</div>
                <div class="report-meta">
                    <span class="score high">~87/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/03-corporate-rd-portfolio-intelligence-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 04: VoC Roadmap Prioritization</div>
                <div class="report-meta">
                    <span class="score high">86.5/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/04-voc-automated-roadmap-prioritization-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 05: M&A Due Diligence Acceleration</div>
                <div class="report-meta">
                    <span class="score high">88.3/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/05-ma-due-diligence-acceleration-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 06: Digital Transformation Consulting</div>
                <div class="report-meta">
                    <span class="score high">84.2/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/06-digital-transformation-consulting-research-enablement-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 07: Technology Scouting & Strategic Foresight</div>
                <div class="report-meta">
                    <span class="score high">82.3/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/07-technology-scouting-strategic-foresight-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 08: PE Pre-Screening Research</div>
                <div class="report-meta">
                    <span class="score high">83.4/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/08-pe-pre-screening-research-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 09: CVC & Strategic Partnerships</div>
                <div class="report-meta">
                    <span class="score medium">78.2/100</span>
                    <span class="recommendation go">GO (Conditional)</span>
                </div>
                <a href="reports/09-strategic-partnership-investment-research-report.md" class="btn">View Report</a>
            </div>

            <div class="report-card">
                <div class="report-title">Sprint 10: Competitive Intelligence Product Strategy</div>
                <div class="report-meta">
                    <span class="score high">82.3/100</span>
                    <span class="recommendation strong-go">STRONG GO</span>
                </div>
                <a href="reports/10-competitive-intelligence-product-strategy-report.md" class="btn">View Report</a>
            </div>
        </div>

        <footer>
            <p>Generated with Claude Code • Strategic Research Automation Template</p>
            <p><a href="https://github.com/o2alexanderfedin/strategic-research-automation-template-proposals" style="color: #667eea;">View on GitHub</a></p>
        </footer>
    </div>
</body>
</html>
EOF

echo "✓ Landing page generated: docs/index.html"
