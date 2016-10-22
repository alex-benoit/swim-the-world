class AddStuffToSwim < ActiveRecord::Migration[5.0]
  def change
    add_column :swims, :distance_done, :float
  end
end
