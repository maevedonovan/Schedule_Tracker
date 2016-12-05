class CreateProssefors < ActiveRecord::Migration[5.0]
  def change
    create_table :prossefors do |t|
      t.string :f_name
      t.string :l_name
      t.string :department

      t.timestamps
    end
  end
end
