require 'rails-i18n'
ActiveAdmin.register_page "Dashboard" do         
  menu priority: 3, label: proc{ I18n.t("active_admin.dashboard") }
  #menu class: "blank_slate_container dropdown text-right", title: proc{ "Vjdf" } do
  #  a :href => "#", class: "dropdown-toggle", data-toggle => "dropdown", data-hover => "dropdown", data-delay => "0", data-close-others => "false", title: proc{ I18n.t("ssss") } do
  #          b class: " icon-angle-down"
  #  end
  #  ul class: "dropdown-menu" do
  #      li link_to_unless_current I18n.t("layouts.application.ua"), locale: "ua"
  #      li link_to_unless_current I18n.t("layouts.application.en"), locale: "ua"
  #      li link_to_unless_current I18n.t("layouts.application.ru"), locale: "ua"
  #  end
  #end
  content title: proc{ I18n.t("active_admin.dashboard") } do

    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end

    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
