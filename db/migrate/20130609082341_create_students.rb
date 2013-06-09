class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
    	t.string "name"
    	t.string "username"
    	t.string "password"
    	t.string "std"
    	t.string "section"
    	t.string "email_id"
    	t.integer "mobile_number"
      t.timestamps
    end
  end
  def down
  	drop_table :students
  	
  end
end
