Configuration Config-Website {
    param(
        [string[]] $ComputerName="localhost"
    )

    Import-DscResource -Name xRemoteFile,xWindowsFeature -ModuleName "xPSDesiredStateConfiguration"


    Node $ComputerName {
        xWindowsFeature WebServer {
            Ensure = "Present"
            Name = "Web-Server"
        }

        xRemoteFile index.html {
            DestinationPath = "C:\inetpub\wwwroot\index.html"
            Uri = "https://raw.githubusercontent.com/sigurdkb/dat210/master/index.html"
            MatchSource = $true
        }

        xRemoteFile welcome.jpg {
            DestinationPath = "C:\inetpub\wwwroot\welcome.jpg"
            Uri = "https://raw.githubusercontent.com/sigurdkb/dat210/master/welcome.jpg"
            MatchSource = $true
        }
    }
}
