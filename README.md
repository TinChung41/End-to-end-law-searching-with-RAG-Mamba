# Vietnam Law Document Assistant

## Overview

In the rapidly evolving legal landscape, the ability to efficiently retrieve, analyze, and utilize legal documents is crucial. This project aims to streamline the process of legal research in the context of **Vietnamese laws on marriage, traffic, and education** by leveraging advanced **large language models (LLMs)** like **Mamba 7b Mistral**. By combining natural language processing (NLP) with **Retrieval-Augmented Generation (RAG)**, this system enables accurate, context-aware document retrieval to assist legal professionals in quickly finding relevant statutes, case laws, and legal opinions.

## Problem Statement

Vietnamese law spans multiple domains, each with its own complexities. Lawyers and legal professionals often struggle with the time-consuming process of manually searching through laws and regulations. The current methods for legal research do not fully leverage AI's potential to speed up and optimize the retrieval of contextually relevant information, leading to inefficiencies in handling cases related to **marriage, traffic, and education laws**.

## Solution

This project integrates **Mamba 7b Mistral**, a state-of-the-art language model, with a **Retrieval-Augmented Generation (RAG)** approach to help lawyers and legal researchers efficiently access Vietnamese legal documents. The assistant utilizes **Elasticsearch** for fast document retrieval and integrates **Mamba 7b Mistral** to generate summaries and context-aware suggestions, ensuring high relevance and accuracy.

## Tech Stack

- **Mamba 7b Mistral**: A large language model for generating legal text summaries and suggestions.
- **Python**: The core language used for backend development and data processing.
- **Streamlit**: For building the web interface where legal professionals can interact with the assistant.
- **Elasticsearch**: A distributed search engine for fast retrieval of legal documents.
- **Docker**: To containerize the application for easy deployment and scaling.
- **Apache Airflow**: For managing and orchestrating data ingestion and indexing workflows.

## Dataset

- **Vietnamese Law Documents**: Legal statutes, case laws, and regulatory texts related to **marriage, traffic, and education** in Vietnam.

## RAG Flow

The system follows a **Retrieval-Augmented Generation (RAG)** approach where the assistant first retrieves relevant documents from the indexed database and then uses **Mamba 7b Mistral** to generate contextually appropriate responses.

1. **Document Storage**: Legal documents are stored in a structured **PostgreSQL** database.
2. **Indexing**: The database is indexed into **Elasticsearch** for fast, full-text search capabilities.
3. **RAG Querying**: User queries are processed by Elasticsearch for document retrieval, and the results are passed to the **Mamba 7b Mistral** model for generating relevant summaries.

## Interface

The web interface is built with **Streamlit**, providing an intuitive platform for querying and interacting with legal documents. Users can input legal queries and receive detailed responses, including document retrieval and AI-generated summaries.

## Ingestion Pipeline

Data ingestion is managed using **Apache Airflow**, which automates the process of loading legal documents into the PostgreSQL database and indexing them into Elasticsearch.

1. **Data Extraction**: Legal documents are extracted from CSV and JSON formats.
2. **Data Loading**: The extracted data is loaded into PostgreSQL tables.
3. **Indexing**: The documents are indexed into Elasticsearch for retrieval.

## Monitoring and Evaluation

The system is monitored using **Grafana**, providing real-time insights into key metrics such as query performance and user satisfaction.

---

## How to Run

1. Clone the repository and navigate to the project folder.
2. Build and run the Docker containers:
   ```bash
   docker-compose up --build -d
