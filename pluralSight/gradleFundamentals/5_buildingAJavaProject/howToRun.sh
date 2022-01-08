
# 2_Writing Your First Java Build
cd jacket/Repository
gradle tasks --all
gradle build
gradle clean    #Repository-1.0.SNAPSHOT.jar
###############################################################################
# 3_Details of the Java Plugin
gradle --console 'verbose' clean
gradle --console 'verbose' compileJava
gradle clean
gradle --console 'verbose' classes
gradle clean
gradle --console 'verbose' build
gradle clean
gradle --console 'verbose' assemble
###############################################################################
# 4_Using the Gradle Daemon
gradle clean
gradle build
gradle --console 'verbose' --daemon clean
gradle --console 'verbose' --daemon build
# opting daemon in properties file
cd $HOME/.gradle
echo "org.gradle.daemon=true" >> gradle.properties
gradle --console 'verbose' clean build
gradle --console 'verbose' --no-daemon clean build
gradle --console 'verbose' clean build
rm -f $HOME/.gradle/gradle.properties
###############################################################################
# 5_Writing a Multi-project Build
cd JacketService/
#  Task :compileJava FAILED
#  error: package com.pluralsight.repository does not exist
gradle --console 'verbose' build
# make files in top level project
touch jacket/settings.gradle
echo "include 'Repository', 'JacketService'" >> jacket/settings.gradle
touch jacket/build.gradle
gradle --console 'verbose' build

# Could not find method compile() for arguments [project ':Repository'] 
# on object of type org.gradle.api.internal.artifacts.dsl.dependencies.DefaultDependencyHandler.

###############################################################################