function _pure_prompt_symbol \
    --description 'Print prompt symbol' \
    --argument-names exit_code

    set --local prompt_symbol (_pure_get_prompt_symbol)
    set --local symbol_color_success (_pure_set_color $pure_color_prompt_on_success)
    set --local symbol_color_error (_pure_set_color $pure_color_prompt_on_error)
    set --local command_succeed 0

    set --local symbol_color $symbol_color_success # default pure symbol color
    if set --query exit_code; and test "$exit_code" -ne $command_succeed
        set symbol_color $symbol_color_error # different pure symbol color when previous command failed
        set prompt_symbol $exit_code$prompt_symbol
    end

    echo "$symbol_color$prompt_symbol"
end
