class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null:false
      t.string :email, null: false
      t.string :website
      t.string :github, null: false
      t.string :twitter
      t.string :linkedin
      t.timestamps
    end
  end
end
