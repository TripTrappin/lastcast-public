# Last Cast 🎣

A browser-based fishing game built as a single self-contained HTML file (vanilla JS + Canvas, no build step).

## Play online

Hosted via GitHub Pages: <https://triptrappin.github.io/lastcast-public/>

## Play locally

**Quickest:**

```sh
./serve.sh
```

Then open <http://localhost:8000/> in your browser.

**Or, manually:**

```sh
python3 -m http.server 8000
```

Pass a custom port to `serve.sh`, e.g. `./serve.sh 9000`.

## Files

- `index.html` — the entire game (vanilla JS + Canvas, ~3.3 MB).
- `serve.sh` — convenience wrapper around `python3 -m http.server`.
