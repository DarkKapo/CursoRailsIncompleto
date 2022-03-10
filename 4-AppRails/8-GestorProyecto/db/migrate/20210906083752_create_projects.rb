class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :state, default: "propuesta"
      t.string :description
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
