class AddSlugToPatterns < ActiveRecord::Migration
  def change
    add_column :patterns, :slug, :string
    add_index :patterns, :slug, unique: true
  end
end
