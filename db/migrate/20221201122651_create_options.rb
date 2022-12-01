# frozen_string_literal: true

# CreateOptions
class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :title, null: false
      t.integer :option_type, null: false, default: 0
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
