# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Ajay",
            email: "regen8@tamu.edu",
            password:              "1234567",
            password_confirmation: "1234567",
            is_admin: true)

User.create!(name:  "Anne",
            email: "aeb178@tamu.edu",
            password:              "1234567",
            password_confirmation: "1234567",
            is_admin: true)
User.create!(name:  "khai",
            email: "khaihuyennguyen90@tamu.edu",
            password:              "1234567",
            password_confirmation: "1234567",
            is_admin: true)
User.create!(name:  "Olsi",
            email: "olsisadiku@tamu.edu",
            password:              "1234567",
            password_confirmation: "1234567",
            is_admin: true)

User.create!(name:  "Max",
            email: "m.zavala22@tamu.edu",
            password:              "1234567",
            password_confirmation: "1234567",
            is_admin: true)

User.create!(name:  "Hanbit",
            email: "hk24536@tamu.edu",
            password:              "1234567",
            password_confirmation: "1234567",
            is_admin: true)
            