class CreateAssets < ActiveRecord::Migration[7.1]
  def change
    create_table :azzets do |t|
      t.string :name

      t.timestamps
    end

    add_reference :azzets, :campaign, foreign_key: true
  end
end
