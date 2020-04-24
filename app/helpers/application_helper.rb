module ApplicationHelper

    def is_home?
        controller.controller_name == "public" && controller.action_name == "home"
    end

    def is_auth?
        controller.controller_name == "sessions" || controller.controller_name == "registrations"
    end
end
