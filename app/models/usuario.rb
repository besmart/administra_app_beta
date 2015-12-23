class Usuario < ActiveRecord::Base

	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :login, presence:true, uniqueness: true
	validates :clave, presence:true, length: {maximum: 12, minimum: 6}
	validates :correo, presence:true, uniqueness:true, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	has_secure_password

	def self.authenticate(email = '', password = '')
		find_by('(correo = :correo or login = :correo) and clave = :clave', correo: email, clave: password)
	end
end
