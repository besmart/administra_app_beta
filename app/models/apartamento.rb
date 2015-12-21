class Apartamento < ActiveRecord::Base
	has_many :vehiculos
	has_many :residentes

	validates :numero, presence: true, uniqueness: true
	validates :torre, presence: true
	validates :piso, presence: true
	validates :area, numericality: {greater_than_or_equal_to: 0}

	# Primera regla de negocio
	def valor_administracion
		area * 2300
	end


end
