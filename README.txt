Running with csvlint:
csvlint data/clients.csv --schema=pmhc-metadata.json

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

- Different versions of the SDQ require different items. Currently checks are not dependent of version of SDQ specified.
- Other interdependent checks such as Episode Completion Status and Service Contact/Episode End Date
- Client consent on episode == 0 is valid csv but we will throw an error

- Can't get the following working in order to have a version of the first line:
  "dialect": {
    "header": true,
    "headerRowCount": 1,
    "skipRows": 1
  },
