#Made by ChatGPT 4
# Define the base directory where the year folders will be stored
$baseDirectory = "C:\Repositories"

# Get the current year as a string
$currentYear = (Get-Date).Year.ToString()

# Construct the path for the current year's directory
$yearDirectory = Join-Path -Path $baseDirectory -ChildPath $currentYear

# Ensure the year directory variable is not null before using it
if (-not [string]::IsNullOrWhiteSpace($yearDirectory)) {
    # Check if the current year's directory exists, if not, create it silently
    if (-not (Test-Path -Path $yearDirectory)) {
        New-Item -ItemType Directory -Path $yearDirectory -Force -ErrorAction SilentlyContinue | Out-Null
    }
    # Change to the year directory silently
    Set-Location $yearDirectory -ErrorAction SilentlyContinue

    # Check if the clipboard contains a GitHub URL
    $clipboard = Get-Clipboard;
    if ($clipboard -match 'https:\/\/github\.com\/') {
        # Print ready for cloning message in green
        Write-Host "Ready for cloning, paste your command:" -ForegroundColor Green
	} else {
    # Change to System32 directory silently
	Write-Host "No GitHub URL detected" -ForegroundColor Blue;
    Set-Location C:\Windows\System32 -ErrorAction SilentlyContinue
	}
}

<#
# Get the current year as a string
$currentYear = (Get-Date).Year.ToString()

# Construct the path for the current year's directory
$yearDirectory = Join-Path -Path $baseDirectory -ChildPath $currentYear

# Print out the variables to debug
Write-Host "Base Directory: $baseDirectory"
Write-Host "Current Year: $currentYear"
Write-Host "Year Directory: $yearDirectory"
#>

