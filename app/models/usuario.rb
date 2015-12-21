class Usuario < ActiveRecord::Base

	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :login, presence:true, uniqueness: true
	validates :clave, presence:true, length: {maximum: 12, minimum: 6}
	validates :correo, presence:true, uniqueness:true
end
