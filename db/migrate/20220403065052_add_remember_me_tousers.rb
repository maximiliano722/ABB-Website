# frozen_string_literal: true

class AddRememberMeTousers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :remember_digest, :string
    # he probability of two remember tokens colliding is a negligibly small 1/6422=2−132≈10−40
  end
end
