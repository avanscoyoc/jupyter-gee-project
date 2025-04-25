# jupyter-gee-project

## Overview
This project contains Jupyter notebooks for analyzing geospatial data using Google Earth Engine (GEE). The notebooks include code for protected area boundary analysis, Landsat imagery retrieval, data processing, cloud masking, and image export functionality.

## Project Structure
```
jupyter-gee-project
├── notebooks
│   ├── pa_boundary_python.ipynb
│   └── Recreating_spectral_database_leb.ipynb
├── Dockerfile
├── requirements.txt
└── README.md
```

## Setup Instructions

### Prerequisites
- Access to a JupyterHub instance
- Docker installed on your machine (if running locally)

### Using with JupyterHub
The project is optimized for JupyterHub environments. Simply build and use the Docker image with your JupyterHub instance:

```bash
docker build -t gee-analysis .
```

### Running Locally
If you prefer to run the notebooks locally:

1. Build the Docker image:
   ```bash
   docker build -t gee-analysis .
   ```

2. Start the container:
   ```bash
   docker run -p 8888:8888 -v $(pwd):/work gee-analysis
   ```

3. Open your web browser and navigate to the URL shown in the terminal output.

### Dependencies
The project uses these core Python libraries:
- `earthengine-api` - Google Earth Engine Python API
- `geemap` - Interactive mapping with GEE
- `numpy` - Numerical computations
- `pandas` - Data analysis
- `folium` - Interactive maps
- `ipyleaflet` - Interactive maps for Jupyter

Dependencies are automatically installed when building the Docker image.

## Google Earth Engine Authentication
When running the notebooks for the first time, you'll need to authenticate with Google Earth Engine:
1. The notebook will prompt you to authenticate when you run the first GEE cell
2. Follow the authentication link provided
3. Copy and paste the authentication token back into the notebook

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.