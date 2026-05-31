# Backend Issues Report

Date: 2026-05-30

## Issue 1: [object Object] in Pickup Location Name and Address

**Endpoint**: `/api/subscriptions/current/overview`

**Problem**: 
- `data.pickupLocation.name` is returning "[object Object]" instead of a proper string
- `data.pickupLocation.address` is returning "[object Object]" instead of a proper string
- `data.contractSnapshot.delivery.address.line1` is also returning "[object Object]"

**Expected**: These fields should contain proper string values, not object stringifications.

**Example from logs**:
```json
"pickupLocation": {
  "id": "main",
  "name": "[object Object]",
  "address": "[object Object]",
  ...
}
```

---

## Issue 2: ContractSnapshot Object Structure

**Endpoint**: `/api/subscriptions/current/overview`

**Problem**: The `data.contractSnapshot.delivery.address` object contains fields with "[object Object]" values.

**Example from logs**:
```json
"contractSnapshot": {
  ...
  "delivery": {
    "address": {
      "line1": "[object Object]",
      ...
    }
  }
}
```

---

## Recommendations

1. **Fix Pickup Location Serialization**: Ensure `pickupLocation.name` and `pickupLocation.address` are properly serialized as strings, not objects.
2. **Fix Contract Snapshot Address**: Ensure all address fields in `contractSnapshot.delivery.address` contain proper string values.
3. **Test All Endpoints**: Verify these issues don't exist in other endpoints that return similar data structures.

