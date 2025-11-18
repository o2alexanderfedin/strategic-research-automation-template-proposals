# Publish to GitHub Pages

Generate and publish a professional landing page showcasing all sprint reports.

## What This Does

1. **Scans** all sprint reports in `reports/` directory
2. **Generates** a beautiful HTML landing page with:
   - Project overview and statistics
   - Cards for each sprint/opportunity with scores and recommendations
   - Links to HTML, PDF, and Markdown versions of reports
   - Responsive design with professional styling
3. **Publishes** to GitHub Pages (if repository is configured)

## Architecture

The system uses **JSON + Static HTML** architecture:

- **JSON data file** (`sprints-data.json`) contains all sprint metadata
- **Static HTML template** (`index.html`) loads JSON via JavaScript
- **Benefits**: Idempotent, maintainable, testable, extensible

```bash
# Generate both JSON and HTML
./scripts/publish/generate-pages-v2.sh

# Or specify custom output directory
./scripts/publish/generate-pages-v2.sh ./docs
```

## GitHub Pages Setup

To enable automatic publishing:

1. Create a `gh-pages` branch or use `docs/` folder in main
2. Enable GitHub Pages in repository settings
3. Point to the generated index.html location

## Output

- `docs/pages/index.html` - Landing page
- `docs/sprints-data.json` - Sprint metadata
- Links to all sprint reports (HTML/PDF/MD formats)
- Professional, mobile-responsive design

## Requirements

- At least one sprint report in `reports/sprint-*-final-report.md`
- Reports should include score and TAM data (extracted automatically)

## Example

After running this command, you'll have a landing page similar to:
https://o2alexanderfedin.github.io/innova-technology-proposals/

The page will automatically calculate:

- Total number of strategic opportunities
- Combined TAM across all sprints
- Average opportunity score
- Research file count

## Customization

Edit `docs/index-template.html` (proper HTML/CSS/JS file) to:

- Change color scheme (currently purple gradient)
- Modify card layout and styling
- Add client-side filtering, sorting, search
- Extend JavaScript data binding logic

## Testing

```bash
# Run comprehensive integration tests
./test/integration/test-generate-pages-v2.sh
```
