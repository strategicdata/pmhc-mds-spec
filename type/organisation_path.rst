A colon separated list of Organisation Keys.

A combination of the Primary Health Network's (PHN's) Organisation Key and the
Provider Organisation's Organisation Key separated by a colon.

A Provider Organisation is also allowed to have suborganisations. In that case
the Organisation Path is the PHNs Organisation Key, the Provider Organisation Key
and the suborganisation's Organisation Key separated by a colon.

Here is an example organisation structure showing the Organisation Path for each organisation:

+------------------+-------------------------------+---------------------------------------------+---------------------+-------------------+
| Organisation Key | Organisation Name             | Organisation Type                           | Parent Organisation | Organisation Path |
+==================+===============================+=============================================+=====================+===================+
| PHN999           | Test PHN                      | Primary Health Network                      | None                | PHN999            |
+------------------+-------------------------------+---------------------------------------------+---------------------+-------------------+
| POA              | Test Provider Organisation A  | Private Allied Health Professional Practice | PHN999              | PHN999:POA        |
+------------------+-------------------------------+---------------------------------------------+---------------------+-------------------+
| POAA             | Test Provider Organisation AA | Private Allied Health Professional Practice | POA                 | PHN999:POA:POAA   |
+------------------+-------------------------------+---------------------------------------------+---------------------+-------------------+
