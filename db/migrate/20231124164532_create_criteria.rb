class CreateCriteria < ActiveRecord::Migration[7.1]
  def change
    create_table :criteria do |t|
      t.string :type
      t.string :operand
      t.string :image
      t.integer :order
      t.integer :parent_id

      t.timestamps
    end

    add_reference :criteria, :assets, foreign_key: true
  end
end
