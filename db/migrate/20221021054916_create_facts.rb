class CreateFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :facts do |t|
      t.references :user, foreign_key: true
      t.string :fact
      t.integer :likes

      t.timestamps
    end
  end
end
