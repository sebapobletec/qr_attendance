ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params :company_id, :title, :theme, :date
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
filter :company, as: :select
filter :title
filter :theme, as: :select
filter :date


index do
  column :title
  column :theme
  column :company
  column :created_at
  actions
end

end
