# CleaningDataProject

## Data Source
The data were obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the study can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Creating tidy data
The first part of the script loads in the packages that are used.

The second part of the script loads the data from .txt files using the read.table function. The data are in two groups: train and test. For each group, there are 3 separate files that contain data (subject_train, x_train, y_train). All 6 of these files are merged into a single data frame "data"

The next part of the script reorganizes the data so that each row contains only one observation,  each column is only one measurement, column variables do not contain data, and the data and variables are descriptive. First, the various measurement variables are gathered into a single column called "measurement". Next, we extract only the measurements of means and standard deviations and discard the other measurements. The result is a data frame containing 5 columns: subjectid, activity, measurement, mean, stdev.

We further cleanup the variable names and contents to be more descriptive. First, we remove the excess "." and any "mean" or "std" from the data in "measurement." Then, we label the activities with text factor labels (walking, walking_upstairs, walking_downstairs, sitting, standing, laying). The resulting dataset called "data" is our first tidy data set.

Finally, we create a second tidy data set "tidy" that contains the averages of the means for each measurement for each activity for each activity for each subjectid. This is done by grouping in levels (measurement > activity > subjectid) and then taking the mean of "mean" grouped in these levels.

At the end, we save both of these new data sets to files in the subdirectory "tinydata". The files are data.csv and tiny.csv

