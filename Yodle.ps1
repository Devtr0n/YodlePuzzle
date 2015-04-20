$total = 0
$list=@(Invoke-webrequest -URI "http://www.yodlecareers.com/puzzles/triangle.txt").Content -split '\s+'					#PowerShell V3
#$list=@(new-object Net.WebClient).DownloadString("http://www.yodlecareers.com/puzzles/triangle.txt") -split '\s+' | iex 	#PowerShell V2
foreach ($item In $list) { $total += $item } "Total: " + '{0:n2}' -f $total 