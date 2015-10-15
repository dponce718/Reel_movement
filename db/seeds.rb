# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'reelmovement@gmail.com', password: 'rowland1', password_confirmation: 'rowland1')

CreatePlanService.new.call
puts 'CREATED PLANS'


program = Program.create(title: "group workout", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="324" id="vzvd-5248691" mozallowfullscreen name="vzvd-5248691" src="//view.vzaar.com/5248691/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="576"></iframe>')

core_program = Program.create(title: "core", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5277901" mozallowfullscreen name="vzvd-5277901" src="//view.vzaar.com/5277901/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')

corrective_program = Program.create(title: "corrective", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5277940" mozallowfullscreen name="vzvd-5277940" src="//view.vzaar.com/5277940/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')

program = Program.create(title: "assessment", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5298522" mozallowfullscreen name="vzvd-5298522" src="//view.vzaar.com/5298522/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')