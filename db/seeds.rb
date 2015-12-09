# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AdminUser.create!(email: 'reelmovement@gmail.com', password: 'rowland1', password_confirmation: 'rowland1')

CreatePlanService.new.call
puts 'CREATED PLANS'

 Program.create(title: "General Conditioning", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="324" id="vzvd-5248691" mozallowfullscreen name="vzvd-5248691" src="//view.vzaar.com/5248691/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="576"></iframe>',
code_two: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5277901" mozallowfullscreen name="vzvd-5277901" src="//view.vzaar.com/5277901/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
code_three: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5277940" mozallowfullscreen name="vzvd-5277940" src="//view.vzaar.com/5277940/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
schedule: '<div class="table-responsive">
    
    <table class="table">
    
        <thead>
    
            <tr>
    
                <th class="text-center">#</th>
    
                <th>Sunday</th>
    
                <th>Monday</th>
    
                <th>Tuesday</th>
    
                <th >Wednesday</th>
    
                <th >Thursday</th>

                <th >Friday</th>

                <th>Saturday</th>
    
            </tr>
    
        </thead>
    
        <tbody>
    
            <tr>
    
                <td class="text-center">1</td>                            
    
                <td>Flexibility and Mobility</td>
    
                <td>Total Body 1</td>
    
                <td>Rest Day</td>
    
                <td> Core and stability</td>

                <td>Rest Day</td>
    
                <td>Total Body 2</td>
    
                <td>Rest Day</td>
    
    
                
    
            </tr>
    
            <tr>
    
                
    
                <td class="text-center">2</td>
    
                <td>Flexibility and Mobility</td>
    
                <td>Total Body 1</td>
    
                <td>Rest Day</td>
    
                <td> Core and stability</td>

                <td>Rest Day</td>
    
                <td>Total Body 2</td>
    
                <td>Rest Day</td>
    
            </tr>
    
            <tr>
    
                <td class="text-center">3</td>
    
                <td>Flexibility and Mobility</td>
    
                <td>Total Body 1</td>
    
                <td>Rest Day</td>
    
                <td> Core and stability</td>

                <td>Rest Day</td>
    
                <td>Total Body 2</td>
    
                <td>Rest Day</td>
    
            </tr>
    
            <tr>
    
                <td class="text-center">4</td>
    
                 <td>Flexibility and Mobility</td>
    
                <td>Total Body 1</td>
    
                <td>Rest Day</td>
    
                <td> Core and stability</td>

                <td>Rest Day</td>
    
                <td>Total Body 2</td>
    
                <td>Rest Day</td>
            </tr>
    
        </tbody>
    
    </table>
    
    </div>
    
')

 Program.create(title: "Core Conditioning", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5277901" mozallowfullscreen name="vzvd-5277901" src="//view.vzaar.com/5277901/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')

Program.create(title: "Cardiovascular Training", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5277940" mozallowfullscreen name="vzvd-5277940" src="//view.vzaar.com/5277940/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')

 Program.create(title: "assessment", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5298522" mozallowfullscreen name="vzvd-5298522" src="//view.vzaar.com/5298522/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')

 Program.create(title: "General Conditioning", level: "Level 2", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5641580" mozallowfullscreen name="vzvd-5641580" src="//view.vzaar.com/5641580/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')

 Program.create(title: "Resistance Training", level: "level 2", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5649198" mozallowfullscreen name="vzvd-5649198" src="//view.vzaar.com/5649198/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')

 Program.create(title: "tomatoes", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5649202" mozallowfullscreen name="vzvd-5649202" src="//view.vzaar.com/5649202/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')


Program.create(title: "General Conditioning", level: "level 3", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-5640112" mozallowfullscreen name="vzvd-5640112" src="//view.vzaar.com/5640112/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>')


