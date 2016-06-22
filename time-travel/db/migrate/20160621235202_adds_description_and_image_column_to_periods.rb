class AddsDescriptionAndImageColumnToPeriods < ActiveRecord::Migration
  def change
  	add_column :periods,:image, :string
  	add_column :periods, :description, :string
  end
end
