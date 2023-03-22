ActiveAdmin.register Category do
    permit_params :categoryname
     
index do
      selectable_column
      id_column
      column  :categoryname
    
      column :created_at
      actions
    end
  
    filter  :categoryname
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input  :categoryname
      end
      f.actions
    end
  
  end