**Course Project: Getting and Cleaning Data**
==============================================


**The script details for `run_analysis.R` are as follows:**

- This Script was written in Windows 8.1 64-bit OS.
- R version: 3.1.2 64-bit.
- RStudio version: 0.98.1102
- The dataset must be saved as `Dataset.Zip`.
- The command `method = "curl"` is not required in windows, it must be added by linux/Mac users.
- The commnd is: `download.file(fileurl, "Dataset.zip")`. There is no need to specify the full file path if the data is in working directory.
- The unzipped folder is `UCI HAR Dataset`. The filepath can be specified with this name: `filepath <- file.path("UCI HAR Dataset")`. Again there is no need to specify the full path.
- Given the above-mentioned conditions are   maintained, the scrip can be run flawlessly.
- The final output should be `Tidy_Data.txt` file, satisfying all conditions
- The description of data set is in the `CodeBook.md` file