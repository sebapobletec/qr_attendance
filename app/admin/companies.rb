ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params :name, :rut, :address, :user_id
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do
  selectable_column
  column :name
  column :user do |company|
    company.user.email
  end
  column :created_at
  actions
end

filter :user_id,
  label: 'User',
  as: :select,
  collection: User.pluck(:email, :id)
filter :name
filter :rut
filter :created_at

form do |f|
  inputs 'Add Company' do
    f.input :user_id,
      label: 'User',
      as: :select,
      collection: User.pluck(:email, :id)
    input :name
    input :rut
    input :address

  end
  actions
end

end
