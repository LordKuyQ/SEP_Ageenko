   M S B A M L   `   `   `  ����B  >SEP_Age, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:SEP_AgeSEP_Age  5   	   "    SEP_Age.AddMeasurementWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:SEP_Age     5   	     � Title$  AddMeasurementWindow��5   	   $	��450��6&   $	��800��63   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Давление:��6   $��0��6$   $��5q�61   �� 5   
   -   5         ��Name$ PressureTextBox��5      $��0��6+   $��70,5,5,5q�68   �� 5   
   $��Описание:��6   $��1��6$   $��5q�61   �� 5   
   -   5        $ DescriptionTextBox��5      $��1��6.   $��70,5,5,5q�6;   $��50��6M    �� TextWrapping$
 Wrap=�6Y   �� 5   
   $(��"Абсолютная высота:��6   $��2��6-   $��5q�6:   �� 5   
   -   5        $ AbsoluteHeightTextBox��5      $��2��61   $��70,5,5,5q�6>   �� 5   
   $��Расстояние:��6   $��3��6&   $��5q�63   �� 5   
   -   5        $ DistanceTextBox��5      $��3��6+   $��70,5,5,5q�68   �� 5   
   $&�� Пункт наблюдения:��6   $��4��6,   $��5q�69   �� 5   
   -   5         ��Name$ ObservationPointComboBox��5      $��4��65   $��70,5,5,5q�6B    �� DisplayMemberPath$ Id��6T   �� 5   
   -   5        $��Сохранить��5      $��5��6%   $��5q�62   6=   5      5      