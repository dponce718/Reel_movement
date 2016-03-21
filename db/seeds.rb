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


#programs
 Program.create(title: "General Conditioning", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-6564419" mozallowfullscreen name="vzvd-6564419" src="//view.vzaar.com/6564419/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
code_two: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-6564490" mozallowfullscreen name="vzvd-6564490" src="//view.vzaar.com/6564490/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
code_three: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-6564538" mozallowfullscreen name="vzvd-6564538" src="//view.vzaar.com/6564538/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
description: 'This is your introduction into our level 1 General Conditioning program and we take off running. This program focuses on building strength, core endurance, flexibility, and cardiovascular endurance. No need for any special equipment you just need to show up. Lets get started!',
style: 'general-conditioning',


schedule: '<div class="table-responsive">
    
    <table class="table">
    
        <thead>
    
            <tr>
    
                <th class="text-center"> <i class="fa fa-calendar-check-o"></i></th>
    
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
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-5277901" mozallowfullscreen name="vzvd-5277901" src="//view.vzaar.com/5277901/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
description:'The core is where you body’s center of gravity is located and is where all movement begins. Level 1 Core Conditioning gets your body up to speed by increasing core strength and core muscle endurance.In order to progress into more difficult programs having a strong core is mandatory.',
style: 'core-conditioning',
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
    
'
)

Program.create(title: "Cardiovascular Training", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-5277940" mozallowfullscreen name="vzvd-5277940" src="//view.vzaar.com/5277940/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
description:'It’s time to get moving. This beginners cardio program is designed to improve the overall health of your heart, improve cardiovascular endurance, and reduce body fat. Lets start burning those calories',
style: 'cardiovascular-training',
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

 Program.create(title: "assessment", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one:'<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-6517771" mozallowfullscreen name="vzvd-6517771" src="//view.vzaar.com/6517771/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
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

 Program.create(title: "General Conditioning 1", level: "Level 2", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-5641580" mozallowfullscreen name="vzvd-5641580" src="//view.vzaar.com/5641580/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
description:'This is a total body program designed to shed those pounds and build lean muscle. This program provides a little taste of everything, resistance training, flexibility & mobility, core conditioning, and cardiovascular training. We are stepping up the intensity but keep up the pace and you will reach your goals',
style: 'general-conditioning-2',
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

 Program.create(title: "Resistance Training", level: "level 2", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-5649198" mozallowfullscreen name="vzvd-5649198" src="//view.vzaar.com/5649198/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
description:'It’s time to bring up the intensity. Our resistance training program is designed to build muscle, increase muscle endurance, increase strength, and improve mobility. all this just using your own  body weight. No equipment needed!',
style: 'resistance-training',
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

 Program.create(title: "tomatoes", level: "level 1", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player" frameborder="0" height="432" id="vzvd-6517771" mozallowfullscreen name="vzvd-6517771" src="//view.vzaar.com/6517771/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
style:'background-image: url("https://s3.amazonaws.com/reelmovement/General.jpg")'
)


Program.create(title: "General Conditioning 3", level: "level 3", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-5640112" mozallowfullscreen name="vzvd-5640112" src="//view.vzaar.com/5640112/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
description:'Now you are in major leagues. You’re not a novice anymore. This is Level 3 General conditioning. it includes 5 weeks of high intensity exercise that will push you to your limits.Are you ready to step up your game!',
style: 'general-conditioning-3',
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



#recipes

Recipe.create(preparation: '30 minutes', total_time:'40 minutes', servings: '4', ingredients: 'tomatoes, shoes, eyeballs, monster blood',title:'Pan seared salmon with a vegetable medley and brown rice',
    code: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-5649202" mozallowfullscreen name="vzvd-5649202" src="//view.vzaar.com/5649202/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
    image:"nope")

Recipe.create(preparation: '30 minutes', total_time:'40 minutes', servings: '4', ingredients: 'Steak 12 ozs, 12-15 Brussels sprouts,8ozs of mushrooms, 2 shallots, Balsamic vinegar, Brown rice(half a cup)',title:'Seared steak with roasted Brussels sprouts and a mushroom alMond rice',
    code: '<iframe allowFullScreen allowTransparency="true" class="vzaar-video-player center-block" frameborder="0" height="432" id="vzvd-5640112" mozallowfullscreen name="vzvd-5640112" src="//view.vzaar.com/5640112/player" title="vzaar video player" type="text/html" webkitAllowFullScreen width="768"></iframe>',
    image:"nope")


