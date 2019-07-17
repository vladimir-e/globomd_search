class CreateProceduresProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures_providers do |t|
      t.references :provider, foreign_key: true
      t.references :procedure, foreign_key: true
      t.decimal :price_low
      t.decimal :price_high

      t.timestamps
    end
  end
end
