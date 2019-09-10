%dw 2.0
import * from dw::core::Objects
output application/json
---
keySet(payload.TransactionSets) map {
    version: $,
    sets: keySet(payload.TransactionSets[$])
}
