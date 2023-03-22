ActiveAdmin.register Product do
    permit_params :name
    permit_params :description
    permit_params :price
    permit_params :category
    permit_params :status
  
     
index do
      selectable_column
      id_column
      column :name
      column :description
      column :price
      column :category
      column :status
      column :created_at
      actions
    end
  
    filter :name
    filter :description
    filter :price
    filter :category
    filter :status
    filter :created_at

    form do |f|
    f.inputs do
        f.input :name
        f.input :description
        f.input :price
        f.input :category
        f.input :status
      end
      f.actions
    end
  
  end



  