class CreateIdiots < ActiveRecord::Migration[5.2]
  def change
    create_table :idiots do |t|
      t.text :name
      t.timestamps
    end
    Idiot.create name: 'Murtaza Rakhimov'
    Idiot.create name: 'Lzhedmitry Medvedev'
    Idiot.create name: 'Aidar Galimov'
  end
end
