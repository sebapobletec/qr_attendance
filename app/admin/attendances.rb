ActiveAdmin.register Attendance do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params :event_id, :worker_id, :attend
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  selectable_column
  column :event
  column :worker
  column :company do |attendance|
    attendance.event.company
  end
  column :created_at
  column :attend
  actions
end

filter :event, as: :select
filter :worker, as: :select
filter :created_at
filter :attend, as: :select


end
