# Setting up a Linux Kernel for LLM Development in Docker

This guide provides step-by-step instructions on setting up a Linux development environment with a Jupyter kernel inside a Docker container, specifically tailored for working with large language models (LLMs). It then demonstrates how to connect to this remote kernel from VS Code for a seamless interactive development experience.

## Prerequisites

*   **Docker Desktop:** Installed and running on your system.
*   **VS Code:** With the following extensions:
    *   Python
    *   Jupyter
    *   (Optional) Remote - SSH (for the most secure setup, not covered in this guide)
*   **NVIDIA GPU and Drivers:** Properly installed and configured (if you intend to use GPU acceleration).

## Project Structure

It's recommended to organize your project with the following structure:
