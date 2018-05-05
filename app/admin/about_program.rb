ActiveAdmin.register AboutProgram do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :version, :subversion, :made
	form do |f|
    f.inputs "Admin Details" do
      f.input :version
      f.input :subversion
      f.input :made
    end
    f.actions
  end
end
