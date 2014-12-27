class Cinema < ActiveRecord::Base

  has_attached_file :video, styles: {
      medium: { :geometry => "640x480", format: 'flv' },
      thumb: { geometry: "100x100#", format: 'jpg', time: 10 }
  }, processors: [:transcoder]

   do_not_validate_attachment_file_type :video
  #
  # validates :video, :attachment_presence => true
  # validates_with AttachmentPresenceValidator, :attributes => :video
  # validates_with AttachmentSizeValidator, :attributes => :video, :less_than => 1.megabytes
  #
  # validates_attachment :video, content_type: { content_type: ["video/mp3", "video/mp4", "video/flv"] }
  # validates_attachment_file_name :video, :matches => [/mp3\Z/, /mp4\Z/, /flv\Z/]


end
