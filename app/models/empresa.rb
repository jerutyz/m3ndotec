class Empresa < ActiveRecord::Base
	has_many :tareas

	def to_s
		self.nombre
	end
end