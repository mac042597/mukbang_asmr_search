# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者権限を持つユーザーを追加
User.create!(
  { email: "mako.eguchi0425@gmail.com",
    name: "マコ@admin",
    password: "12240425",
    password_confirmation: "12240425",
    role: 1
  }
)