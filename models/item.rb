class Item

  attr_reader :item

  def initialize(params)
    @name = params[:item]
  end

end