class Empresa < ActiveRecord::Base
	has_many :tareas
	has_many :contactos
	def to_s
		self.nombre
	end
end