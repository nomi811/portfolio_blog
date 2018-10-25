# frozen_string_literal: true

class AddImageToPatterns < ActiveRecord::Migration
  def change
    add_column :patterns, :image, :string
    add_column :patterns, :image_id, :string
  end
end
