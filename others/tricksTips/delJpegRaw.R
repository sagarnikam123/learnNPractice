# finds deleted jpeg photos & deletes respective raw files

# Raw folder
rawFolderPath = "/media/sagar.nikam@ad.msystechnologies.com/Quantum Space/nakhara/camTech/Shiv Jayanti 2019/raw"
rawFolderFiles = dir(rawFolderPath)

# rawToJpeg folder
rawToJpegFolderPath = "/media/sagar.nikam@ad.msystechnologies.com/Quantum Space/nakhara/camTech/Shiv Jayanti 2019/rawToJpeg"
rawToJpegFolderFiles = dir(rawToJpegFolderPath)


onlyFileName <- function(x) {
  z = strsplit(x, "[.]")
  return (z[[1]][1])
}

rawFileNamesOnly = lapply(rawFolderFiles, onlyFileName)

rawJpegFileNamesOnly = lapply(rawToJpegFolderFiles, onlyFileName)

rawFileToBeDeleted = setdiff(rawFileNamesOnly,rawJpegFileNamesOnly)

for (delFilName in rawFileToBeDeleted)  {
  file.remove(paste(rawFolderPath,"/",delFilName, ".CR2", sep=""))
  # print(paste(rawFolderPath, delFilName, ".CR2", sep=""))
}
