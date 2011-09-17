class Tarea < ActiveRecord::Base


   belongs_to :empresa
   belongs_to :user
   belongs_to :encargado

  validates :nombre , :detalle ,:horas, :empresa, :user_id,:fecha, :empresa_id, :estado, :presence => true
  validates :horas , :numericality => true


  #has_one :empresa
  #validates :fecha,
 #   :date => true {:after => Time.now, :before => Time.now + 1.year}


end

 
