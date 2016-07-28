# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Region.create(name: "NCR")

Area.create(name: "Makati", province: "Metro Manila", is_city: true, region_id: 1)
Area.create(name: "Muntinlupa", province: "Metro Manila", is_city: true, region_id: 1)

LguOfficer.create(username: "admelgar", password: "123456", password_confirmation: "123456", first_name: "Anna", last_name: "Melgar", phone_number: "09171234567", area_id: 1)
LguOfficer.create(username: "janineladdaran", password: "123456", password_confirmation: "123456", first_name: "Janine", last_name: "Laddaran", phone_number: "09177654321", area_id: 2)

Resident.create(first_name: "Jacq", last_name: "Hernandez", address: "Greenbelt, Makati", phone_number: "09177948818", phone_subscriber: "Globe", area_id: 1)
Resident.create(first_name: "Erika", last_name: "Reyes", address: "SM Makati", phone_number: "09154480244", phone_subscriber: "Globe", area_id: 1)
Resident.create(first_name: "Alvin", last_name: "Bravo", address: "New BIlibid Prison", phone_number: "09274869965", phone_subscriber: "Globe", area_id: 2)
Resident.create(first_name: "Dan Ping", last_name: "Cai", address: "Jamboree Lake, Muntinlupa", phone_number: "09154480244", phone_subscriber: "Globe", area_id: 2)

EvacuationCenter.create(name:"Villamor Air Base Golf Course", address: "Villamor Golf Club, Colonel Jesus Villamor Air base, Pasay City, Metro Manila", longitude: 121.05012310000001, latitude: 14.5537703, contact_person: "Toni Garcia", contact_number: "09171234567")
EvacuationCenter.create(name:"Intramuros Golf Course", address: "Bonifacio Drive, Intramuros, Manila", longitude: 121.05012310000001, latitude: 14.5537703, contact_person: "Kevin Cua", contact_number: "09171234567")
EvacuationCenterArea.create(evacuation_center_id:1, area_id: 1)
EvacuationCenterArea.create(evacuation_center_id:2, area_id: 1)
EvacuationCenterArea.create(evacuation_center_id:1, area_id: 2)

HealthCenter.create(name:"Red Cross Marikina", address: "J. P. Rizal St, Kupang, Marikina, 1820 Metro Manila", longitude: 121.05012310000001, latitude: 14.5537703, contact_person: "Toni Garcia", contact_number: "09171234567")
HealthCenter.create(name:"Ultra Pasig", address: "PhilSports Arena, Capt. Henry P. Javier, Pasig, Metro Manila", longitude: 121.05012310000001, latitude: 14.5537703, contact_person: "Kevin Cua", contact_number: "09171234567")
HealthCenterArea.create(health_center_id:1, area_id: 1)
HealthCenterArea.create(health_center_id:2, area_id: 1)
HealthCenterArea.create(health_center_id:1, area_id: 2)

LguResponse.create(longitude: 121.05012310000001, latitude: 14.5537703, disaster_type: "Flood", lgu_officer_id: 1)
LguResponse.create(longitude: 121.15012310000001, latitude: 15.5537703, disaster_type: "Earthquake", lgu_officer_id: 2)

ResidentLguResponse.create(longitude: 121.25012310000001, latitude: 15.5637703, is_safe: false, resident_id: 1, lgu_response_id: 1)
ResidentLguResponse.create(longitude: 121.26012310000001, latitude: 16.5637703, is_safe: false, resident_id: 2, lgu_response_id: 1)
ResidentLguResponse.create(longitude: 121.26012310000001, latitude: 14.1637703, is_safe: true, resident_id: 3, lgu_response_id: 2)
ResidentLguResponse.create(longitude: 120.26012310000001, latitude: 14.1637703, is_safe: false, resident_id: 4, lgu_response_id: 2)

