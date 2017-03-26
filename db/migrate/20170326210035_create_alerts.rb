class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.text :content
      t.string :activo
      t.float :cantidad
      t.string :tipo
      t.string :fecha_abierta
      t.string :fecha_cerrada
      t.float :abrir
      t.float :cerrar
      t.string :motivo_para_cerrar
      t.float :pago
      t.float :ganancias
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :alerts, [:user_id, :created_at]
  end
end
