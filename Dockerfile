# Test file for ci/cd

# Base Image
FROM python:3.12
# Working Dir
WORKDIR /ci_cd

# Env vars for ports
ENV PORT 8080
ENV HOST 0.0.0.0

# Reqs
COPY requirements.txt .
# What to run
RUN pip install -r requirements.txt
# Copy all of it
COPY . .


# Then the command
CMD ["python3", "app.py"]


# Hello what is going on right now?
