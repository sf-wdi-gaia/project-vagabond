class AddsUserIdColumnToPeriods < ActiveRecord::Migration
  def change
  	add_reference :periods, :user, index: true, foreign_key: true
  end
end
