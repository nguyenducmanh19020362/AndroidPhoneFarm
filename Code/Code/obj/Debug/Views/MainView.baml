   M S B A M L   `   `   `  ����?  ;Code, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Code.Views
Code.Views  5   	   I)clr-namespace:Code.Views.NenTang.FacebookCode.Views.NenTang.Facebook  5   	   E'clr-namespace:Code.Views.NenTang.GoogleCode.Views.NenTang.Google  5   	   G(clr-namespace:Code.Views.NenTang.YoutubeCode.Views.NenTang.Youtube  5	   	   E'clr-namespace:Code.Views.QuanLyTaiKhoanCode.Views.QuanLyTaiKhoan  5
   	   1clr-namespace:Code.ViewModelsCode.ViewModels  5   	       Code.Views.MainView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Code.Views     5   	   =localFB)clr-namespace:Code.Views.NenTang.Facebook     5   	   ;localGG'clr-namespace:Code.Views.NenTang.Google     5   	   <localYT(clr-namespace:Code.Views.NenTang.Youtube     5	   	   ;localTK'clr-namespace:Code.Views.QuanLyTaiKhoan     5
   	   3	viewModelclr-namespace:Code.ViewModels     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	     � Title$  MainWindowView��5      $	��700��6   $
��1300��6,    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency .  � DataContext 5      #   Code.ViewModels.MainViewModel  5   
    � 	Resources 5       �� DataType,   &Code.ViewModels.QuanLyHeThongViewModel"   Code.Views.QuanLyHeThongView,   &Code.ViewModels.QuanLyThietBiViewModel"   Code.Views.QuanLyThietBiView-   'Code.ViewModels.TaiKhoanGoogleViewModel2   ,Code.Views.QuanLyTaiKhoan.TaiKhoanGoogleView.   (Code.ViewModels.TaiKhoanFacbookViewModel4	   .Code.Views.QuanLyTaiKhoan.TaiKhoanFacebookView0
   *Code.ViewModels.TaoTaiKhoanGoogleViewModel5   /Code.Views.NenTang.Google.TaoTaiKhoanGoogleView*   $Code.ViewModels.TangLuotXemViewModel0   *Code.Views.NenTang.Youtube.TangLuotXemView-   'Code.ViewModels.TangLuotDangKyViewModel3   -Code.Views.NenTang.Youtube.TangLuotDangKyView2   ,Code.ViewModels.TaoTaiKhoanFacebookViewModel9   3Code.Views.NenTang.Facebook.TaoTaiKhoanFacebookView.   (Code.ViewModels.TangLuotTheoDoiViewModel5   /Code.Views.NenTang.Facebook.TangLuotTheoDoiView��%�  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5"      *, +)(�� �     5%      *,
 +)(�� �     5(      *, +)(�� ,    5+      *, +)(�� ^    5.      *, +)(�� �    51      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5         5!      �� 5"   
   "  6   .R�5#      	  5$      �� 5%   
   " 
 6   .R�5&        5'      �� 5(   
   "  6   .R�5)        5*      �� 5+   
   "  6   .R�5,        5-      �� 5.   
   "  6   .R�5/        50      �� 51   
   "  6   .R�52        53      55      .��57      ��  �� CornerRadius$ 10��6   $��1q�58   	   ��59   
   �� 5:       �� 
StartPoint$	 0,0&�6"   	 �� EndPoint$		 1,1&�63   .��5;      �    winBorderColor1
 � Color#
 [  6    � Offset$ 0Q�6H   � 5<        winBorderColor2#
 [ 6   $
 0.75Q�6H   � 5=        winBorderColor3#
 [ 6   $ 1Q�6H   5>      ._�5A   
   �  � ColumnDefinitions 5B      �� 5D      $	��250 �6#   �� 5F      $��* �6#   .+�5J      �� $ 	0,10,10,0��6   $��0��6.   ��5K      �� 5L      $	 0,0&�6*   $	 1,0.7&�6;   .��5M      �   secondaryBackColor1#
 [ 6'   $ 0Q�6T   � 5N      #
 [ 6'   $ 1Q�6T   5O      ._�5Q      �� .+�5S      ��  �� Orientation$ 
Horizontal=�6!   $��35��5T   !   $��
15,25,0,40q�5U   !   .+�5V      �� $��/Images/Logo.png��6    $��30��6:   �� 5W      $��
PHONE FARM��6$     titleColor2#��[ 5X   $   $��20(�5Y   $   $��
Moutserrat)�5Z   $   $��Medium"�5[   $   $��Center=�5\   $   $��10,0,0,0q�5]   $   5^      �� 5`      $��CHỨC NĂNG QUẢN LÝ��6    #��[ 5a   $   $��20(�5b   $   $��
Moutserrat)�5c   $   $��Medium"�5d   $   $��40��68   $��20,0,0,0q�5e   $   	� 5g        
menuButton#��[ 6"    
 color1
 � Tag# [ 5h   "    d� 	IsChecked$
 TrueY�5i   "   ��5j   "   �� *ShowQuanLyHeThongViewCommand+.��5k      �� $ 
Horizontal=�6%   .+�5l      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Gear=�6+     menuButtonIcon#��[ 67   �� 5m      $��Quản lý hệ thống��6(     menuButtonText#��[ 6@   5n      5o      	� 5q      #��[ 6"    
	 color2# [	 5r   "   ��5s   "   �� *ShowQuanLyThietBiViewCommand+.��5t      �� $ 
Horizontal=�6%   $	��253��6>   .+�5u        $ 	UserGroup=�6+   #��[ 6<    J� RenderTransformOrigin$ 1.197,0.533&�6d   �� 5v      $��Quản lý thiết bị��6(   #��[ 6@   5w      5x      	� 5z      -   5         	�Name$ btnQuanLyTaiKhoan��5z   "   #��[ 6]    

 color3# [
 5{   "   .��5|      �� $ 
Horizontal=�6%   .+�5}        $ ShoppingBag=�6+   #��[ 6>   �� 5~      $��Quản lý tài khoản��6(   #��[ 6A   5      5�      �� 5�      -   5         ��Name$ pnlQuanLyTaiKhoan��5�   !   $ Vertical=�6<   $y�	Collapsed=�6S   .+�5�      	� #��[ 6&    
 color4# [ 5�   "   ��5�   &   �� *ShowTaiKhoanGoogleViewCommand+.��5�      �� $ 
Horizontal=�6)   $��20,0,0,0q�6B   .+�5�   "     $ Google=�6/   #��[ 6=   �� 5�   "   $��Google��6,   #��[ 6:   5�      5�      	� 5�      #��[ 6&   # [ 5�   "   ��5�   &   �� *!ShowTaiKhoanFacebookViewCommand+.��5�      �� $ 
Horizontal=�6)   $��20,0,0,0q�6C   .+�5�   "     $ Facebook=�6/   #��[ 6?   �� 5�   "   $��Facebook��6,   #��[ 6<   5�      5�      5�      �� 5�      $��CHỨC NĂNG THAO TÁC��6    #��[ 5�   $   $��20(�5�   $   $��
Moutserrat)�5�   $   $��Medium"�5�   $   $��40��68   $��20,0,0,0q�5�   $   	� 5�      -   5        $ 	btnGoogle��5�   "   #��[ 6M    
 color5# [ 5�   "   .��5�      �� $ 
Horizontal=�6%   .+�5�        $ Google=�6+   #��[ 69   �� 5�      $��Google��6(   #��[ 66   5�      5�      �� 5�      -   5        $ 	pnlGoogle��5�   !   $ Vertical=�64   $y�	Collapsed=�6K   .+�5�      	� #��[ 6&    
 color9# [ 5�   "   ��5�   &   �� *" ShowTaoTaiKhoanGoogleViewCommand+.��5�      �� $ 
Horizontal=�6)   $��20,0,0,0q�6B   .+�5�   "     $
 User=�6/   #��[ 6;   �� 5�   "   $��Tạo tài khoản��6,   #��[ 6A   5�      5�      5�      	� 5�      -   5        $ 
btnYoutube��5�   "   #��[ 6O    
 color6# [ 5�   "   .��5�      �� $ 
Horizontal=�6%   .+�5�        $ Youtube=�6+   #��[ 6:   �� 5�      $��Youtube��6(   #��[ 67   5�      5�      �� 5�      -   5        $ 
pnlYoutube��5�   !   $ Vertical=�65   $y�	Collapsed=�6L   .+�5�      	� #��[ 6&   # [ 5�   "   ��5�   &   �� *ShowTangLuotXemViewCommand+.��5�      �� $ 
Horizontal=�6)   $��20,0,0,0q�6B   .+�5�   "     $ 	ChartLine=�6/   #��[ 6@   �� 5�   "   $��Tăng lượt xem��6,   #��[ 6A   5�      5�      	� 5�      #��[ 6&   # [ 5�   "   ��5�   &   �� *ShowTangDangKyViewCommand+.��5�      �� $ 
Horizontal=�6)   $��20,0,0,0q�6B   .+�5�   "     $ ArrowUpRightDots=�6/   #��[ 6G   �� 5�   "   $��Tăng lượt đăng ký��6,   #��[ 6E   5�      5�      5�      	� 5�      -   5        $ btnFacebook��5�   "   #��[ 6Q    
 color7# [ 5�   "   .��5�      �� $ 
Horizontal=�6%   .+�5�        $ Facebook=�6+   #��[ 6;   �� 5�      $��Facebook��6(   #��[ 68   5�      5�      �� 5�      -   5        $ pnlFacebook��5�   !   $ Vertical=�66   $y�	Collapsed=�6M   .+�5�      	� #��[ 6&   # [	 5�   "   ��5�   &   �� *$"ShowTaoTaiKhoanFacebookViewCommand+.��5�      �� $ 
Horizontal=�6)   $��20,0,0,0q�6B   .+�5�   "     $
 User=�6/   #��[ 6;   �� 5�   "   $��Tạo tại khoản��6,   #��[ 6A   5�      5�      	� 5�      #��[ 6&   # [	 5�   "   ��5�   &   �� *ShowTangTheoDoiViewCommand+.��5�      �� $ 
Horizontal=�6)   $��20,0,0,0q�6B   .+�5�   "     $ ArrowUpRightDots=�6/   #��[ 6G   �� 5�   "   $��Tăng lượt theo dõi��6,   #��[ 6F   5�      5�      5�      5�      5�      �� 5�      $ 	10,0,0,10��6   $��1��6.   ��5�      �� 5�      $	 1,1&�6*   $	 1,0.7&�6;   .��5�      � #
 [ 6'   $ 0Q�6T   � 5�        secondaryBackColor2#
 [ 6'   $ 1Q�6T   5�      ._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��25 �6(   �� 5�      $��* �6(   .+�5�      �� -	   5        $ pnlControlBar��5�   !   $��0��5�   !   $ 
Horizontal=�5�   !   $��RightToLeft=�5   !   
������ $��0,0,5,0q�5  !   .+�5     �� -
   5         ��Name$ btnClose��5  !     controlButton#��[ 5  !   # [ 5  !   .��5	       $ Xmark=�6+     controlButtonIcon#��[ 68   5
     �� 5     -   5        $ btnMaximize��5  !   #��[ 5  !   # [ 5  !   .��5       $ Square=�6+   #��[ 69   5     �� 5     -   5        $ btnMinimize��5  !   #��[ 5  !    
 color8# [ 5  !   .��5       $ WindowMinimize=�6+   #��[ 6A   5     5     � 5     $��1��6    5     �� 5     �� 5     .+�5"     �� $��0��6%   $ 
Horizontal=�5#  !   $��Center=�5$  !   .+�5%       $��20��5&  '   $��20��5'  '      
Foreground# [ 5(  '   $��	35,0,10,0q�5)  '    5%  +   �� *Icon+5)  '   �� 5*     #��[ 5+  $   $��16(�5,  $   $��
Montserrat)�5-  $   $��Medium"�5.  $   $��Center=�5/  $   ��5*  (   �� *	Caption+5/  $   50     51     �� 53     $��2��54  %   $��25q�55  %   ��53  %   �� *CurrentChildView+55  %   56     57     58     5:     5;     