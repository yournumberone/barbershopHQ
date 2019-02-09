class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
    create_table :barbers do |t|
      t.text :name
      t.timestamps
    end
    Barber.create name: "Walter White"
    Barber.create name: "Jesse Pinkman"
    Barber.create name: "Gustavo Fring"
  end
end
