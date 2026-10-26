# Use a slim Python image that already ships uv.
# A `COPY --from=ghcr.io/astral-sh/uv:latest` step fails on some BuildKit
# builders with an overlay cachemount error, so take uv from the base image.
FROM ghcr.io/astral-sh/uv:python3.11-bookworm-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install the project and its dependencies
# We use --system to install into the system Python environment in the container
RUN uv pip install --system ".[redis]"

# Expose port 8080 (default for Cloud Run)
EXPOSE 8080

# Define the command to run the server
# This uses the entry point defined in pyproject.toml
CMD ["google-ads-mcp"]
