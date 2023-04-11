# WriteToFile.ps1

# Define the file path where you want to save the text file
$filePath = "C:\example\output.txt"

# Define the variable value
$variableValue = "This is the variable value"

# Define the content you want to write to the file
$content = @"
Hello, World!
$variableValue
This is an example text written to a file using a PowerShell script.
"@ # The @" "@ syntax is used for multi-line strings in PowerShell

# Check if the file already exists
if (Test-Path -Path $filePath) {
    # If the file exists, append the content
    Add-Content -Path $filePath -Value $content
} else {
    # If the file doesn't exist, create it and write the content
    Set-Content -Path $filePath -Value $content
}

# Output a message indicating the file has been written
Write-Host "Content has been written to the file '$filePath'"
