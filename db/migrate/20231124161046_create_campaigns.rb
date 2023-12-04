class CreateCampaigns < ActiveRecord::Migration[7.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.timestamps
    end

    add_reference :campaigns, :user, foreign_key: true
  end
end
