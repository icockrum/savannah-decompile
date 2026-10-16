# Savannah decompilation

`savannah.t` is the recovered TADS 2 source-like listing from `../savannah.gam`.
It contains 25,343 lines, including game text, objects, functions, vocabulary,
and action logic. The original binary is unchanged.

This is a decompilation, not the original source. The game contains no symbol
table, so names such as `prop707` and `fun2` are generated; some object names
are inferred from their descriptions. Comments and original source file
boundaries cannot be recovered. Recompilation and gameplay equivalence have
not been tested.

Scads leaves comments for the `FST` and `INH` chunks, which it does not decode.
There are still 19 `{{{...}}}` markers: 18 action-synonym mappings that the
printer could not express, and one residual `DISC` bytecode operation. These
need manual reconstruction before this listing can be compiled. The four
unknown property values are resolved. `scads2.log` is the empty stderr log
from the successful run; a clean log does not imply compilable output.

## Tool and reproduction

Used [Scads 2](https://github.com/TacoVengeance/scads2), commit
`1af3dd41470df399bf253e1a3036422ccd17906a`, built with GHC 9.6.6 and GCC.
Scads 2 is GPL-licensed; see its source headers and BUILDING.txt.

The included patch adds decoding for TADS `DAT_PROPNUM` (type 13), using the
existing `opPROP` decoder. This resolves four property references that stock
Scads printed as unknown. The encoding is documented in the TADS header:
https://github.com/realnc/qtads/blob/master/tads2/dat.h

To rebuild on a system with GHC (including mtl), GCC, and the libffi/libnuma
development libraries, clone the tool outside this repository, then run:

```sh
git checkout 1af3dd41470df399bf253e1a3036422ccd17906a
git apply /path/to/savannah-decompile/decompiled/scads2-property-reference.patch
make scads2
```

From the game repository, regenerate the listing with:

```sh
SCADS2=/path/to/scads2 ./scripts/decompile.sh
```

Input SHA-256:
`c76fb24441e8d7743d06708ae475b99862cf4d09df60956c8ede5c47555bbf6a`
