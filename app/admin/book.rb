ActiveAdmin.register Book do
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
	permit_params :title, :auth, :zhanr, :pages_qty, :description, :mini_description,
    :likes_qty, :dislikes_qty,
    :image_url,
    :url_to_book,
    :name_of_file,
    :language,
    :rozshirennya,
    :origin_url_to_book
end
