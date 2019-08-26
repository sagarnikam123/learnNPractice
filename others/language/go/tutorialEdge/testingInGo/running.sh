
# Running Our Tests/Table Driven Testing
cd /others/language/go/tutorialEdge/testingInGo
go test

# Verbose Test Output
go test -v

# Checking Test Coverage
# Using the -cover flag
go test -cover

# Visualizing Coverage
go test -coverprofile=coverage.out
go tool cover -html=coverage.out
