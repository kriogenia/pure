# a called to `_pure_prompt_new_line` is triggered by an event
function fish_prompt
    set --local exit_code $status # save previous exit code

    echo -e -n (_pure_prompt_first_line)
    echo -e -n (_pure_prompt $exit_code) # print prompt
    echo -e (_pure_prompt_ending) # reset colors and end prompt

    set _pure_fresh_session false
end
