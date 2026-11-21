# Bug-fix evidence example

## Symptom

The checkout total differs from the server total when a percentage discount is applied.

## Investigation

Reproduced with a fixed cart and independently calculated the expected decimal result. Traced the browser display, API payload, domain calculation, and database value. Found binary floating-point rounding in the shared calculation.

## Fix and verification

Changed the domain calculation to the project's decimal-safe money helper, added boundary and rounding tests, reproduced the original case, and ran the affected unit, API, and checkout regression tests. Record exact commands and results in `TEST_STATUS.md`; do not call the fix verified until those commands actually pass.
