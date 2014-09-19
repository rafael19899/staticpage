class CreateTaskita < ActiveRecord::Migration
  def change
    create_table :taskita do |t|
      t.string :task

      t.timestamps
    end
  end
end
