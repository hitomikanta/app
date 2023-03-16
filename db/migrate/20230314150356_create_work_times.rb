class CreateWorkTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :work_times do |t|

      t.datetime :in_work
      t.datetime :out_work
      t.references :user

      t.timestamps
    end
  end
end
