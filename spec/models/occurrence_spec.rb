require "rails_helper"

RSpec.describe User, type: :model do
  it "should save params from form" do
    occurrence = Occurrence.new(date: '30/10/1995', hour: '10:30', location: 'Rua ceará', description: 'blablabla')

    expect(occurrence.date).to eq('30/10/1995')
    expect(occurrence.hour).to eq('10:30')

    expect(occurrence.hour.split(':')[0].to_i).to eq(10)
    expect(occurrence.hour.split(':')[1].to_i).to eq(30)

    expect(occurrence.date.split('/')[0].to_i).to eq(30)
    expect(occurrence.date.split('/')[1].to_i).to eq(10)
    expect(occurrence.date.split('/')[2].to_i).to eq(1995)

    occurrence.save

    # expect(occurrence.date).to eq(Date.new(1995, 10, 30))
    # expect(occurrence.hour).to eq('10:30')

    expect(occurrence.time).to eq(DateTime.new(1995, 10, 30, 10, 30, 0, '-3'))
  end

  it 'should get latitude and longitude from API' do
    occurrence = Occurrence.new(date: '30/10/1995', hour: '10:30', location: 'Rua ceará', description: 'blablabla')

    occurrence.save

    expect(occurrence.latitude.nil?).to eq(false)
    expect(occurrence.longitude.nil?).to eq(false)
  end
end
