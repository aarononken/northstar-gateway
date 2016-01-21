ActiveAdmin.register Guardian do

	permit_params :guardian_first_name, :guardian_last_name, :password

	form do |f|
	f.inputs "Guardian Details" do
	  f.input :guardian_first_name, :label => "First Name"
	  f.input :guardian_last_name, :label => "Last Name"
	  f.input :family_id, :as => :select, :collection => Family.all.map{ |f| ["#{f.parent_first_name} #{f.parent_last_name}", f.id]}, :label => "Family"
	  f.input :password
	end
	f.actions
	end

end