# hcp-centos-8

A packer repo to build a Centos 8 Stream minimal image for Oracle VirutalBox

Requirements:
* Packer
* VirtualBox

## Running

Clone this repo then run:
```
packer validate config.pkr.hcl
packer init config.pkr.hcl
packer build config.pkr.hcl
```

When completed the OVA is then in the output directory.

The process takes around 15 minutes on a modern laptop.
