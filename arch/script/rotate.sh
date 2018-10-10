
#!/bin/bash

case $(xfconf-query -c pointers -p /Wacom_ISDv4_90_Pen_stylus/Properties/Wacom_Rotation) in
    2)  # Currently top is rotated left, we should set it normal (0°)
          xrandr -o 0
          xfconf-query -c pointers -p /Wacom_ISDv4_90_Pen_stylus/Properties/Wacom_Rotation -s 0
          xfconf-query -c xsettings -p /Xft/RGBA -s rgb
          ;;
    0)  # Screen is not rotated, we should rotate it right (90°)
           xrandr -o 3
           xfconf-query -c pointers -p /Wacom_ISDv4_90_Pen_stylus/Properties/Wacom_Rotation -s 1
           xfconf-query -c xsettings -p /Xft/RGBA -s vbgr
           ;;
    1)    # Top of screen is rotated right, we should invert it (180°)
           xrandr -o 2
           xfconf-query -c pointers -p /Wacom_ISDv4_90_Pen_stylus/Properties/Wacom_Rotation -s 3
           xfconf-query -c xsettings -p /Xft/RGBA -s bgr
           ;;
    3)  # Screen is inverted, we should rotate it left (270°)
           xrandr -o 1
           xfconf-query -c pointers -p /Wacom_ISDv4_90_Pen_stylus/Properties/Wacom_Rotation -s 2
           xfconf-query -c xsettings -p /Xft/RGBA -s vrgb
           ;;
    *)
           echo "Unknown result from 'xfconf-query -c pointers -p /Wacom_ISDv4_90_Pen_stylus/Properties/Wacom_Rotation'" >&2
           exit 1
           ;;
esac