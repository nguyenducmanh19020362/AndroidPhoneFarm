   M S B A M L   `   `   `  ����?  ;Code, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Code.ViewModelsCode.ViewModels  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5      "    Code.Views.QuanLyHeThongView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      )localclr-namespace:Code.ViewModels  5      >lvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf  5        � DataContext  5      %   Code.ViewModels.ThongTinThietBi  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      	� -   5         	�Name$ 
btnRefresh��5   N      
mainButton#��[  6   $	��130��6B   .��5      �� $ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ RotateRight=�6'     menuButtonIcon#��[ 6:      
Foreground
 �����$��	10,0,10,0q�6u   �� 5      $��
Làm mới��6%     titleColor2#��[ 5      $��18(�5      $��
Moutserrat)�5      $��Medium"�5      5      5      	� 5       -   5        $ btnTable��5    N   #��[  6   $	��100��6B   
�������.��5!      �� $ 
Horizontal=�6!   .+�5"        -   5        $��	IconTable��5"   o   $ Table=�6'   #��[ 64   $��	10,0,10,0q�6\   
 �   �6�   �� 5#      -   5        $��	TextTable��5(      $��Table��5#   %   
���   �$��18(�5%      $��
Moutserrat)�5&      $��Medium"�5'      5(      5)      5*      	� 5+      -   5        $ btnChar��5+   N   #��[  6   $	��100��6B   .��5,      �� $ 
Horizontal=�6!   .+�5-        -   5        $��	IconChart��5-   r   $ BarChart=�6'   #��[ 67   $��	10,0,10,0q�6_   
 �����6�   �� 5.      -   5        $��	TextChart��5/   %   $��Chart��5.   %   
�������$��18(�51      $��
Moutserrat)�52      $��Medium"�53      54      55      56      57      �� 58   
   $��1��6   ._�59      � -   5        $��Header��59      $y�Visible=�5:       � 	Resources 5;       �� 
TargetType �� Property	 �� Value��%I  '��       �� 5<      " ��6   .�5=      ��  � ��
	 ���� 67   �� 5>       � ��	 �#BCBEE067   �� 5?       �@��Padding$	 0q�64   �� 5@       � ��$	 
Montserrat)�67   �� 5A       � ��$	 18(�65   �� 5B       � ��$	 Medium"�67   �� 5C       � ��$	 Center=�6@   5D      5E       5F      �� 5G      $
��auto �6$   �� 5H      $
��auto �6$   .+�5J      � $��0��6   
 � ColumnDefinitions
 5K      �� 5L      $��* �6+   �� 5M      $��* �6+   �� 5N      $��2* �6+   �� 5O      $��2* �6+   .+�5Q      �� $��0��6    $	��STT��60    �� TextAlignment$ Center=�6;   �� 5R      $��1��6    $��Ma thiet bi��60   $ Center=�6C   �� 5S      $��2��6    $��TK Facebook��60   $ Center=�6C   �� 5T      $��3��6    $��	TK Google��60   $ Center=�6A   5U      � 5V      $��1��6   
 5W      �� 5X      $��* �6+   �� 5Y      $��* �6+   �� 5Z      $��* �6+   �� 5[      $��* �6+   �� 5\      $��* �6+   �� 5]      $��* �6+   .+�5_      �� $��2��6    $��Tao Thanh Cong��60   $ Center=�6F   �� 5`      $��3��6    $��Tao That Bai��60   $ Center=�6D   �� 5a      $��4��6    $��Tao Thanh Cong��60   $ Center=�6F   �� 5b      $��5��6    $��Tao That Bai��60   $ Center=�6D   5c      5d      5e      �� 5f   
   $��2��6   ���#200F53 �� CornerRadius$ 10��5h      ._�5i      &   System.Windows.Controls.DataGrid  -	   5          Name$ hethong��5n         CanUserAddRows .     CanUserResizeColumns .     CanUserResizeRows .     HeadersVisibility$ Column=�5m         AutoGenerateColumns .  ���#200F53$��0q�5q      $��2��5r         SelectionUnit$ FullRow=�5s         SelectionMode$ Single=�5t         GridLinesVisibility$
 None=�5u      $��0,5,0,0q�5v      $y�Visible=�5w         ColumnHeaderStyle 5x      �� 5y      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5z      ��  � ��
	 ���� 67   �� 5{       � ��	 �#BCBEE067   �� 5|       � ��$	 0q�64   �� 5}       � ��$	 
Montserrat)�67   �� 5~       � ��$	 18(�65   �� 5       � ��$	 Medium"�67   �� 5�       � ��$	 Center=�6@   5�         RowStyle 5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6   .�5�      ��  � ��
	 ���� 67   �� 5�       � ��	 �#BCBEE067   �� 5�       � ��$	 0q�64   �� 5�       � ��$	 
Montserrat)�67   �� 5�       � ��$	 15(�65   �� 5�       � ��$	 Center=�6@   5�         	CellStyle 5�      �� 5�      *  $System.Windows.Controls.DataGridCell"  6   .�5�      ��  �@��TextAlignment$	 Center=�6D   5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,	  &System.Windows.Controls.DataGridColumn 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$ *
 6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *	SoThuTu+   ClipboardContentBinding 6O   Z�   5�      $ *
 6)    63   �� *	MaThietBi+ 6Q   Z�   5�      $ *
 6)    63   �� *SoTaiKhoanFacebookTC+ 6\   Z�   5�      $ *
 6)    63   �� *SoTaiKhoanFacebookTB+ 6\   Z�   5�      $ *
 6)    63   �� *SoTaiKhoanYoutubeTC+ 6[   Z�   5�      $ *
 6)    63   �� *SoTaiKhoanYoutubeTB+ 6[   Z� 5�      5�      � 5�   
   -
   5        $��Chart��5�   3   $��3��6   $y�	Collapsed=�6    5�      �� 5�      $��70 �6    �� 5�      $��70 �6    �� 5�      $��* �6    .+�5�      � $��0��6   $��Center=�6!   $��Center=�6>   .+�5�      � $	��100��6   $��30��6#   $��-80, 0, 0, 0q�6/    5�      ��%~   '��       �� 5�      " ��6    .�5�      ��  � ��$	 Center=�6K   �� 5�       � ��$	 Center=�6I   5�      5�      .+�5�      �� -   5        $��ListIdThietBi��5�      ��5�      �� 5�      .R�5�   "   �� $��
Montserrat)�5�   ,   $��15(�5�   ,   ��5�   ,   �� *	MaThietBi+5�   ,   5�      5�      5�      5�      � 5�      $��1��6   
 5�      �� 5�      $��* �6'   �� 5�      $��* �6'   .+�5�      � $��0��6   $��Center=�6'   $��Center=�6D   .+�5�      �� $��Youtube��6!   #��[ 5�      $��18(�5�      $��
Moutserrat)�5�      $��Medium"�5�      5�      � 5�      $��1��6   $��Center=�6'   $��Center=�6D   .+�5�      �� $��Facebook��6!   #��[ 5�      $��18(�5�      $��
Moutserrat)�5�      $��Medium"�5�      5�      5�      � 5�      $��2��6   
 5�      �� 5�      $��* �6'   �� 5�      $��* �6'   .+�5�      � -   5        $��CircleYoutube��5�   (   $��0��6   .+�5�        LiveCharts.Wpf.PieChart  -   5        &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Bottom=�5�   #      	Hoverable .    InnerRadius$ 10Q�6�   $��20q�6�       Series  6;   �� *SeriesCollectionYoutube+!   ChartLegend! 5�      "  LiveCharts.Wpf.DefaultLegend  5�      "   
BulletSize$" 15Q�60   $��15(�6@   $��
Moutserrat)�5�   0   $��Medium"�5�   0   #��[ 5�   0   $��30, 30, 0, 0q�5�   0   #   DataTooltip# 5�      #  LiveCharts.Wpf.DefaultTooltip  5�      $   
BulletSize$$ 15Q�61   5�      5�      � 5�      -   5        $��CircleFacebook��5�   (   $��1��6   .+�5�        -   5        $ Bottom=�5�   #    . $ 10Q�6�   $��20q�6�     6;   �� *SeriesCollectionFacebook+! 5�        5�      $" 15Q�60   $��15(�6@   $��
Moutserrat)�5�   0   $��Medium"�5�   0   #��[ 5�   0   $��30, 30, 0, 0q�5�   0   # 5�        5�      $$ 15Q�61   5�      5�      5�      5�      5�      5�      