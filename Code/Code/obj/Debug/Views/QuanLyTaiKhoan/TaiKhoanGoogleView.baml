   M S B A M L   `   `   `  ����?  ;Code, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Code.ViewModelsCode.ViewModels  5      E'clr-namespace:Code.Views.QuanLyTaiKhoanCode.Views.QuanLyTaiKhoan  5      2    ,Code.Views.QuanLyTaiKhoan.TaiKhoanGoogleView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      .
viewmodelsclr-namespace:Code.ViewModels  5      3local'clr-namespace:Code.Views.QuanLyTaiKhoan  5      .��5      �   � RowDefinitions  5   
   �� 5      $��70 �6   �� 5      $��50 �6   �� 5      .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      	� -   5         	�Name$ 
btnRefresh��5         
mainButton#��[  62   $	��130��6V   .��5      �� $ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ RotateRight=�6'     menuButtonIcon#��[ 6:      
Foreground
 �����$��	10,0,10,0q�6u   �� 5      $��
Làm mới��6%     titleColor2#��[ 5      $��18(�5      $��
Moutserrat)�5      $��Medium"�5      5      5      	� 5      -   5        $ btnDeleteError��5   B   #��[  6   .��5      �� $ 
Horizontal=�6!   .+�5        $ Trash=�6'     mainButtonIcon#��[ 64   
 �����6\   �� 5       $��Xóa tài khoản lỗi��6$   #��[ 5!   $   $��18(�5"   $   $��
Moutserrat)�5#   $   $��Medium"�5$   $   $��40��68   $��	0,15,10,0q�5%   $   5&      5'      	� 5(      -   5        $ btnDeleteSelected��5(   B   #��[  6   .��5)      �� $ 
Horizontal=�6!   .+�5*        $ Trash=�6'   #��[ 64   
 �����6\   �� 5+      $'��!Xóa tài khoản được chọn��6$   #��[ 5,   $   $��18(�5-   $   $��
Moutserrat)�5.   $   $��Medium"�5/   $   $��40��68   $��	0,15,10,0q�50   $   51      52      53      54      � 55   
   $��1��6    � ColumnDefinitions 56      �� 57      $��* �6#   �� 58      $	��120 �6#   .+�5:      �� $ 
Horizontal=�6   $	��Top=�5;      $��0��5<      .+�5=      �� $$��Danh sách tài khoản Google��6   #��[ 5>   $   $��20(�5?   $   $��
Moutserrat)�5@   $   $��Medium"�5A   $   $��40��68   $��20,0,0,0q�5B   $   5C      5D      �� 5E   
   $��2��6   ���#200F53 �� CornerRadius$ 10��5G       �� Padding$ 10q�5H      ._�5I      &   System.Windows.Controls.DataGrid  -   5          Name$ 
dgTaiKhoan��5I   '   	   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$	 * 6   
   AutoGenerateColumns
 .     
IsReadOnly . ���#200F53$��0q�5K         CanUserAddRows .     CanUserResizeColumns .     CanUserResizeRows .     HeadersVisibility$ Column=�5O         GridLinesVisibility$
 None=�5P         ColumnHeaderStyle 5Q      �� 5R       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5S      ��  �� Property � �� �� Value
 ���� 67   �� 5T       � �� �#BCBEE067   �� 5U       � ��$ 0q�64   �� 5V       � ��$ 
Montserrat)�67   �� 5W       � ��$ 18(�65   �� 5X       � ��$ Medium"�67   �� 5Y       � ��$ Center=�6@   5Z         RowStyle 5\      �� 5]      )  #System.Windows.Controls.DataGridRow"  6   .�5^      ��  � ��$ Center=�6G   �� 5_       � ��
 ���� 67   �� 5`       � �� �#BCBEE067   �� 5a       � ��$ 0q�64   �� 5b       � ��$ 
Montserrat)�67   �� 5c       � ��$ 15(�65   �� 5d       � ��$ Center=�6G   5e         	CellStyle 5g      �� 5h      *  $System.Windows.Controls.DataGridCell"  6   .�5i      ��  � ��$ Center=�6G   �� 5j       � ��$ 
Montserrat)�67   �� 5k       � ��$ 15(�65   5l         Columns 5n      0  *System.Windows.Controls.DataGridTextColumn  5o      ,	  &System.Windows.Controls.DataGridColumn 	  Width$ 50 6)    	  Header$	 STT��6o   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 64   �� *STT+ 
  ClipboardContentBinding 6L   Z� 6o     5p      $ Tài khoản��6l    6)   �� *TenDangNhap+ 6I   Z� 6l     5q      $ Mật khẩu��6h    6)   �� *	MatKhau+ 6E   Z� 6h     5r      $ Họ và tên��6f    6)   �� *HoTen+ 6C   Z� 6f     5s      $ Giới tính��6i    6)   �� *
GioiTinh+ 6F   Z� 6i     5t      $ 
Ngày sinh��6i    6)   �� *
NgaySinh+ 6F   Z� 6i     5u      $ Trạng thái��6j    6)   �� *	TrangThai+ 6G   Z� 6j     5v      $ Mã thiết bị��6j    6)   �� *	MaThietBi+ 6G   Z� 6j   5x      5y      5z      5{      