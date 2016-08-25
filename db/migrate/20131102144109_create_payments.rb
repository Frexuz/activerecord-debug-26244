class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.datetime :date
      t.string :status

      t.timestamps
    end

    add_index :payments, [:status, :date]
  end
end
