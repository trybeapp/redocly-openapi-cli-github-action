# redocly-openapi-cli-github-action

#### A Github action for running redocly openapi-cli commands

## :keyboard: Inputs

### `args`

The arguments to be provided to the `redoc-cli` command.
By default this is empty so that `redoc-cli` will print a note about its correct usage.

## :bulb: Quick Start

### Bundle

```yaml
jobs:
  bundle:
    runs-on: ubuntu-latest
    name: bundle
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: openapi bundle
        uses: trybeapp/redocly-openapi-cli-github-action@v0.0.1
        with:
          args: 'bundle test/petstore.yml'
```

This example uses the bundle action to generate a HTML bundle for the petstore.yml OpenAPI definition.

### Lint

```yaml
jobs:
  lint:
    runs-on: ubuntu-latest
    name: lint
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: openapi lint
        uses: trybeapp/redocly-openapi-cli-github-action@v0.0.1
        with:
          args: 'lint test/petstore.yml'
```

This example validates your OpenAPI definition files to ensure they do not contain errors and have a valid structure according to the OpenAPI specifications.

## :blue_book: References

- [Redocly OpenAPI CLI](https://redoc.ly/docs/cli/)
