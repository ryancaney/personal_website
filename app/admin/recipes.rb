ActiveAdmin.register Recipe do
     index do
       column :name
       column :author
       column :ingredients
       column :directions
       default_actions
     end
end
