class CreateSwaps < ActiveRecord::Migration[6.1]
  def change
    create_table :swaps do |t|

      t.timestamps
    end
  end
end
