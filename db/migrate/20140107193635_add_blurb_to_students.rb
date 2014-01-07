class AddBlurbToStudents < ActiveRecord::Migration
  def change
    add_column :students, :blurb, :string
  end
end
