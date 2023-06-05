# Use an official Python runtime as a parent image
FROM python

# Clone the repository and install dependencies
RUN git clone https://github.com/tom-snow/PyroEdgeGPTBot Bot && \
    cd Bot && \
    pip install -r requirements.txt
    
# Set the working directory to /app
WORKDIR /Bot

#Install flask python module
RUN pip install flask

# Copy the web service code to /PyroEdgeGPTBot
COPY web.py /Bot

# Run the bot when the container launches
CMD python web.py > /dev/null & python PyroEdgeGptBot.py > /dev/null
