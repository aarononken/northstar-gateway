ActiveAdmin.register Check do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do
    selectable_column
    column "First Name" do |check|
      check.child.child_first_name
    end
    column "Last Name" do |check|
      check.child.child_last_name
    end
    column "Checked In" do |check|
      check.checked_in
    end
    column "Program" do |check|
      check.program.program_name
    end
    column do |check|
      check.created_at
    end
    actions
  end
  
end
