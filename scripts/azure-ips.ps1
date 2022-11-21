$SiteAddress = "https://www.microsoft.com/en-us/download/confirmation.aspx?id=56519"
$HttpContent = Invoke-WebRequest -URI $SiteAddress -UseBasicParsing
$JsonLink = $HttpContent.Links | Where-Object href -like '*json' | Select-Object href -first 1
Invoke-WebRequest -URI $JsonLink.href -UseBasicParsing -Out links.json
