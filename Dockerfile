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

# Expose port 8080
EXPOSE 8080

# Then the command
CMD ["python3", "app.py"]


# Hello what is going on right now?
