   M S B A M L   `   `   `  ����?  ;Code, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Code.ViewModelsCode.ViewModels  5      "    Code.Views.QuanLyThietBiView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      )localclr-namespace:Code.ViewModels  5        � DataContext  5
      ,   &Code.ViewModels.QuanLyThietBiViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $��* �6   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      	� -   5         	�Name$ 
btnRefresh��5   N      
mainButton#��[  6   $	��130��6B   .��5      �� $ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ RotateRight=�6'     menuButtonIcon#��[ 6:      
Foreground
 �����$��	10,0,10,0q�6u   �� 5      $��
Làm mới��6%     titleColor2#��[ 5      $��18(�5      $��
Moutserrat)�5      $��Medium"�5      5      5      5      5      �� 5    
   $��2��6   ���#200F53 �� CornerRadius$ 10��5"       �� Padding$ 10q�5#      ._�5$      &   System.Windows.Controls.DataGrid  -   5          Name$ 	dgThietBi��5)      	   CanUserAddRows	 .  
   CanUserResizeColumns
 .     CanUserResizeRows .     HeadersVisibility$ Column=�5(         AutoGenerateColumns .  ���#200F53$��0q�5,      $��2��5-         SelectionUnit$ FullRow=�5.         SelectionMode$ Single=�5/         GridLinesVisibility$
 None=�50      $��20,-2,20,25q�51         ColumnHeaderStyle 52      �� 53       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�54      ��  �� Property � �� �� Value
 ���� 67   �� 55       � �� �#BCBEE067   �� 56       � ��$ 0q�64   �� 57       � ��$ 
Montserrat)�67   �� 58       � ��$ 18(�65   �� 59       � ��$ Medium"�67   �� 5:       � ��$ Center=�6@   5;         RowStyle 5=      �� 5>      )  #System.Windows.Controls.DataGridRow"  6   .�5?      ��  � ��$ Center=�6G   �� 5@       � ��
 ���� 67   �� 5A       � �� �#BCBEE067   �� 5B       � ��$ 0q�64   �� 5C       � ��$ 
Montserrat)�67   �� 5D       � ��$ 15(�65   �� 5E       � ��$ Center=�6@   5F         	CellStyle 5H      �� 5I      *  $System.Windows.Controls.DataGridCell"  6   .�5J      ��  � ��$ Center=�6@   5K         Columns 5M      0  *System.Windows.Controls.DataGridTextColumn  5N      ,	  &System.Windows.Controls.DataGridColumn 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$ 50
 6)    	  Header$	 STT��6s   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   �� *	SoThuTu+   ClipboardContentBinding 6P   Z� 6s     5O      $ 2*
 6)   $ Mã thiết bị��6u    64   �� *	MaThietBi+ 6R   Z� 6u     5P      $ 2*
 6)   $ Trạng thái��6u    64   �� *	TrangThai+ 6R   Z� 6u   5R      5S      5T      5U      