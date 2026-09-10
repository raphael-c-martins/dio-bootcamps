# Pegar o diretório atual

$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Arquivo saída com todos sql

$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# Verificar se o arquivo já existe, se existir, deletar

if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Pega conteúdo dos arquivos (excluindo a própria migration.sql)

$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File | Where-Object Name -ne "migration.sql" | Sort-Object Name

# Concatena Arquivos

foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -FilePath $outputFile -Encoding utf8 -Append
    "`n" | Out-File -FilePath $outputFile -Encoding utf8 -Append
}

Write-Host "Arquivos combinados em: $outputFile"
