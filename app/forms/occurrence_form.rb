class OccurrenceForm
  include ActiveModel::Model # act as a model

  attr_accessor :time, :date, :location, :description

  def persisted?
    false
  end

  def self.model_name
    ActiveModel::Name.new(self, nil, "Occurrence")
  end

  def submit(params = {})
    @occurrence = Occurrence.new(params)

    hour    = params[:time].split(':')[0].to_i
    minutes = params[:time].split(':')[1].to_i

    year  = params[:date].split('/')[0].to_i
    month = params[:date].split('/')[1].to_i
    day   = params[:date].split('/')[2].to_i

    @occurrence.hour = DateTime.new(year, month, day, hour, minutes, 0, '-3')

    @occurrence.attributes = params.slice(:description, :location)

    get_lat_long(@occurrence.location)

    @occurrence.likes ||= 0

    if @occurrence.valid?
      @occurrence.save
    else
      false
    end
  end

  def get_lat_long(location)
    geo = Geocoder.search(location).first
    @occurrence.latitude  = geo.latitude
    @occurrence.longitude = geo.longitude
  end
end
