#!/bin/bash

if ! pgrep -x "xfce4-clipman" > /dev/null
then
    xfce4-clipman&
fi

