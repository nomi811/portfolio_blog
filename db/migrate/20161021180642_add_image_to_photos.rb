# frozen_string_literal: true

class AddImageToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image, :string
    add_column :photos, :image_id, :string
  end
end
