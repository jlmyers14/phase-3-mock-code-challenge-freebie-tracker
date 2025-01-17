class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value

      # AR Relationships
      # freebie belongs-to company
      # freebie belongs-to dev

      # t.integer :company_id
      # t.integer :dev_id

      t.belongs_to :company
      t.belongs_to :dev

    end
  end
end
