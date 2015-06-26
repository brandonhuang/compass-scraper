class Activities < ActiveRecord::Migration
  def change
    create_table :activities, id: false do |t|
      t.integer :id
      t.string :title
    end
  end
end
