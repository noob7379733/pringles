param (
    [string]
    $OutputPath
)

try {
    Invoke-WebRequest `
        -Uri 'https://github.com/v2fly/domain-list-community/releases/download/20211001023210/dlc.dat' `
        -OutFile 'geosite.dat'
}
catch {
    exit 1
}

mv -Force 'geosite.dat' $OutputPath
exit 0