# foundry-linked-test

Run `forge test -vvvv`:

```
[PASS] test_IsNativeToken() (gas: 8459)
Traces:
  [8459] CounterTest::test_IsNativeToken()
    ├─ [338] Counter::isNativeToken(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) [staticcall]
    │   └─ ← [Return] true
    ├─ [0] VM::assertEq(true, true) [staticcall]
    │   └─ ← [Return]
    └─ ← [Stop]

[PASS] test_IsNativeTokenLinked() (gas: 11702)
Traces:
  [11702] CounterTest::test_IsNativeTokenLinked()
    ├─ [3548] Counter::isNativeTokenLinked(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) [staticcall]
    │   ├─ [295] DenominationsLinked::isNativeToken(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) [delegatecall]
    │   │   └─ ← [Return] true
    │   └─ ← [Return] true
    ├─ [0] VM::assertEq(true, true) [staticcall]
    │   └─ ← [Return]
    └─ ← [Stop]
```