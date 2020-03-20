# Example: pssing info. to k8s from tf

I want to pass Terraform's output to kustomize.

```plain
.
|-- README.md
|-- k8s
|   |-- base
|   `-- stg
|-- scripts
|   |-- copy-info.sh
|   |-- init-deploy.sh
|   |-- pass-info-to-kustomize.sh
|   `-- save-output.awk
|-- tf
|   |-- output.tf
|   |-- terraform.tfstate
|   `-- terraform.tfstate.backup
`-- tmp
```
