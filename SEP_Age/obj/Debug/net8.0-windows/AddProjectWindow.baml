   M S B A M L   `   `   `  ����U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  5   	   B >SEP_Age, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:SEP_AgeSEP_Age 5   	      SEP_Age.AddProjectWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:SEP_Age     5   	     � Title$  AddProjectWindow��5	   	   $	��450��6"   $	��800��6/   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Название:��6   $��0��6$   $��5q�61   �� 5   
   -   5         ��Name$ NameTextBox��5      $��0��6'   $��80,5,5,5q�64   �� 5   
   $��Дата начала:��6   $��1��6'   $��5q�64   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ StartDatePicker��5      $��1��6.   $��80,5,5,5q�6;   �� 5   
   $��Дата конца:��6   $��2��6&   $��5q�63     5   
   -   5        $ EndDatePicker��5      $��2��6,   $��80,5,5,5q�69   �� 5   
   $��	Цена:��6   $��3��6    $��5q�6-   �� 5   
   -   5        $ PriceTextBox��5      $��3��6(   $��80,5,5,5q�65   �� 5   
   -   5        $��Сохранить��5      $��4��6%   $��5q�62   6=   5      5      