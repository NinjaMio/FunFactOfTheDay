class CreateFunfacts < ActiveRecord::Migration[5.2]
  def change
    create_table :funfacts do |t|
      t.string :fact
      t.string :author
      t.timestamps
    end
  end
end
