# Dockerfile for building Zork I with ZILF
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Install ZILF
WORKDIR /opt
RUN apt-get update && apt-get install -y wget unzip
RUN wget https://github.com/jessemcgrew/zilf/releases/download/v0.9/zilf-0.9-bin.zip && \
    unzip zilf-0.9-bin.zip && \
    chmod +x zilf-0.9/zilf zilf-0.9/zapf

ENV PATH="/opt/zilf-0.9:${PATH}"

# Set working directory
WORKDIR /zork
COPY . .

# Default command
CMD ["bash"]
