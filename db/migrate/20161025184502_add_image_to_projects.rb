class AddImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :image, :string
    add_column :projects, :image_id, :string
  end
end
