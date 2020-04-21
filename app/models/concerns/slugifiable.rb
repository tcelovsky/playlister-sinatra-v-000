module Slugifiable 
  def slug
    @slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end 
  
  def find_by_slug
    find_by_slug(params[:slug])
  end
  
end