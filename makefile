# Project settings
APP_NAME := codex
MAIN_FILE := main.go

# Default target: build
.PHONY: all
all: build

# Build the project into a binary
.PHONY: build
build:
	@echo "Building $(APP_NAME)..."
	go build -o $(APP_NAME) $(MAIN_FILE)

# Run the project without creating a binary
.PHONY: run
run:
	@echo "Running $(APP_NAME)..."
	go run $(MAIN_FILE)

# Clean the compiled binary
.PHONY: clean
clean:
	@echo "Cleaning..."
	rm -f $(APP_NAME)

# Run tests (if you add test files)
.PHONY: test
test:
	@echo "Running tests..."
	go test ./...

# Format all Go files
.PHONY: fmt
fmt:
	@echo "Formatting code..."
	go fmt ./...
