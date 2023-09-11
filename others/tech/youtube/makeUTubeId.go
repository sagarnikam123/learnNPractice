/*
- This programs take a file with video info with full path
- Write down a file with only video ids
*/

package main

import (
	"bufio"
	"log"
	"os"
)

func main() {
	/*
		This file contains downloaded videos description with full path, e.g.
		/home/quanta/Downloads/uTube/Byte By Byte/Interview Question - Big Int Modulus-5LCuroQltsc.mp4
		/home/quanta/Downloads/uTube/Byte By Byte/Interview Question - Binary Search Tree-dB9aikwZttY.mp4
	*/
	fileFullPath := "/home/quanta/Desktop/teamNaach"
	outPutFilePath := "/home/quanta/Dropbox/downloadArchive/uTubeDownloadArchive/teamNaach"

	// opening file
	fileRead, err := os.Open(fileFullPath)
	if err != nil {
		log.Fatal(err)
	}
	defer fileRead.Close()

	if _, errFileExists := os.Stat(outPutFilePath); os.IsNotExist(errFileExists) {
		createFileWithFullPath(outPutFilePath)
	}
	// for appending a file
	fileWriteAppend, err := os.OpenFile(outPutFilePath, os.O_APPEND|os.O_WRONLY, 0600)
	if err != nil {
		panic(err)
	}
	defer fileWriteAppend.Close()

	// reading file line by line
	scannerRead := bufio.NewScanner(fileRead)
	if errRead := scannerRead.Err(); errRead != nil {
		log.Fatal(errRead)
	}

	// reading
	for scannerRead.Scan() {
		// processing on each line
		eachLine := scannerRead.Text()
		lineLength := len(eachLine)
		videoID := eachLine[lineLength-15 : lineLength-4]
		//fmt.Println(videoID)

		// writing
		if _, err = fileWriteAppend.WriteString("youtube " + videoID + "\n"); err != nil {
			panic(err)
		}

	}

}

// create file if file not exists
func createFileWithFullPath(path string) error {
	file, err := os.Create(path)
	if err != nil {
		return err
	}
	defer file.Close()
	return nil
}
