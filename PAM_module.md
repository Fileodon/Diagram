```mermaid
sequenceDiagram
    autonumber
    actor Master as Master Server
    participant ServerA as Server A
    participant ServerB as Server B

    Master->>ServerA: Udgiver midlertidlig adgang til Server B
    activate ServerA
    ServerA->>ServerB: Tilbyder midlertidig adgang produceret af Master Server
    activate ServerB
    ServerB-->>ServerA: Verificer tiladelse
    alt Verificering godkendt
        ServerB-->>ServerA: Login godkendt
    else Verificering ikke godkendt
        ServerB-->>ServerA: Login ikke godkendt
    end
```