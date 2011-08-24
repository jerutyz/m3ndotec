class Tarea < ActiveRecord::Base
  validates :nombre , :detalle ,:horas, :empresa, :fecha, :presence => true
  validates :horas , :numericality => true

  belongs_to :empresa
  belongs_to :encargado
  #has_one :empresa
  #validates :fecha,
 #   :date => true {:after => Time.now, :before => Time.now + 1.year}
def self.search(search, page)
  paginate :per_page => 1, :page => page,
           :conditions => ['name like ?', "%#{search}%"], :order => 'name'
end


end

 
