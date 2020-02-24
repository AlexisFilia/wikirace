class CreateVisitedPages < ActiveRecord::Migration[5.2]
  def change
    create_table :visited_pages do |t|
      t.references :round_participation, foreign_key: true
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
