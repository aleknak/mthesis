# Configuration
VIDEO_COUNT = rand(20) + 20

# Database cleanup
User.delete_all
Video.delete_all

# Users
puts " * Seeding users"
admin = FactoryGirl.create(:user, name: 'Admin', email: 'admin@example.com', is_admin: true)
admin.save
puts " - created admin user"

# Assets
puts "\n * Seeding some videos"
(1..VIDEO_COUNT).each do |i|
  video = FactoryGirl.create(:video)
  video.save
  puts " - created video #{i}: #{video.title}"
end
