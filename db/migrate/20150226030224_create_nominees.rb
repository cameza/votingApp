class CreateNominees < ActiveRecord::Migration
  def change
    create_table :nominees do |t|
      t.string :nominee_mail
      t.string :nominee_name
      t.text :cv
      t.text :statement
      t.boolean :committee_check
      t.integer :committee_check_count
      t.boolean :chairman_check
      t.integer :confirmed
      t.integer :not_confirmed
      t.integer :abstained

      t.timestamps
    end
  end
end
