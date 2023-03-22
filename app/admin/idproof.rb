ActiveAdmin.register Idproof do
    permit_params :image
     
index do
      selectable_column
      id_column
      column  :document
      column :status
      column :sign_in_count
      column :created_at
      actions
    end
    
    
    filter  :document
    filter :status
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input  :document
        f.input :status
      end
      f.actions
    end
  
  end    
 