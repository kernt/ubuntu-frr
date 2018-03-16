#A basic ansible role to deploy FRR router on Ubuntu 16.04

This is a module that implements the instructions found here:
https://github.com/FRRouting/frr/wiki/Building-FRR-on-Ubuntu-1604[https://github.com/FRRouting/frr/wiki/Building-FRR-on-Ubuntu-1604]

Note that it is not idempotent, re-running will likley reset configurations.

To use, just include the role on your router nodes, e.g.:

```
---
- hosts: routers
  become: true
  tasks:
    - include_role:
        name: ubuntu-frr
```


