# http-encoding-zstd

MIT. **`zstd`** Content-Encoding backend for [`http-protocol`](https://github.com/egao1980/http-protocol).

Depends on [`cl-stack-zstd`](https://github.com/egao1980/cl-stack-zstd) (native overlay). Soft for consumers — omit from `Accept-Encoding` when unavailable.

```bash
# siblings: http-protocol/ cl-stack-zstd/ http-encoding-zstd/
# natives: cl-stack-zstd/lib/<os>-<arch>/
qlot install
qlot exec ros -S . -e '(asdf:test-system "http-encoding-zstd")'
```

## Publish

Source-only OCI publish is centralized in [`cl-stack-systems`](https://github.com/egao1980/cl-stack-systems)
(`imports/http-encoding-zstd/qlfile` pin + shared `publish.yml`). Packaging metadata lives in the `.asd`
(`auto-package-spec`):

```bash
gh workflow run publish.yml -R egao1980/cl-stack-systems -f import=http-encoding-zstd
```

