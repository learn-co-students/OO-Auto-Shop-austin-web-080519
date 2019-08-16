require_relative 'car'
require_relative 'mechanic'
require_relative 'car_owner'

require 'pry'

# < --- testing, create new owner --->
syd_bailey = CarOwner.new("Syd Bailey")
hemesh_patel = CarOwner.new("Hemesh Patel")
mitch = CarOwner.new("Mitchell")
# <--- end testing --->

# <--- testing , new mechanics --->
teddy = Mechanic.new("Teddy", "American")
paulie = Mechanic.new("Paulie", "Italian")
sven = Mechanic.new("Sven", "Swedish")
# <--- end testing --->

# < --- testing, add new car ---->
toyota_corolla = Car.new("Toyota", "Corolla", "American", syd_bailey, teddy)
fiat_500 = Car.new("Fiat", "500", "Italian", syd_bailey, paulie)
ford_focus = Car.new("Ford", "Focus", "American", hemesh_patel, teddy)
mini_cooper = Car.new("Mini", "Cooper", "Swedish", mitch, sven)
# <--- end testing --->

# <--- testing, all car --->
Car.all
# <--- end testing --->

# <--- return a list of all MY CARS --->
syd_bailey.my_cars # 2 cars
hemesh_patel.my_cars # 1 car
mitch.my_cars # 1 car
# <--- end testing --->

# <--- testing, instance method my_mechanics -->
syd_bailey.my_mechanics #return two mechanics
# <--- end testing --->

# <--- testing, all_cars instance method --->
teddy.all_cars
paulie.all_cars
sven.all_cars
# <--- end testing --->


# <--- testing, all mechanics --->
Mechanic.all
# <--- end testing ---> 

# < --- testing, class method 'Classifications' --->
Car.classifications
# <--- end testing --->

# <--- testing, instance method "Mechanics" --->
# should return all mechanics where the mechanics specialty matches car's classification
fiat_mechanics = fiat_500.mechanics
ford_mechanics = ford_focus.mechanics
# < end testing >

# <--- testing my_owners --->
paulie_clients = paulie.my_owners
# <--- end testing --->

# <--- testing average of vehicles to owners
CarOwner.average_amount
# < --- end testing --->


binding.pry