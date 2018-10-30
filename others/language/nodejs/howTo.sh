# packaing nodejs app inside docker container

# create packge.json
cd app
npm install

docker build -t sagarnikam123/node-web-app .
docker run -p 49160:8080 -d sagarnikam123/node-web-app

# saving or exporting to tar
# save will fetch an image
# export will fetch the whole container
docker save sagarnikam123/node-web-app --output node-web-app.tar
# docker save -o ubuntu.tar ubuntu:lucid ubuntu:saucy
#docker export sagarnikam123/node-web-app --output="node-web-appExported.tar"
#docker export red_panda > node-web-app.tar

# importing or loading from .tar image
# docker import creates one image from one tarball which is not even an image (just a filesystem you want to import as an image)
# docker load creates potentially multiple images from a tarred repository (since docker save can save multiple images in a tarball).
#docker load < busybox.tar.gz
docker load --input node-web-app.tar

# Save docker image to local in tar
pipeline {
  environment {
    registry = "sagarnikam123/node-web-app"
    dockerImage = ''
    outputImageTarNameWithExt = "node-web-app.tar"
  }
  agent any

  stages {

      stage('changeDir + Building image') {
        steps{
          script {
                dir('/home/quanta/Documents/git/learnNPractice/others/language/nodejs/app') {
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
              }
          }
        }
      }

      stage('Save to .tar file') {
      steps{
      script {
        sh 'docker save ' + dockerImage.imageName() + ' --output $HOME/' + outputImageTarNameWithExt
        }
      }
    }
    }
}
