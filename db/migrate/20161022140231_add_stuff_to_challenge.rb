class AddStuffToChallenge < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :name, :string
    add_column :challenges, :position_points, :text
    add_column :challenges, :total_distance, :float
  end
end
