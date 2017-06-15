class CreateStarWarsFacts < ActiveRecord::Migration[5.1]
  def change
    create_table :star_wars_facts do |t|
      t.text :character
      t.text :droid
      t.text :planet
      t.text :quote
      t.text :vehicle

      t.timestamps
    end
  end
end
