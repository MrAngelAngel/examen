class Example < ActiveRecord::Base
  mount_uploader :my_file, FileUploader
end
