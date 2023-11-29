# AWS_AutoTaggingCWL-Loggroups
This is a PowerShell script that reads a CSV file containing log group names and tags. For each line in the CSV, it splits the columns into variables, representing the log group name and tags. Then, it uses the AWS CLI to add the specified tags to the corresponding log group in AWS CloudWatch Logs 
