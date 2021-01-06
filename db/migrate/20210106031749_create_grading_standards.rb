class CreateGradingStandards < ActiveRecord::Migration[5.2]
  def change
    create_table :grading_standards do |t|
      t.string :title
      t.text :data
      t.integer :usage_count

      t.timestamps
    end
  end
end
