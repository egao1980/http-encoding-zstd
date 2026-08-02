# http-encoding-zstd

MIT. **`zstd`** Content-Encoding backend for [`http-protocol`](https://github.com/egao1980/http-protocol).

Depends on [`cl-stack-zstd`](https://github.com/egao1980/cl-stack-zstd) (native overlay). Soft for consumers — omit from `Accept-Encoding` when unavailable.

```bash
# siblings: http-protocol/ cl-stack-zstd/ http-encoding-zstd/
# natives: cl-stack-zstd/lib/<os>-<arch>/
qlot install
qlot exec ros -S . -e '(asdf:test-system "http-encoding-zstd")'
```
