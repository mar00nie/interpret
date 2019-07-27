# Set pipeline
fly -t pipeline-app sp -c interpret/azure-pipelines.yml -p build-test

# Unpause pipeline
fly -t pipeline-app up -p build-test

# Trigger pipeline job
fly -t pipeline-app tj -j build-test/job-interpret -w

# List of builds
fly -t pipeline-app builds
