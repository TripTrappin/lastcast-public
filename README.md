# Last Cast 🎣

A browser-based fishing game built as a single self-contained HTML file (vanilla JS + Canvas, no build step).

## How to play locally

**Quickest:**

```sh
./serve.sh
```

Then open <http://localhost:8000/> in your browser.

**Or, manually:**

```sh
python3 -m http.server 8000
```

Then open <http://localhost:8000/>.

You can pass a custom port to `serve.sh`, e.g. `./serve.sh 9000`.

## Files

- `last cast` — the actual game (single HTML file, ~3.3 MB).
- `index.html` — redirect stub so `http://localhost:8000/` opens the game directly.
- `serve.sh` — convenience wrapper around `python3 -m http.server`.
