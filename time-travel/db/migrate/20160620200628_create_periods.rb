class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :name
      t.date :start_time
      t.date :end_time

      t.timestamps null: false
    end
  end
end
