# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120904201213) do

  create_table "product_sales", :force => true do |t|
    t.integer  "sale_id"
    t.integer  "product_id"
    t.integer  "qty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "product_sales", ["product_id"], :name => "index_product_sales_on_product_id"
  add_index "product_sales", ["sale_id"], :name => "index_product_sales_on_sale_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "qty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sales", :force => true do |t|
    t.integer  "salesman_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sales", ["salesman_id"], :name => "index_sales_on_salesman_id"

  create_table "salesmen", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
