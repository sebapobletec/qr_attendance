ActiveAdmin.register Worker do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params :name, :rut, :company_id
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  column :name
  column :company
  column :created_at
  actions
end

filter :company, as: :select
filter :name
filter :rut
filter :created_at


end
