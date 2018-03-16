#A basic ansible role to deploy FRR router on Ubuntu 16.04

This is a module that implements the instructions found here:
https://github.com/FRRouting/frr/wiki/Building-FRR-on-Ubuntu-1604

Find out more about FRRouter:  https://frrouting.org

Note that it is not idempotent, re-running will likley reset configurations. In addition, the code is compiled locally, and all of the compiler tools and code remain after the install.

To use, just include the role on your router nodes, e.g.:

```
---
- hosts: routers
  become: true
  tasks:
    - include_role:
        name: ubuntu-frr
```


