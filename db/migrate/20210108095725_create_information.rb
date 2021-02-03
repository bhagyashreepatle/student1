class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
    	t.integer "roll"
    	t.string "username"
    	t.string "password"

      t.timestamps
    end
    add_index("information","roll")
  end
end
