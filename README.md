# pre-commit-golang
Golang pre-commit hooks for http://pre-commit.com/
## install
you need first to install (pre-commit) [https://pre-commit.com/#install]
```
pip install pre-commit
```
install pre-commit into your git repo
```
pre-commit install
```
## Usage
Add a file named `.pre-commit-config.yaml` into the root directory of your repository
```yaml
repos:
  - repo: git://github.com/zen0fpy/pre-commit-golang
    rev: master
    hooks:
      - id: install-go-tools
      - id: go-tools
      - id: go-fmt-import
      - id: go-vet
      - id: go-lint
      - id: go-simple
      - id: go-type
      - id: go-interfacer
      - id: go-cyclo
      - id: go-deadcode
      - id: go-unit-tests
      - id: gofumpt # requires github.com/mvdan/gofumpt
      - id: go-err-check # requires github.com/kisielk/errcheck
      - id: go-static-check # install https://staticcheck.io/docs/
      - id: golangci-lint # requires github.com/golangci/golangci-lint
```

## Command
```
pre-commit autoupdate
pre-commit run --all-files
pre-commit run --help
```


## Contributing
- Fork it
- Create your feature branch `git checkout -b my-new-feature`
- Commit your changes `git commit -am 'Add some feature'`
- Push to the branch `git push origin my-new-feature`
- Create new Pull Request
