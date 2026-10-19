```mermaid
flowchart TD
    A[Log ind] --> B(Bruger indtaster oplysninger)
    B --> C{Tjekker credentials}
    C --> |Success | D[Bruger får adgang]
    C --> |Fejl | E[Bruger får ikke adgang]
```