class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :description
      t.string :text
      t.string :picture

      t.timestamps
    end
  end
end

# name,age
# Adrian,29

class CreateFoos < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :name
      t.integer :age
      t.boolean :can_drink
      t.timestamps
    end
  end
end


