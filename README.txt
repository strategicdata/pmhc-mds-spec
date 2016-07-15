Running with csvlint:
csvlint clients.csv --schema=clients-metadata.json

Issues:
- Will only accept one date format, not multiple alternatives.
- Not cross checking foreign keys in csv files
- Copayment: Using datatype of:
    "datatype": {
      "base": "number",
      "minimum": "0.00",
      "format": "#####0.##"
    },
  causes the error:
    1. invalid_encoding. Row: 2. 2
  changing it to:
    "datatype": {
      "base": "number",
      "format": "#####0.##"
    },
  removes the error.
- Format of "#####0.##" for copayment isn't being checked.
