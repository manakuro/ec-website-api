# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

categories = [
    { parent_id: 0, name: 'Shoes' },
    { parent_id: 0, name: 'Tops & T-Shir' },
    { parent_id: 0, name: 'Hoodies & Pullovers' },
    { parent_id: 0, name: 'Jackets & Vests' },
    { parent_id: 0, name: 'Pants & Tights' },
    { parent_id: 0, name: 'Shorts' },
    { parent_id: 0, name: 'Surf & Swimwear' },
    { parent_id: 0, name: 'Socks' },
    { parent_id: 0, name: 'Accessories & Equipment' },
]

subCategories = [
    { parent_id: 1, name: 'Lifestyle (265)' },
    { parent_id: 1, name: 'Running (60)' },
    { parent_id: 1, name: 'Basketball (90)' },
    { parent_id: 1, name: 'Football (24)' },
    { parent_id: 1, name: 'Soccer (43)' },
    { parent_id: 1, name: 'Training & Gym (37)' },
    { parent_id: 1, name: 'Skateboarding (60)' },
    { parent_id: 1, name: 'Baseball / Softball (27)' },
    { parent_id: 1, name: 'Golf (19)' },
    { parent_id: 1, name: 'Tennis (11)' },
    { parent_id: 1, name: 'Track & Field (31)' },
    { parent_id: 1, name: 'Yoga (1)' },
    { parent_id: 1, name: 'Lacrosse (19)' },

    { parent_id: 2, name: 'Lifestyle (265)' },
    { parent_id: 2, name: 'Running (60)' },
    { parent_id: 2, name: 'Basketball (90)' },
    { parent_id: 2, name: 'Football (24)' },
    { parent_id: 2, name: 'Soccer (43)' },
    { parent_id: 2, name: 'Training & Gym (37)' },
    { parent_id: 2, name: 'Skateboarding (60)' },
    { parent_id: 2, name: 'Baseball / Softball (27)' },
    { parent_id: 2, name: 'Golf (19)' },

    { parent_id: 3, name: 'Tennis (11)' },
    { parent_id: 3, name: 'Track & Field (31)' },
    { parent_id: 3, name: 'Yoga (1)' },
    { parent_id: 3, name: 'Lacrosse (19)' },
]
Category.create(categories)
Category.create(subCategories)