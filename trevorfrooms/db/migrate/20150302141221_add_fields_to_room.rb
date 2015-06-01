class AddFieldsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :rletterday, :string
    add_column :rooms, :rperiod, :integer
    add_column :rooms, :rnumber, :integer
    add_column :rooms, :rdate, :date
    add_column :rooms, :rfree, :boolean
  end
end
