class AddRefsToSwim < ActiveRecord::Migration[5.0]
  def change
    add_reference :swims, :user, foreign_key: true
    add_reference :swims, :challenge, foreign_key: true
  end
end
