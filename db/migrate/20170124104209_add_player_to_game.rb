class AddPlayerToGame < ActiveRecord::Migration[5.0]
  def change
      add_column :games, :players, :integer   
  end
end