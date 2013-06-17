module ApplicationHelper

################################################################################
#                             -- Per page title --                             #
################################################################################

    def full_title(page_title)
        base_title = "TennisPro Coaching System"
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end
end
