# Test file for ci/cd

# Base Image
FROM python:3.12
# Working Dir
WORKDIR /ci_cd
# Reqs
COPY requirements.txt .
# What to run
RUN pip install -r requirements.txt
# Copy all of it
COPY . .
# Then the command
CMD [ "flask", "run", "--host=0.0.0.0", "--port=5000", "--debugger", "--reload" ]


# Hello what is going on right now?
