   M S B A M L   `   `   `  ����?  ;Code, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Code.Views.NenTang.GoogleCode.Views.NenTang.Google  5      1clr-namespace:Code.ViewModelsCode.ViewModels  5      'clr-namespace:Code.Views
Code.Views  5      5    /Code.Views.NenTang.Google.TaoTaiKhoanGoogleView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:Code.Views.NenTang.Google     5      3	viewModelclr-namespace:Code.ViewModels     5      )viewclr-namespace:Code.Views     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5	      .��5      �   � RowDefinitions  5   
   �� 5      $��70 �6   �� 5      $��50 �6   �� 5      �� 5      $��80 �6   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      	�    
mainButton#��[  6   ��6B   �� *ShowPopUpWindowCommand+.��5      �� $ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Play=�6'     mainButtonIcon#��[ 63      
Foreground
 �/���6[   �� 5      $��
Thực thi��6$     titleColor2#��[ 5   $   $��18(�5   $   $��
Moutserrat)�5   $   $��Medium"�5   $   $��40��68   $��	0,15,10,0q�5   $   5      5      	� 5       #��[  6   ��6B   �� *
StopAction+.��5!      �� $ 
Horizontal=�6!   .+�5"        $
 Stop=�6'   #��[ 63   
 �  ��6[   �� 5#      $��Dừng��6$   #��[ 5$   $   $��18(�5%   $   $��
Moutserrat)�5&   $   $��Medium"�5'   $   $��40��68   $��	0,15,10,0q�5(   $   5)      5*      5+      5,      � 5-   
   $��1��6   .+�5.      �� $ 
Horizontal=�6   $	��Top=�5/      .+�50      �� $$��Quá trình tạo tài khoản��6   #��[ 51   $   $��18(�52   $   $��
Moutserrat)�53   $   $��Medium"�54   $   $��40��68   $��20,0,0,0q�55   $   56      57      �� 58   
   $��2��6   ���#200F53 �� CornerRadius$ 10��5:       �� Padding$ 10q�5;      ._�5<      &   System.Windows.Controls.DataGrid  -   5          Name$ deviceStatus��5<   '      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6      AutoGenerateColumns .  	   
IsReadOnly	 . ���#200F53$��0q�5>      
   CanUserAddRows
 .     CanUserResizeColumns .     CanUserResizeRows .     HeadersVisibility$ Column=�5B         GridLinesVisibility$
 None=�5D      ��5C      �� *	devices+   ColumnHeaderStyle 5E      �� 5F       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5G      ��  �� Property � �� �� Value
 ���� 67   �� 5H       � �� �#BCBEE067   �� 5I       � ��$ 0q�64   �� 5J       � ��$ 
Montserrat)�67   �� 5K       � ��$ 18(�65   �� 5L       � ��$ Medium"�67   �� 5M       � ��$ Center=�6@   5N         RowStyle 5P      �� 5Q      )  #System.Windows.Controls.DataGridRow"  6   .�5R      ��  � ��$ Center=�6G   �� 5S       � ��
 ���� 67   �� 5T       � �� �#BCBEE067   �� 5U       � ��$ 0q�64   �� 5V       � ��$ 
Montserrat)�67   �� 5W       � ��$ 15(�65   �� 5X       � ��$ Center=�6G   5Y         	CellStyle 5[      �� 5\      *  $System.Windows.Controls.DataGridCell"  6   .�5]      ��  � ��$ Center=�6@   �� 5^       � ��$ 
Montserrat)�67   �� 5_       � ��$ 15(�65   5`         Columns 5b      0  *System.Windows.Controls.DataGridTextColumn  5c      ,	  &System.Windows.Controls.DataGridColumn 	  Header$	 STT��6d    	  Width$ 50 6q   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 6)   �� *Stt+ 
  ClipboardContentBinding 6A   Z� 6q     5d      $ Mã thiết bị��6i   $	 150 6~    6)   �� *
DeviceId+ 6F   Z� 6~     5e      $ Trạng thái��6g   $ * 6{    6)   �� *Status+ 6D   Z� 6{   5g      5h      � 5i   
   $��3��6   .+�5j      �� $ Vertical=�6   $	��Top=�5k      .+�5l      �� $ 
Horizontal=�6   .+�5m      �� $*��$Số tài khoản tạo thành công��6    #��[ 5n   $   $��14(�5o   $   $��
Moutserrat)�5p   $   $��Medium"�5q   $   $��40��68   $��	20,10,0,0q�5r   $   �� 5s      #��[ 5t   $   $��14(�5u   $   $��
Moutserrat)�5v   $   $��Medium"�5w   $   $��40��68   $��	80,10,0,0q�5x   $   ��5s       �� *	ThanhCong+5x   $   5y      �� 5z      $ 
Horizontal=�6   .+�5{      �� $1��+Số tài khoản tạo không thành công��6    #��[ 5|   $   $��14(�5}   $   $��
Moutserrat)�5~   $   $��Medium"�5   $   $��40��68   $��20,0,0,0q�5�   $   �� 5�      #��[ 5�   $   $��14(�5�   $   $��
Moutserrat)�5�   $   $��Medium"�5�   $   $��40��68   $��36,0,0,0q�5�   $   ��5�       �� *	ThatBai+5�   $   5�      5�      5�      5�      5�      