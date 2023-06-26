This repo contains PractRand 0.94 with the following changes:

- I replaced the "dummy" PRNG implementation with SipHash-2-4.

- I removed the Windows/MSVC bits because I don't need them and they were large.

- I added `Package.swift` so I could use Xcode to edit and debug.

To test SipHash-2-4 as a PRNG, run `bin/RNG_test dummy -multithreaded`. Here's the output from a run on my MacBook Pro M1 Max:

```
; ../bin/RNG_test dummy -multithreaded
RNG_test using PractRand version 0.94
RNG = SipHash-2-4, seed = 0x9491fcf6
test set = core, folding = standard (64 bit)

rng=SipHash-2-4, seed=0x9491fcf6
length= 1 gigabyte (2^30 bytes), time= 2.6 seconds
  no anomalies in 243 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 2 gigabytes (2^31 bytes), time= 5.2 seconds
  no anomalies in 261 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 4 gigabytes (2^32 bytes), time= 10.5 seconds
  no anomalies in 277 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 8 gigabytes (2^33 bytes), time= 20.9 seconds
  no anomalies in 294 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 16 gigabytes (2^34 bytes), time= 41.8 seconds
  no anomalies in 310 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 32 gigabytes (2^35 bytes), time= 82.4 seconds
  no anomalies in 325 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 64 gigabytes (2^36 bytes), time= 167 seconds
  no anomalies in 340 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 128 gigabytes (2^37 bytes), time= 334 seconds
  no anomalies in 355 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 256 gigabytes (2^38 bytes), time= 654 seconds
  no anomalies in 369 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 512 gigabytes (2^39 bytes), time= 1334 seconds
  no anomalies in 383 test result(s)

rng=SipHash-2-4, seed=0x9491fcf6
length= 1 terabyte (2^40 bytes), time= 2663 seconds
  no anomalies in 397 test result(s)

^C
```

