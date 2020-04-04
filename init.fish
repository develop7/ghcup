# ghcup initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies
set -l ghcup_path "$HOME/.ghcup"
set -l cabalbin_path "$HOME/.cabal/bin"

if not contains -- $ghcup_path $PATH 
  set -gx PATH "$ghcup_path/bin" $PATH
  contains -- $cabalbin_path $PATH
    or set -gx PATH $cabalbin_path $PATH
end
