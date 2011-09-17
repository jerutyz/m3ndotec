class Contacto < ActiveRecord::Base
  belongs_to :empresa
    # models/product.rb
def self.search(search, page)
	#Tarea.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  paginate :per_page => 1, :page => page,
           :conditions => ['nombre like ?', "%#{search}%"], :order => 'nombre'
end

  
end
