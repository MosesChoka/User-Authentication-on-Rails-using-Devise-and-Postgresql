class CreateDataSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :data_sessions do |t|
      t.string :title
      t.string :subtitle
      t.text :image
      t.text :body
      t.text :keywords

      t.timestamps
    end
  end
end
