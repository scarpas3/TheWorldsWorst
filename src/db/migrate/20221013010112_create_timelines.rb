class CreateTimelines < ActiveRecord::Migration[6.0]
  def change
    create_table :timelines do |t|
      t.string :company_name
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
