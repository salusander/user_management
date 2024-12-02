if($args.Count -ne 3) {
    Write-Host -ForegroundColor Red '.\script username "Full Name" "Account description"'
} else {
    $username = $args[0]
    $fullname = $args[1]
    $description = $args[2]

    $userPassword = ConvertTo-SecureString 'qwerty' -AsPlainText -Force
    New-LocalUser 'kasutaja1' -Password $userPassword -FullName 'Esimene kasutaja' -Description 'Local Acc - kasutaja1'
}