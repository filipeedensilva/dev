# Function to request and validate user input
function Get-UserInput {
    param (
        [string]$Prompt
    )

    do {
        $input = Read-Host $Prompt

        if ($input -match '^\d+$') {
            $validInput = $true
        }
        else {
            Write-Host "Invalid input. Please enter a positive integer."
            $validInput = $false
        }
    } while (-not $validInput)

    return [int]$input
}

# Request user input for minutes until shutdown
$minutes = Get-UserInput -Prompt "Enter the number of minutes until poweroff"

# Convert minutes to seconds
$seconds = $minutes * 60

# Execute shutdown command
$shutdownCommand = "shutdown -s -t $seconds"
Invoke-Expression $shutdownCommand

Write-Host "Your system will poweroff in $minutes minute(s) ($seconds seconds)."
