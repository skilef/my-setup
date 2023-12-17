# Go bin path
export PATH="$HOME/go/bin:$PATH"

# AWS stuff
export AWS_SDK_LOAD_CONFIG=1
export AWS_PROFILE=felix
export AWS_DEFAULT_REGION=eu-central-1

# Disable NX cloud on my local machine
export NX_NO_CLOUD=true

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias pn=pnpm

# Terramate
complete -C $HOME/go/bin/terramate terramate

# For theme and plugins
DEFAULT_USER=felix

