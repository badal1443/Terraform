# Terraform

Object types required to write HCL.

1. Providers
2. Resources to create, associated with a provider.
3. Data sources are way to query info from provider.

-----

HCL uses Block Syntex

block_type "label" "name_label" {
  key="value"
  nested_block{}
