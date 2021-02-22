# L-BANNER
CL package for generating ASCII banners using C64 fonts.

## Installation

The package is not added to the official quicklisp repository, so at the moment the best way to install is to clone it into the `local-projects` folder:

```bash
$ cd $HOME/quicklisp/local-projects
$ git clone https://github.com/appblue/l-banner.git
```

## Usage

Once the repository is cloned, the package can be used from REPL using following commands:

```lisp
CL-USER> (ql:quickload :l-banner)
To load "l-banner":
  Load 1 ASDF system:
    l-banner
; Loading "l-banner"
[package l-banner.utils]..........................
[package l-banner.chars]..........................
[package l-banner.canvas].........................
[package l-banner]
(:L-BANNER)
CL-USER> (l-banner:print-string "l-banner")
 ##              #####     ##    ##  ##  ##  ##  ######  #####  
 ##              ##  ##   ####   ### ##  ### ##  ##      ##  ## 
 ##              ##  ##  ##  ##  ######  ######  ##      ##  ## 
 ##      ######  #####   ######  ######  ######  ####    #####  
 ##              ##  ##  ##  ##  ## ###  ## ###  ##      ####   
 ##              ##  ##  ##  ##  ##  ##  ##  ##  ##      ## ##  
 ######          #####   ##  ##  ##  ##  ##  ##  ######  ##  ## 
                                                                
NIL
```

