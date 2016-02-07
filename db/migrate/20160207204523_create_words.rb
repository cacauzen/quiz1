class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|

    	t.string :advice
    	t.string :author

      	t.timestamps
    end
  end
end
