# Provide the path to your CSV file
$CSV_FILE = "C:\Users\fnjoh\AWS CSV files And Scripts\AddLogGroupsPlusTagsOnly.csv"

# Read the CSV file and add tags to log groups
Get-Content $CSV_FILE | ForEach-Object {
    # Split CSV columns into variables
    $logGroupName, $tags = $_ -split ','

    # Add tags to log group
   aws logs tag-log-group --log-group-name $logGroupName --tags "$tags" --profile fnjoha-infra
}
