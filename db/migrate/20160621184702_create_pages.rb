class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :information

      t.timestamps null: true
    end
  end
end
