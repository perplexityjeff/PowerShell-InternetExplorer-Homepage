function Set-IEHomePage ([string]$website) 
{
    #Declares
    $path = 'HKCU:\Software\Microsoft\Internet Explorer\Main'

    #Check if the registry key already exists
    $pathExists = Test-Path $path
    if ($pathExists)
    {
        #Set the new homepage
        Set-ItemProperty -Path $path -Name "Main" -Value $website
        Set-ItemProperty -Path $path -Name "Default_Page_Url" -Value $website
    }
}