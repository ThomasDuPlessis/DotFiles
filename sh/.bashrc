#PATH=$PATH:/home/thomasduplessis/activator-1.2.12

PATH=$PATH:~/bin
export PATH

pathmunge () {
if ! echo $PATH | /bin/egrep -q "(^|:)$1($|:)" ; then
   if [ "$2" = "after" ] ; then
      PATH=$PATH:$1
   else
      PATH=$1:$PATH
   fi
fi
}

PATH=$PATH:/home/tom/.cabal/bin
PATH=$PATH:/opt/apache-maven-3.3.9/bin
PATH=$PATH:/home/tom/Code/scripts

alias chromium='chromium --force-device-scale-factor=1'
alias google-chrome='google-chrome-stable --force-device-scale-factor=1'
export GDK_SCALE=1

export _JAVA_AWT_WM_NONREPARENTING=1
export J2D_D3D=false

alias get_clang_headers="echo | clang -x c++ -v -E - 2>&1 | sed -n '/^#include </,/^End/s|^[^/]*\([^ ]*/include[^ ]*\).*$|-I\1|p'"
