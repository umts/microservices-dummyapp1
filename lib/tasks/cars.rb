namespace :cars do
  task park_single: :environment do
    car = Car.unparked.first
    raise 'All cars have been parked' unless car.present?
    if car.can_park? then car.park!
    else raise 'No available parking spaces'
    end
  end

  task unpark_all: :environment do
    Car.clear_out!
  end
end
