Explanation of the run_analysis.R script:

- This script reads the test and training datasets into dataframes, with correct column headings.
- Only columns relating to the mean and standard deviation of measurements, are kept.
- Subjects and activities are read from seperate files, and added to the datasets as new columns.
- The test and training datasets are merged into one dataset.
- The merged dataset is 'melted' and 'cast' to form a new dataset that averages each variable, grouped by activity and subject.
