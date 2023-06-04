import os
# Import Flask module
from flask import Flask

# Create an instance of Flask class
app = Flask(__name__)

# Define a route for the default URL (/)
@app.route("/")
def hello():
    # Return a simple response
    return "Hello world!"
	
# Run the app on the port specified by the variable PORT
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
