ActiveRecord::Schema.define do
  self.verbose = false

  create_table :paperclip_uploads, :force => true do |t|
    t.string :avatar_file_name
    t.string :avatar_content_type
    t.text   :retina_dimensions
    t.timestamps
  end

  create_table :carrier_wave_uploads, :force => true do |t|
    t.string :avatar
    t.text   :retina_dimensions
    t.timestamps
  end

end