# This migration comes from okm_core (originally 20160721180809)
class CreateOkmCoreHumen < ActiveRecord::Migration[5.0]
  def up
    create_table :okm_core_humen do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
    execute <<-SQL
      CREATE TYPE gender as ENUM('male','female');
    SQL
  end

  def down
    drop_table :okm_core_humen
    execute <<-SQL
      DROP TYPE gender;
    SQL
  end
end
