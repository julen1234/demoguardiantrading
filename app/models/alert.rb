class Alert < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :activo, presence: true
  validates :cantidad, presence: true
  validates :tipo, presence: true
  validates :fecha_abierta, presence: true
  validates :fecha_cerrada, presence: true
  validates :abrir, presence: true
  validates :cerrar, presence: true
  validates :motivo_para_cerrar, presence: true
  validates :pago, presence: true
  validates :ganancias, presence: true
end
