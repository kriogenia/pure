function _pure_prompt_k8s
    if set --query pure_enable_k8s;
        and test "$pure_enable_k8s" = true;
        and _pure_check_availability pure_enable_k8s kubectl
        and test -n "$(_pure_k8s_context)"

        set -l symbol (_pure_set_color $pure_color_k8s_symbol)$pure_symbol_k8s_prefix
        set -l context (_pure_set_color $pure_color_k8s_context)(_pure_k8s_context)
        set -l namespace (_pure_set_color $pure_color_k8s_namespace)(_pure_k8s_namespace)

        if test -n "$namespace"
            set -l namespace (_pure_set_color $pure_color_k8s_namespace)default
        end

        echo "$symbol $context/$namespace"
    end
end
