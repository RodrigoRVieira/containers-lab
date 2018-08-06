### Volume mapping with read only rights

docker volume create vol_data

docker run -it --rm -v vol_data:/volume:ro ubuntu bash
