# Set pipeline
fly -t pipeline-app sp -c interpret/job-interpret.yml -p build-test

# Trigger pipeline job
fly -t pipeline-app up -p build-test
fly -t pipeline-app tj -j build-test/job-interpret -w

# List of builds
fly -t pipeline-app builds
