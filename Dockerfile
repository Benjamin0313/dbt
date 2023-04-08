FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    python3 \
    python3-pip

# Install dbt and dependencies
RUN pip3 install dbt-snowflake

# Set up a working directory
WORKDIR /Users/daisuke.harato/Documents/mypoc/dbt

# Copy the project into the container
COPY . .