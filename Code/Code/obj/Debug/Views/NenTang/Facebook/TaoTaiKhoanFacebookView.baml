   M S B A M L   `   `   `  ����?  ;Code, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Code.Views.NenTang.FacebookCode.Views.NenTang.Facebook  5      9    3Code.Views.NenTang.Facebook.TaoTaiKhoanFacebookView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:Code.Views.NenTang.Facebook     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      .��5
      �   � RowDefinitions  5   
   �� 5      $��70 �6   �� 5      $��50 �6   �� 5      �� 5      $��80 �6   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      	�    
mainButton#��[  6   ��6B   �� *ShowPopUpWindowCommand+.��5      �� $ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Play=�6'     mainButtonIcon#��[ 63      
Foreground
 �/���6[   �� 5      $��
Thực thi��6$     titleColor2#��[ 5   $   $��18(�5   $   $��
Moutserrat)�5   $   $��Medium"�5   $   $��40��68   $��	0,15,10,0q�5   $   5      5      	� 5      #��[  6   ��6B   �� *
StopAction+.��5      �� $ 
Horizontal=�6!   .+�5         $
 Stop=�6'   #��[ 63   
 �  ��6[   �� 5!      $��Dừng��6$   #��[ 5"   $   $��18(�5#   $   $��
Moutserrat)�5$   $   $��Medium"�5%   $   $��40��68   $��	0,15,10,0q�5&   $   5'      5(      5)      5*      � 5+   
   $��1��6   .+�5,      �� $ 
Horizontal=�6   $	��Top=�5-      .+�5.      �� $$��Quá trình tạo tài khoản��6   #��[ 5/   $   $��18(�50   $   $��
Moutserrat)�51   $   $��Medium"�52   $   $��40��68   $��20,0,0,0q�53   $   54      55      �� 56   
   $��2��6   ���#200F53 �� CornerRadius$ 10��58       �� Padding$ 10q�59      ._�5:      &   System.Windows.Controls.DataGrid  -   5          Name$ deviceStatus��5:   '      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6      AutoGenerateColumns .  	   
IsReadOnly	 . ���#200F53$��0q�5<      
   CanUserAddRows
 .     CanUserResizeColumns .     CanUserResizeRows .     HeadersVisibility$ Column=�5@         GridLinesVisibility$
 None=�5B      ��5A      �� *	devices+   ColumnHeaderStyle 5C      �� 5D       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5E      ��  �� Property � �� �� Value
 ���� 67   �� 5F       � �� �#BCBEE067   �� 5G       � ��$ 0q�64   �� 5H       � ��$ 
Montserrat)�67   �� 5I       � ��$ 18(�65   �� 5J       � ��$ Medium"�67   �� 5K       � ��$ Center=�6@   5L         RowStyle 5N      �� 5O      )  #System.Windows.Controls.DataGridRow"  6   .�5P      ��  � ��$ Center=�6G   �� 5Q       � ��
 ���� 67   �� 5R       � �� �#BCBEE067   �� 5S       � ��$ 0q�64   �� 5T       � ��$ 
Montserrat)�67   �� 5U       � ��$ 15(�65   �� 5V       � ��$ Center=�6G   5W         	CellStyle 5Y      �� 5Z      *  $System.Windows.Controls.DataGridCell"  6   .�5[      ��  � ��$ Center=�6@   �� 5\       � ��$ 
Montserrat)�67   �� 5]       � ��$ 15(�65   5^         Columns 5`      0  *System.Windows.Controls.DataGridTextColumn  5a      ,	  &System.Windows.Controls.DataGridColumn 	  Header$	 STT��6d    	  Width$ 50 6q   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 6)   �� *Stt+ 
  ClipboardContentBinding 6A   Z� 6q     5b      $ Mã thiết bị��6i   $	 150 6~    6)   �� *
DeviceId+ 6F   Z� 6~     5c      $ Trạng thái��6g   $ * 6{    6)   �� *Status+ 6D   Z� 6{   5e      5f      � 5g   
   $��3��6   .+�5h      �� $ Vertical=�6   $	��Top=�5i      .+�5j      �� $ 
Horizontal=�6   .+�5k      �� $*��$Số tài khoản tạo thành công��6    #��[ 5l   $   $��14(�5m   $   $��
Moutserrat)�5n   $   $��Medium"�5o   $   $��40��68   $��	20,10,0,0q�5p   $   �� 5q      #��[ 5r   $   $��14(�5s   $   $��
Moutserrat)�5t   $   $��Medium"�5u   $   $��40��68   $��	80,10,0,0q�5v   $   ��5q       �� *	ThanhCong+5v   $   5w      �� 5x      $ 
Horizontal=�6   .+�5y      �� $1��+Số tài khoản tạo không thành công��6    #��[ 5z   $   $��14(�5{   $   $��
Moutserrat)�5|   $   $��Medium"�5}   $   $��40��68   $��20,0,0,0q�5~   $   �� 5      #��[ 5�   $   $��14(�5�   $   $��
Moutserrat)�5�   $   $��Medium"�5�   $   $��40��68   $��36,0,0,0q�5�   $   ��5       �� *	ThatBai+5�   $   5�      5�      5�      5�      5�      