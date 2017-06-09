class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.integer :employee

      t.timestamps
    end
  end
end
