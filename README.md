# 🐧 ubuntu_lcov

Docker image based on **Ubuntu 24.04** with [`lcov`](https://linux.die.net/man/1/lcov) pre-installed.  
Ideal for use in **GitHub Actions** to extract test coverage data without installing dependencies every time.

---

## 📦 Included tools

- `lcov`
- `curl`
- `git`
- `bc`
- `ca-certificates`

---

## 🚀 Usage in GitHub Actions

```yaml
jobs:
  badge:
    runs-on: ubuntu-latest
    container:
      image: uccioduri/ubuntu_lcov:latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: Run lcov summary
        run: |
          lcov --summary coverage/lcov.info
```

---

## 🐳 Usage in local Docker

```bash
docker pull uccioduri/ubuntu_lcov:latest

docker run --rm -it uccioduri/ubuntu_lcov:latest bash
```

---

## ⚖️ License

This project is licensed under the [MIT License](LICENSE).

