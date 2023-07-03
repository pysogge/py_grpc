# GRPC Python Test

## Pre-requisites
Python 3.7+

## Install

```bash
# MacOS Core Tools (timeout)
brew install coreutils

# Python
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Setup
```bash
# Generate the proto files
make proto
```

## Run

```bash
# Server (in one terminal)
make server
# ctrl+c to stop

# Client (in another terminal)
make client
```

## Demo

```bash
# This will run the server as a background process for 10 seconds
make demo
# This will run the client
make client
make client
make client

# server will automatically stop after 10 seconds

```