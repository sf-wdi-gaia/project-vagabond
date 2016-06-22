class CreatePeriodPosts < ActiveRecord::Migration
  def change
    create_table :period_posts do |t|
      t.references :post, index: true, foreign_key: true
      t.references :period, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
