   M S B A M L   `   `   `  ����B  >SEP_Age, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:SEP_AgeSEP_Age  5   	       SEP_Age.AddProfileWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:SEP_Age     5   	     � Title$  AddProfileWindow��5   	   $	��450��6"   $	��800��6/   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Длина:��6   $��0��6!   $��5q�6.   �� 5   
   -   5         ��Name$ LengthTextBox��5      $��0��6)   $��70,5,5,5q�66   �� 5   
   $��Высота:��6   $��1��6"   $��5q�6/   �� 5   
   -   5        $ HeightTextBox��5      $��1��6)   $��70,5,5,5q�66   �� 5   
   $��Описание:��6   $��2��6$   $��5q�61   �� 5   
   -   5        $ DescriptionTextBox��5      $��2��6.   $��70,5,5,5q�6;   $��50��6M    �� TextWrapping$
 Wrap=�6Y   �� 5   
   $��Площадь:��6   $��3��6#   $��5q�60   �� 5   
   -   5         ��Name$ AreaComboBox��5      $��3��6)   $��70,5,5,5q�66    �� DisplayMemberPath$ Id��6H   �� 5   
   -   5        $��Сохранить��5      $��4��6%   $��5q�62   6=   5      5      