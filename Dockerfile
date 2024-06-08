FROM python:3

COPY src/ src/

WORKDIR /src

ENTRYPOINT [ "python", "echo.py" ]