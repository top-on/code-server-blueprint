# code-server-blueprint

Blueprint for using code-server for Python development.


## Getting started

1. Start server: 

    ```bash
    docker-compose up dev
    ```

2. Open browser (ideally Chrome-based) at ```http://localhost:8080/```


## Adapt this bluepeint

You have several options to adapt this blueprint:

* Add Python dependencies to `requirements.txt`
* Add Ubuntu dependencies to `Dockerfile`
* Install more VSCode extensions at `Dockerfile`
* Customize VSCode settings at `.vscode/settings.json`


## References

* https://github.com/cdr/code-server
