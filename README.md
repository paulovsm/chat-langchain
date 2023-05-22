# Storyverse Chat

This repo is an implementation of a locally hosted chatbot specifically focused on question answering over the [Storyverse Website](http://familyverse.bagagemlab.com/index.php).

Built with [LangChain](https://github.com/hwchase17/langchain/) and [FastAPI](https://fastapi.tiangolo.com/).

The app leverages LangChain's streaming support and async API to update the page in real time for multiple users.

## ✅ Running locally
1. Install dependencies: `pip install -r requirements.txt`
2. Run `ingest_url.sh` to scrape [Storyverse Website](http://familyverse.bagagemlab.com/index.php) most recent stories.
3. Run `ingest_docs.sh` to ingest LangChain docs data into the vectorstore (only needs to be done once).
   3.1. You can use other [Document Loaders](https://langchain.readthedocs.io/en/latest/modules/document_loaders.html) to load your own data into the vectorstore.
4. Run the app: `make start`
   4.1. To enable tracing, make sure `langchain-server` is running locally and pass `tracing=True` to `get_chain` in `main.py`. You can find more documentation [here](https://langchain.readthedocs.io/en/latest/tracing.html).
5. Open [localhost:9000](http://localhost:9000) in your browser.