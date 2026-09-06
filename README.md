# http-encoding-zstd

MIT. **`zstd`** Content-Encoding adapter for [`http-protocol`](https://github.com/egao1980/http-protocol).
Bytes go through [`compression-protocol`](https://github.com/egao1980/compression-protocol);
[`cl-stack-zstd`](https://github.com/egao1980/cl-stack-zstd) implements `:zstd`. Soft for
consumers — omit from `Accept-Encoding` when unavailable.

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

