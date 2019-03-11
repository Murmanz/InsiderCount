﻿######################################################################## 
# Coded by Murray Wall
# Generated On: 3/09/2019 8:38 PM 
# Generated By: Murray Wall (http://www.onthewinside.com) 
# Version: 1.0.3
# Last Updated: 3/11/2019 8:58 AM
#
# ChangeLog - Added Assembly to Compile EXE 
######################################################################## 

Add-Type -AssemblyName System.Windows.Forms
$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object System.Drawing.Size(1000,700)
$form.Text = "Windows Insider Information on Current Workstation By Murray Wall WWW.OnTheWinSide.com" 
$Icon = New-Object system.drawing.icon ("OnTheWinSide.ico")
$Form.Icon = $Icon
$form.AutoSize = 1
$form.AutoSizeMode = "GrowAndShrink"
$Script:BuildInfo = Get-childItem -Path HKLM:\SYSTEM\Setup\| ForEach-Object {Get-ItemProperty $_.pspath}|where {$_.Currentbuild -gt 1}|select CurrentBuild,  BuildLab,ReleaseID,EditionID,ProductName,pschildname|sort Currentbuild
$Script:Group = Get-childItem -Path HKLM:\SYSTEM\Setup\| ForEach-Object {Get-ItemProperty $_.pspath}|where {$_.Currentbuild -gt 1}|select CurrentBuild,  BuildLab,ReleaseID,EditionID,ProductName,pschildname|sort Currentbuild|group ReleaseID
$Script:CurrentRelease = (Get-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\"| ForEach-Object {Get-ItemProperty $_.pspath}).releaseid

$list = New-Object System.collections.ArrayList
$list.AddRange($Buildinfo)
if ($group.name.count -gt 1){
$list2 = New-Object System.collections.ArrayList
$list2.AddRange($Group)
}
$button1_OnClick=  
{ 
    $Form.Close() 
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
    Size=New-Object System.Drawing.Size(100,23)
    Location =  New-Object System.Drawing.Point(100,6)
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
$form.ShowDialog()