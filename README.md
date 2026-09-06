# http-encoding-zstd

MIT. **`zstd`** Content-Encoding adapter for [`http-protocol`](https://github.com/egao1980/http-protocol).
Bytes go through [`compression-protocol`](https://github.com/egao1980/compression-protocol);
[`cl-stack-zstd`](https://github.com/egao1980/cl-stack-zstd) implements `:zstd`. Soft for
consumers — omit from `Accept-Encoding` when unavailable.

```bash
# CI: canned cl-repository test-system.yml. Deps from ghcr.io/egao1980/cl-systems.
# Local: (asdf:test-system "http-encoding-zstd")
```

## Publish

```bash
gh workflow run publish-checkout.yml -R egao1980/http-encoding-zstd
```
