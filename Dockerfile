# Dockerfile for building Zork I with ZILF
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Install dependencies
WORKDIR /opt
RUN apt-get update && apt-get install -y wget unzip

# Download and install ZILF
# Visit https://github.com/taradinoc/zilf/releases for latest version
RUN wget https://github.com/taradinoc/zilf/releases/download/0.11.1/zilf-0.11.1-bin.zip && \
    unzip zilf-0.11.1-bin.zip && \
    chmod +x zilf-0.11.1/bin/zilf zilf-0.11.1/bin/zapf

ENV PATH="/opt/zilf-0.11.1/bin:${PATH}"

# Set working directory
WORKDIR /zork
COPY . .

# Default command
CMD ["bash"]
