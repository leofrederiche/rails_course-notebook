module ApplicationHelper
    BRAZILIAN_STATES = [
        ["São Paulo", "SP"],
        ["Rio de Janeiro", "RJ"],
        ["Bahia", "BA"],
        ["Belo Horizonte", "BH"],
        ["Paraná", "PR"]
    ]

    def options_for_states(selected)
        options_for_select(BRAZILIAN_STATES, selected)
    end
end
