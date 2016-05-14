ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    

    section "Reel Movement Users" do
    table_for User.order("id desc").limit(15) do
      column :name do |user|
        link_to user.name, [:admin, user]
      end
      column :email
      column :subscribed
      column :stripeid 
    end
    strong { link_to "View All Users", admin_users_path }
  end


  section "Reel Movement Programs" do
    table_for   Program.order("id desc").limit(10) do
      column :level
      column :title do |program|
        link_to program.title, [:admin, program]
      end
      column :description
   
    end
    strong { link_to "View All Programs", admin_programs_path }
  end

  section "Reel Movement Recipes" do
    table_for   Recipe.order("id desc").limit(10) do

      column :title do |program|
        link_to program.title, [:admin, program]
      end
   
    end
    strong { link_to "View All Recipes", admin_recipes_path }
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
