
# Vigilant-winner

  

Vigilant-winner is a emulator for USB Keyboard. It works on both Linux and Windows OS. MacOS is not testet yet.

You will find in this reposytory all both hardware and software file you need to make your own USB DUCK.

  
  

## Needs

  

To compile the software, you need **dfu-utils** installed on your system :

    sudo apt-get install dfu-util

  

## How to run

  Compile the flasher :
  

    cd flash
    make
    sudo make install

Generate your payload using this website : [Duck ToolKit](https://ducktoolkit.com/) and flash your USB key :

    winner-flash inject.bin
