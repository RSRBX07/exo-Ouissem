class AddPlayersAndDraw < ActiveRecord::Migration[5.0]
  def change
      add_column :games, :players, :integer 
      add_column :games, :draw, :string 
  end
end
