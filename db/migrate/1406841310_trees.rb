class Trees < ActiveRecord::Migration
  def up
    create_table :trees do |t|
      t.string :name
    end
  end

  def down
    drop_table :trees
  end
end
