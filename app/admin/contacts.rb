ActiveAdmin.register Contact do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :candidate_name, :father_name, :college, :course_interest, :email_id, :phone_number, :query
  #
  # or
  #
  # permit_params do
  #   permitted = [:candidate_name, :father_name, :college, :course_interest, :email_id, :phone_number, :query]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :candidate_name, :father_name, :college, :course_interest, :email_id, :phone_number, :query

  index do
    selectable_column
    id_column
    column :candidate_name
    column :father_name
    column :college
    column :course_interest
    column :email_id
    column :phone_number
    column :query
    column :created_at
    column :updated_at
    actions
  end

  filter :candidate_name
  filter :father_name
  filter :college
  filter :course_interest
  filter :email_id
  filter :phone_number
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :candidate_name
      f.input :father_name
      f.input :college
      f.input :course_interest
      f.input :email_id
      f.input :phone_number
      f.input :query
    end
    f.actions
  end
  
end
