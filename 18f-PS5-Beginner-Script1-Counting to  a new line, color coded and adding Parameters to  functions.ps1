Function Count-Numbers ()
{
    Param
        (
        [Parameter(Mandatory=$true,Position=0)]
        [int]$StartCount,
        [Parameter(Mandatory=$true,Position=1)]
        [int]$endcount
        )   
   for ($startcount -eq 0;$StartCount -le $EndCount;$StartCount++)
   {
    Write-Host "`t`t $StartCount is being counted" -BackgroundColor Red
    start-sleep 1
    }
 }
 cls
<#################################################################>
Function Count-NumbersInfinity ()
{
    Param
        (
        [Parameter(Mandatory=$true,Position=0)]
        [int64]$StartCount,
        [Parameter(Mandatory=$true,Position=1)]
        [int64]$endcount
        )   
   for ($startcount -eq 0;$StartCount -le $EndCount;$StartCount++)
   {
    Write-Host "`t`t #$StartCount" -BackgroundColor Yellow -ForeGroundColor Black
    start-sleep 0
    }
 }
 cls
Count-Numbers -StartCount 7 -endcount 17
Count-NumbersInfinity -StartCount 7 -endcount 777777777777
#Notes ctrl-c to stop counting forever <3
#System32 integer can't be larger?
Function Count-NumbersInfinity ()
{
    Param
        (
        [Parameter(Mandatory=$true,Position=0)]
        [int64]$StartCount,
        [Parameter(Mandatory=$true,Position=1)]
        [int64]$endcount
        )   
   for ($startcount -eq 0;$StartCount -le $EndCount;$StartCount++)
   {
    Write-Host "`t`t #$StartCount" -BackgroundColor Yellow -ForeGroundColor Black
    start-sleep 0
    }
 }
 cls
#Count-Numbers -StartCount 7 -endcount 17
Count-NumbersInfinity -StartCount 7 -endcount 77777777777777777777
<#PS C:\Users\A19mk> Count-NumbersInfinity -StartCount 7 -endcount 7777777777
Count-NumbersInfinity : Cannot process argument transformation on parameter 'endcount'.
Cannot convert value "7777777777" to type "System.Int32". Error: "Value was either too
large or too small for an Int32."
At line:1 char:47
+ Count-NumbersInfinity -StartCount 7 -endcount 7777777777
+                                               ~~~~~~~~~~
    + CategoryInfo          : InvalidData: (:) [Count-NumbersInfinity], ParameterBindingA
   rgumentTransformationException
    + FullyQualifiedErrorId : ParameterArgumentTransformationError,Count-NumbersInfinity
#>
