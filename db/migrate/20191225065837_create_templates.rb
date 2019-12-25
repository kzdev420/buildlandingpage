class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.belongs_to :user
      t.json :temp
      t.timestamps
    end
  end
end
