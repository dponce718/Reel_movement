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
code_one: '<iframe id="vzvd-6870457" name="vzvd-6870457" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870457/player"></iframe>',
code_two: '<iframe id="vzvd-6870415" name="vzvd-6870415" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870415/player"></iframe>',
code_three: '<iframe id="vzvd-6870478" name="vzvd-6870478" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870478/player"></iframe>',
code_four: '<iframe id="vzvd-6870434" name="vzvd-6870434" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870434/player"></iframe>',
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
code_one: '<iframe id="vzvd-6871452" name="vzvd-6871452" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6871452/player"></iframe>',
code_two: '<iframe id="vzvd-6871465" name="vzvd-6871465" title="vzaar video player" class="vzaar-video-player" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6871465/player"></iframe>',
code_three: '', 
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

Program.create(title: "Cardiovascular Training", level: "level 1", 
code_one: '<iframe id="vzvd-6870658" name="vzvd-6870658" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870658/player"></iframe>',
code_two: '<iframe id="vzvd-6870681" name="vzvd-6870681" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870681/player"></iframe>',
code_three: '<iframe id="vzvd-6870708" name="vzvd-6870708" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870708/player"></iframe>' ,
code_four: '<iframe id="vzvd-6870713" name="vzvd-6870713" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6870713/player"></iframe>',
description:'It’s time to get moving. This beginners cardio program is designed to improve the overall health of your heart, improve cardiovascular endurance, and reduce body fat. Lets start burning those calories',
style: 'cardiovascular-training',
frame: '<ul id="program-list">
          
          <li> <a href="#program-one" class="open-popup-link btn btn-lg btn-success btn-fill"> Cardio session 2</a> </li>

          <li > <a href="#program-two" class="open-popup-link btn btn-lg btn-success btn-fill"> Cardio session 3</a> </li>

          <li > <a href="#program-three" class="open-popup-link btn btn-lg btn-success btn-fill"> Recovery and flexibility</a> </li>


         </ul>  ',

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
    
                <td>Cardio session 1</td>
    
                <td>Rest Day</td>
    
                <td> Cardio session 2</td>

                <td>Rest Day</td>
    
                <td>Cardio session 3</td>
    
                <td>Rest Day</td>
    
    
                
    
            </tr>
    
            <tr>
    
                
    
                <td class="text-center">2</td>
    
                <td>Flexibility and Mobility</td>
    
                <td>Cardio session 1</td>
    
                <td>Rest Day</td>
    
                <td> Cardio session 2</td>

                <td>Cardio Session 3</td>
    
                <td>Cardio session 1</td>
    
                <td>Rest Day</td>
    
    
            </tr>
    
            <tr>
    
                <td class="text-center">3</td>
    
               <td>Flexibility and Mobility</td>
    
                <td>Cardio session 1</td>
    
                <td>Rest Day</td>
    
                <td> Cardio session 2</td>

                <td>Cardio Session 3</td>
    
                <td>Cardio session 1</td>
    
                <td>Rest Day</td>
    
    
    
            </tr>
    
            <tr>
    
                <td class="text-center">4</td>
    <td>Flexibility and Mobility</td>
    
                <td>Cardio session 1</td>
    
                <td>Rest Day</td>
    
                <td> Cardio session 2</td>

                <td>Cardio Session 3</td>
    
                <td>Cardio session 1</td>
    
                <td>Rest Day</td>
    
    
            </tr>
    
        </tbody>
    
    </table>
    
    </div>
    
')

 
 Program.create(title: "General Conditioning 2", level: "Level 2",
code_one: '<iframe id="vzvd-6871787" name="vzvd-6871787" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6871787/player"></iframe>',
code_two: '<iframe id="vzvd-6931352" name="vzvd-6931352" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6931352/player"></iframe>',
code_three: '<iframe id="vzvd-6938496" name="vzvd-6938496" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6938496/player"></iframe>',
code_four: '<iframe id="vzvd-6939951" name="vzvd-6939951" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6939951/player"></iframe>',
code_five: '<iframe id="vzvd-6937924" name="vzvd-6937924" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6937924/player"></iframe>',
description:'This is a total body program designed to shed those pounds and build lean muscle. This program provides a little taste of everything, resistance training, flexibility & mobility, core conditioning, and cardiovascular training. We are stepping up the intensity but keep up the pace and you will reach your goals',
style: 'general-conditioning-2',
frame: '<ul id="program-list">
          
          <li> <a href="#program-one" class="open-popup-link btn btn-lg btn-success btn-fill">Cardio</a> </li>

          <li > <a href="#program-two" class="open-popup-link btn btn-lg btn-success btn-fill">Recovery and flexibility </a></li>

          <li > <a href="#program-three" class="open-popup-link btn btn-lg btn-success btn-fill"> Total body 2</a> </li>

           <li > <a href="#program-four" class="open-popup-link btn btn-lg btn-success btn-fill"> Intervals</a> </li>


         </ul>  ',

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
    
                 <td class="text-center">1</td>                            
    
                <td>Rest day</td>
    
                <td>Total Body 1</td>
    
                <td> cardio </td>
    
                <td> Recovery and flexibility</td>

                <td>Total Body 2</td>
    
                <td>Interval Training</td>
    
                <td>Recovery and flexibility</td>
    
            </tr>
    
            <tr>
    
                <td class="text-center">3</td>
    
                <td>Rest day</td>
    
                <td>Total Body 1</td>
    
                <td> cardio </td>
    
                <td> Recovery and flexibility</td>

                <td>Total Body 2</td>
    
                <td>Interval Training</td>
    
                <td>Recovery and flexibility</td>
            </tr>
    
            <tr>
    
                <td class="text-center">4</td>
    
                <td>Rest day</td>
    
                <td>Total Body 1</td>
    
                <td> cardio </td>
    
                <td> Recovery and flexibility</td>

                <td>Total Body 2</td>
    
                <td>Interval Training</td>
    
                <td>Recovery and flexibility</td>
            </tr>
    
        </tbody>
    
    </table>
    
    </div>
    
')

 Program.create(title: "Resistance Training", level: "level 2", 
code_one: '<iframe id="vzvd-6912692" name="vzvd-6912692" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6912692/player"></iframe>',
code_two: '<iframe id="vzvd-6912741" name="vzvd-6912741" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6912741/player"></iframe>',
code_three: '<iframe id="vzvd-6912761" name="vzvd-6912761" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6912761/player"></iframe>',
frame: '<ul id="program-list">
          
          <li> <a href="#program-one" class="open-popup-link btn btn-lg btn-success btn-fill"> Lower body workout </a> </li>

          <li > <a href="#program-two" class="open-popup-link btn btn-lg btn-success btn-fill"> Rest and Recovery</a> </li>

         </ul>  ',

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
    
                <td>Upper body</td>
    
                <td> Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Upper body</td>

                <td>Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Rest Day</td>
    
    
                
    
            </tr>
    
            <tr>
    
                
    
                <td class="text-center">2</td>
    
               <td>Upper body</td>
    
                <td> Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Upper body</td>

                <td>Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Rest Day</td>
            </tr>
    
            <tr>
    
                <td class="text-center">3</td>
    
                <td>Upper body</td>
    
                <td> Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Upper body</td>

                <td>Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Rest Day</td>
    
            </tr>
    
            <tr>
    
                <td class="text-center">4</td>
    
                <td>Upper body</td>
    
                <td> Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Upper body</td>

                <td>Lower body</td>
    
                <td>Flexibility training</td>
    
                <td>Rest Day</td>
            </tr>
    
        </tbody>
    
    </table>
    
    </div>
    
')

 

Program.create(title: "General Conditioning 3", level: "level 3", frame: "http://api.vzaar.com/videos/5248691.embed", 
code_one: '<iframe id="vzvd-6871494" name="vzvd-6871494" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6871494/player"></iframe>',
code_two: '',
code_three: '<iframe id="vzvd-6871517" name="vzvd-6871517" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6871517/player"></iframe>',
code_four: '<iframe id="vzvd-6871481" name="vzvd-6871481" title="vzaar video player" class="vzaar-video-player center-block" type="text/html" width="768" height="432" frameborder="0" allowFullScreen allowTransparency="true" mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/6871481/player"></iframe>',
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


#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')