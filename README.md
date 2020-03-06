# nix-ci-action

This action run Continuous Integration for nix project

## Inputs

### `CI_NAME`

**Required** The name of the CI derivation. Default `"ci"`.

## Example usage

```
uses: port3000/nix-ci-action@v1
with:
  CI_NAME: 'PaymentServiceCI'
```