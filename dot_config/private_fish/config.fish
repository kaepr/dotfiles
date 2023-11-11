if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source

function nvim-kick
    env NVIM_APPNAME=nvim-kickstart nvim
end

function nvims
    set items nvim-kick 
    set config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $config ]
        echo "Nothing selected"
        return 0
    else if [ $config = "default" ]
        set config ""
    end
    env NVIM_APPNAME=$config nvim $argv
end

bind \ca 'nvims\n'```
