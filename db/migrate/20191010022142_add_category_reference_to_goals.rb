class AddCategoryReferenceToGoals < ActiveRecord::Migration[5.2]
  def change
    add_reference :goals, :category, foreign_key: true
  end
end
