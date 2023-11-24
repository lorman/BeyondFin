class CreateAssets < ActiveRecord::Migration[7.1]
  def change
    create_table :assets do |t|
      t.string :name

      t.timestamps
    end

    add_reference :assets, :campaigns, foreign_key: true
  end
end
