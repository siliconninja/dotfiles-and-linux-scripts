# Custom prompt
autoload -Uz colors && colors

PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg[red]%}%m
%{$fg_bold[yellow]%}%1~ %{$reset_color%}%# "

RPROMPT="(%{$fg_bold[yellow]%}%!%{$reset_color%})"

# Custom aliases
alias hist="history"
alias cls="clear"