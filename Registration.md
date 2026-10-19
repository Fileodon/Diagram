```mermaid
flowchart TD
    A([Registration]) --> B[Bruger indtaster mail, password og password_confirm]
    B --> D{Bruger forsøges oprettet i systemet}
    D -->|Success| F[Redirect til login]
    D -->|Fejl| E[Vis fejlmeddelelse]
```