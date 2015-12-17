class Apartamento < ActiveRecord::Base
	has_many :vehiculos
	has_many :residentes

	validates :numero, presence: true
	validates :torre, presence: true
	validates :piso, presence: true

	# Primera regla de negocio
	def valor_administracion
		area * 2300
	end


end
