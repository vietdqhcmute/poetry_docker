# 📝 Auto indexing DOCX document

## 📌 Overview

This project processes `.docx` documents to:
- Identify specific keywords in paragraphs.
- Apply appropriate heading styles based on keyword matching.
- Convert the formatted `.docx` to `.pdf`.

## 🚀 Features

- **Automatic Styling**: Detects predefined keywords and applies different heading styles.
- **Batch Processing**: Processes multiple paragraphs efficiently.
- **DOCX to PDF Conversion**: Converts `.docx` files to `.pdf` format.

## 🛠️ Installation
**Install by Docker or Local machine**

**Docker**:

Ensure you have installed Docker and docker-compose

Build docker images

```bash
docker build -t poetry .
```

Start docker by docker compose

```bash
docker compose up -d
```


**Local machine**

Ensure you have `python >= 3.11-bookworm`, `pip 24.3` and `poetry 2.0.1` installed

Then install the required dependencies:

```bash
rm poetry.lock && poetry lock
poetry install
```

## ️Usage
If using docker:
Go execute docker container after start docker-compose
```bash
docker exec -it poetry-auto-index bash
```

Run the main file
```bash
python main.py
```

##
If using local machine:
Go to /app folder and then start the main file
```bash
cd app
python main.py
```

the result will name `output.docx` file in root directory

