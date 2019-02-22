soldark() {
if [ -d ~/.shell/plugins/dircolors-solarized ]; then
   eval $(dircolors ~/.shell/plugins/dircolors-solarized/dircolors.ansi-dark)
fi
}

sollight() {
if [ -d ~/.shell/plugins/dircolors-solarized ]; then
   eval $(dircolors ~/.shell/plugins/dircolors-solarized/dircolors.ansi-light)
fi
}

soldark
