﻿######################################################################## 
# Coded by Murray Wall
# Generated On: 3/09/2019 8:38 PM 
# Generated By: Murray Wall (http://www.onthewinside.com) 
# Version: 1.0.5
# Last Updated: 3/11/2019 5:58 PM
#
# ChangeLog - Added Assembly to Compile EXE 
#           - Imbedded Icon Code
#           - Fix error on Single Build Computers
#           - Fix Long Machine Name lengths
######################################################################## 

Add-Type -AssemblyName System.Windows.Forms
$IconBase64String = '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'
$IconImageBytes   = [convert]::FromBase64String($IconBase64String)
$IconImageStream  = New-Object IO.MemoryStream
$IconImageStream.Write( $IconImageBytes, 0, $IconImageBytes.Length )
$Icon = [System.Drawing.Image]::FromStream( $IconImageStream, $true )

$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object System.Drawing.Size(1000,700)
$form.Text = "Windows Insider Information on Current Workstation By Murray Wall WWW.OnTheWinSide.com" 
#$Icon = New-Object system.drawing.icon ("OnTheWinSide.ico")
#$Form.Icon = $Icon
$Form.Icon =[System.Drawing.Icon]::FromHandle( $Icon.GetHicon() )
$form.AutoSize = 1
$form.AutoSizeMode = "GrowAndShrink"
$Script:BuildInfo = Get-childItem -Path HKLM:\SYSTEM\Setup\| ForEach-Object {Get-ItemProperty $_.pspath}|where {$_.Currentbuild -gt 1}|select CurrentBuild,  BuildLab,ReleaseID,EditionID,ProductName,pschildname|sort Currentbuild
$Script:Group = Get-childItem -Path HKLM:\SYSTEM\Setup\| ForEach-Object {Get-ItemProperty $_.pspath}|where {$_.Currentbuild -gt 1}|select CurrentBuild,  BuildLab,ReleaseID,EditionID,ProductName,pschildname|sort Currentbuild|group ReleaseID
$Script:CurrentRelease = (Get-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\"| ForEach-Object {Get-ItemProperty $_.pspath}).releaseid
if ($Buildinfo.releaseid.count -gt 1){
$list = New-Object System.collections.ArrayList
$list.AddRange($Buildinfo)
}
if ($group.name.count -gt 1){
$list2 = New-Object System.collections.ArrayList
$list2.AddRange($Group)
}
$button1_OnClick=  
{ 
    $Form.Close() |out-null
} 
$Compinfo=Get-WmiObject win32_operatingsystem|Select * 
$label0 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(80,23)
    Location =  New-Object System.Drawing.Point(13,5)
    Text = "Current Info:"
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label0"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,102,204) 

}
$form.Controls.Add($label0)

$label1 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(230,23)
    Location =  New-Object System.Drawing.Point(13,25)
    Text = "Windows Previous Build Info:" 
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label1"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,102,204) 

}
$form.Controls.Add($label1)

$label2 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(130,23)
    Location =  New-Object System.Drawing.Point(92,6)
    Text = $compinfo.PSComputerName
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label2"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,175,175) 

}
$form.Controls.Add($label2)

$label3 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(75,23)
    Location =  New-Object System.Drawing.Point(220,6)
    Text = $compinfo.version
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label3"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,175,175) 

}
$form.Controls.Add($label3)

$label4 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(80,23)
    Location =  New-Object System.Drawing.Point(330,6)
    Text = "InstallDate:"
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label4"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,102,204) 

}
$form.Controls.Add($label4)

$label5 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(150,23)
    Location =  New-Object System.Drawing.Point(410,6)
    Text = (Get-CimInstance -ClassName Win32_OperatingSystem).InstallDate
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label5"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,175,175) 

}
$form.Controls.Add($label5)

$label6 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(180,23)
    Location =  New-Object System.Drawing.Point(13,480)
    Text = "Total Upgrades Since Install:"
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label6"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,102,204) 
}
$form.Controls.Add($label6)

 
$label7 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(60,23)
    Location =  New-Object System.Drawing.Point(190,480)
    Text = $buildinfo.count
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label7"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,175,175) 

}
$form.Controls.Add($label7)

$label8 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(160,23)
    Location =  New-Object System.Drawing.Point(250,480)
    Text = "Previous Release Builds:"
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label8"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,102,204) 


}
$form.Controls.Add($label8)

$label9 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(60,23)
    Location =  New-Object System.Drawing.Point(420,480)
    Text = $Group.Name.count
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label9"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,175,175) 

}
$form.Controls.Add($label9)


$label10 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(120,23)
    Location =  New-Object System.Drawing.Point(560,6)
    Text = "Current Release:"
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label10"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,102,204) 

}
$form.Controls.Add($label10)

$label11 = New-Object System.Windows.Forms.Label -Property @{
    Size=New-Object System.Drawing.Size(100,23)
    Location =  New-Object System.Drawing.Point(680,6)
    Text = $CurrentRelease
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9.75,2,3,0)
    Name = "label11"
    ForeColor = [System.Drawing.Color]::FromArgb(255,0,175,175) 

}
$form.Controls.Add($label11)



$dataGridView = New-Object System.Windows.Forms.DataGridView -Property @{
    Size=New-Object System.Drawing.Size(930,400)
    ColumnHeadersVisible = $true
    AutoSizeColumnsMode = 'AllCells'
    DataSource = $list
    Location =  New-Object System.Drawing.Point(13,48)
}

$form.Controls.Add($dataGridView)
if ($group.name.count -gt 1){
$dataGridViewSmall = New-Object System.Windows.Forms.DataGridView -Property @{
    Size=New-Object System.Drawing.Size(200,100)
    ColumnHeadersVisible = $true
    AutoSizeColumnsMode = 'AllCells'
    DataSource = $list2
    Location =  New-Object System.Drawing.Point(250,510)
}

$form.Controls.Add($dataGridViewSmall)
}

$button1 = New-Object System.Windows.Forms.Button  -Property @{

    TabIndex = 1 
    Name = "button1" 
    Size=New-Object System.Drawing.Size(105,50)
    Font = New-Object System.Drawing.Font("Microsoft Sans Serif",20.75,1,3,0)
    UseVisualStyleBackColor = $True 
    Location =  New-Object System.Drawing.Point(800,480)
    Text = "Close" 


}
$button1.add_Click($button1_OnClick) 
$form.Controls.Add($button1) 
$form.ShowDialog()|Out-Null