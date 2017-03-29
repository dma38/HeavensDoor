ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Manage Categories" do
              li link_to("Categories", admin_categories_path)
        end
      end
    end

    columns do
      column do
        panel "Manage Flower Items" do
              li link_to("Flower Items", admin_flower_items_path)
        end
      end
    end

    columns do
      column do
        panel "Manage Locations of shops" do
              li link_to("Locations", admin_locations_path)
        end
      end
    end

    columns do
      column do
        panel "Manage Status" do
              li link_to("Status", admin_statuses_path)
        end
      end
    end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
