

# GenAI Docker Application

This repository contains a Python application that utilizes Google's **Generative AI** API. The app is containerized using **Docker** to ensure it runs consistently across environments.

## Prerequisites

Before proceeding with the installation and setup, ensure you have the following installed:

- **Docker**: Follow the [Docker installation guide](https://docs.docker.com/get-docker/) for your operating system.
- **API Key**: You need a **Google Generative AI** API key. If you don't have one, you can obtain it from the [Google Cloud Console](https://console.cloud.google.com/).

---

## Project Structure

The project is structured as follows:

```
Docker/
├── Dockerfile              # Dockerfile to build the container image
├── app/                    # Application files
    ├── main.py             # Main Python script to run
    ├── requirements.txt    # Python dependencies for the app
```

### `main.py`

This is the Python script that interacts with Google's Generative AI API.

### `requirements.txt`

This file lists the Python dependencies needed to run the application. Currently, it includes:

- `google-generativeai`

---

## Docker Setup

### 1. Clone the Repository

If you haven't already cloned the repository, use the following command:

```bash
git clone <your-repository-url>
cd <repository-directory>
```

### 2. Create the Docker Image

Navigate to the directory containing the `Dockerfile` and run the following command to build the Docker image:

```bash
sudo docker build -t genai-app .
```

This will create a Docker image named `genai-app`. It uses Python 3.9-slim as the base image and installs the required dependencies from the `requirements.txt` file.

### 3. Running the Docker Container

To run the container, use the following command. Make sure to replace `<your-api-key>` with your actual Google Generative AI API key:

```bash
sudo docker run -e GEMINI_API_KEY=<your-api-key> genai-app
```

This will run the application inside the Docker container, and it will use the provided API key to interact with Google's Generative AI.

---

## Troubleshooting

If you encounter issues during the build or run process, here are a few tips:

1. **File Not Found Errors**:
   Ensure the `requirements.txt` and `main.py` files exist in the `app/` directory. Check the file structure:
   ```bash
   ls app/
   ```

2. **Force Docker to Rebuild**:
   If you suspect the Docker image is being cached incorrectly, rebuild the image without cache:
   ```bash
   sudo docker build --no-cache -t genai-app .
   ```

3. **Updating Pip**:
   If you see a notice about an outdated version of pip, update it within the Dockerfile or install it manually in the container:
   ```bash
   RUN pip install --upgrade pip
   ```

4. **Check Docker Logs**:
   If you need more information about what's going wrong during the build or run, use:
   ```bash
   sudo docker logs <container-id>
   ```

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### Notes:
- Replace `<(https://github.com/Deepakragavan1013/Medify-task)>` with the actual URL of your repository.
