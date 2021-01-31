class CreateEmpdata < ActiveRecord::Migration[6.1]
  def change
    create_table :empdata do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
