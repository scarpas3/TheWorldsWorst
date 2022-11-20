class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :company_name
      t.string :description
      t.integer :year
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps
    end
  end
end
