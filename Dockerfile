# Start with the Python base image
FROM python:3.11-bookworm

# Install Poetry
RUN pip install poetry==2.0.1

# Set environment variables for Poetry
ENV POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_IN_PROJECT=1 \
    POETRY_VIRTUALENVS_CREATE=1 \
    POETRY_CACHE_DIR=/tmp/poetry_cache

# Set the working directory
WORKDIR /app

# Copy the project files
COPY app/pyproject.toml app/poetry.lock ./

# Create an empty README.md to prevent errors
RUN touch README.md

# Recreate the lock file (if needed) and install dependencies
RUN rm poetry.lock && poetry lock
RUN poetry install --without dev --no-root && rm -rf $POETRY_CACHE_DIR

# Copy the application code into the container
COPY app ./app

# Set the PATH to use the virtual environment
ENV PATH="/app/.venv/bin:$PATH"
