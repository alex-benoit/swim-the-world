class CreateSwims < ActiveRecord::Migration[5.0]
  def change
    create_table :swims do |t|

      t.timestamps
    end
  end
end
