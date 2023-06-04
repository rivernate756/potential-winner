# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Clone the repository and install dependencies
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/tom-snow/PyroEdgeGPTBot && \
    cd PyroEdgeGPTBot && \
    pip install -r requirements.txt
    
# Set the working directory to /app
WORKDIR /PyroEdgeGPTBot

#Install flask python module
RUN pip install flask

# Copy the web service code to /PyroEdgeGPTBot
COPY web.py /PyroEdgeGPTBot

# Run the bot when the container launches
CMD python PyroEdgeGptBot.py & python web.py
