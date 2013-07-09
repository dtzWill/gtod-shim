gtod-shim
=========

Shim library for gettimeofday() for testing and exposing time-related bugs.

Presently used to set time to a small distance (10 seconds) before
the most recent boundary for overflowing a 32bit representation
of time-since-epoch in milliseconds.

Example Usage:
=============

This demonstrates using the shim library to expose
a bug in w3c from libwww 5.4.0:

```sh
LD_PRELOAD=$HOME/src/gtod-shim/gtod.so w3c http://localhost
Looking up localhost
Looking up localhost
Contacting localhost
Segmentation fault
```
