# Bash script to ingest data
# This involves scraping the data from the web and then cleaning up and putting in Weaviate.
# Error if any command fails
set -e
pip install playwright > /dev/null
pip install  lxml
playwright install
python ingest_url.py
python ingest_docs.py