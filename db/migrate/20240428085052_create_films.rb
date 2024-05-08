class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.string :director
      t.integer :year_of_creation
      t.string :genres

      t.timestamps
    end
  end
end
