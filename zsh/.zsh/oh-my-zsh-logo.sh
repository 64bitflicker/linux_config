function ZSH_LOGO()
{
    if [ -t 1 ]; then
      RB_RED=$(printf '\033[38;5;196m')
      RB_ORANGE=$(printf '\033[38;5;202m')
      RB_YELLOW=$(printf '\033[38;5;226m')
      RB_GREEN=$(printf '\033[38;5;082m')
      RB_BLUE=$(printf '\033[38;5;021m')
      RB_INDIGO=$(printf '\033[38;5;093m')
      RB_VIOLET=$(printf '\033[38;5;163m')

      RED=$(printf '\033[31m')
      GREEN=$(printf '\033[32m')
      YELLOW=$(printf '\033[33m')
      BLUE=$(printf '\033[34m')
      BOLD=$(printf '\033[1m')
      RESET=$(printf '\033[m')
    else
      RB_RED=""
      RB_ORANGE=""
      RB_YELLOW=""
      RB_GREEN=""
      RB_BLUE=""
      RB_INDIGO=""
      RB_VIOLET=""

      RED=""
      GREEN=""
      YELLOW=""
      BLUE=""
      BOLD=""
      RESET=""
    fi
    printf '%s         %s__      %s           %s        %s       %s     %s__   %s\n' $RB_RED $RB_ORANGE $RB_YELLOW $RB_GREEN $RB_BLUE $RB_INDIGO $RB_VIOLET $RB_RESET
    printf '%s  ____  %s/ /_    %s ____ ___  %s__  __  %s ____  %s_____%s/ /_  %s\n' $RB_RED $RB_ORANGE $RB_YELLOW $RB_GREEN $RB_BLUE $RB_INDIGO $RB_VIOLET $RB_RESET
    printf '%s / __ \%s/ __ \  %s / __ `__ \%s/ / / / %s /_  / %s/ ___/%s __ \ %s\n' $RB_RED $RB_ORANGE $RB_YELLOW $RB_GREEN $RB_BLUE $RB_INDIGO $RB_VIOLET $RB_RESET
    printf '%s/ /_/ /%s / / / %s / / / / / /%s /_/ / %s   / /_%s(__  )%s / / / %s\n' $RB_RED $RB_ORANGE $RB_YELLOW $RB_GREEN $RB_BLUE $RB_INDIGO $RB_VIOLET $RB_RESET
    printf '%s\____/%s_/ /_/ %s /_/ /_/ /_/%s\__, / %s   /___/%s____/%s_/ /_/  %s\n' $RB_RED $RB_ORANGE $RB_YELLOW $RB_GREEN $RB_BLUE $RB_INDIGO $RB_VIOLET $RB_RESET
    printf '%s    %s        %s           %s /____/ %s       %s     %s          %s\n' $RB_RED $RB_ORANGE $RB_YELLOW $RB_GREEN $RB_BLUE $RB_INDIGO $RB_VIOLET $RB_RESET
}
ZSH_LOGO
