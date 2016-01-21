ActiveAdmin.register Guardian do

  form do |f|
    f.inputs "Guardian Details" do
      f.input :guardian_first_name, :label => "First Name"
      f.input :guardian_last_name, :label => "Last Name"
      f.input :family_id, :as => :select, :collection => Family.all.map{ |f| ["#{f.parent_first_name} #{f.parent_last_name}", f.id]}, :label => "Family"
    end
    f.actions
  end

end
