class RemoveNameAgeAddressFromUser < ActiveRecord::Migration
  def change
      remove_column :users, :name , :age , :address
  end
end
