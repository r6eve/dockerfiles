Latest dev package. https://github.com/etal/cnvkit/tree/1359013f8ab3a555ba51683d1168d8fe0f805f28

This image can execute against https://github.com/etal/cnvkit-examples (need some fixes in the repository).

#### Usage

```console
docker run --rm -ti -u $(id -u):$(id -g) \
  -v /etc/group:/etc/group:ro \
  -v /etc/passwd:/etc/passwd:ro \
  -v /etc/shadow:/etc/shadow:ro \
  -v /etc/sudoers.d:/etc/sudoers.d:ro \
  -v "$HOME"/path/to/cnvkit:/data r6eve/cnvkit:0.9.7.dev0-1359013
cd /data
```
