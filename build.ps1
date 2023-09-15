if (Test-Path artefacts)
{
    rm -r -fo artefacts
}

dotnet build -c Release

if ($?) {
    dotnet pack -c Release -o artefacts
}
