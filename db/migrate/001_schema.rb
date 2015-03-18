class Schema < ActiveRecord::Migration
  def change
    create_table :pharmacology_catalogs, force: true do |t|
      t.string :md5_id
      t.string :name
      t.integer :done, :default => 0
    end

    create_table :catalogs, force: true do |t|
      t.string :md5_id
      t.string :url
      t.string :name
      t.integer :total_page
      t.integer :cur_page, :default=>0
      t.integer :done, :default => 0
      t.string :pharmacology_catalog_md5_id
    end

    create_table :drugs, force: true do |t|
      t.string :md5_id
      t.string :url
      t.string :name
      t.string :producer
      t.string :product_name
      t.string :ingredient
      t.string :symptom
      t.string :catalog_md5_id
      t.string :pharmacology_catalog_md5_id
      t.integer :done, :default => 0
    end

    create_table :drug_items, force: true do |t|
      t.string :md5_id
      t.string :url
      t.string :name
      t.string :item
      t.text :content
      t.string :drug_md5_id
      t.integer :done, :default => 0
    end
  end
end
