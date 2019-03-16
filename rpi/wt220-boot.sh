#!/bin/bash
 
print_header() {
  w=$(tput cols)
  h=$(tput lines)
  text='Booting...'
  n=${#text}
  lines=$(( ($h-5)/2 ))
  spaces=$(( ($w-$n)/2 ))
  clear
  tput setaf 2
  tput cup $lines
  figlet -w $(tput cols) -c 'WT-220'
  tput cup $(($lines+5)) $(($spaces-14))
  echo -- JBR Engineering Research Ltd 2019 --
  tput cup $(($lines+6)) $spaces
  tput blink bold
  tput setab 7
  tput setaf 0
  echo $text
  # tput civis
}

print_header
tput sgr0
read
