class CreateMarketings < ActiveRecord::Migration[6.0]
  def change
    create_table :marketings do |t|
      t.integer :user_id
      t.text :object
      t.text :company
      t.text :consumer
      t.text :costomer
      t.text :competitor
      t.text :community
      t.string :st
      t.string :pp1
      t.string :pp2
      t.string :pp3
      t.text :kenzai
      t.text :senzai
      t.text :insight
      t.string :what
      t.text :how1
      t.text :how2
      t.text :how3
      t.text :explanation

      t.timestamps
    end
  end
end
