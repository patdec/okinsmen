class CreateOkmCoreAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :okm_core_addresses do |t|
      t.references :human, index: true
      t.string :street
      t.string :zip
      t.string :city

      t.timestamps
    end

    add_foreign_key :okm_core_addresses, :okm_core_humen, column: :human_id
  end
end
