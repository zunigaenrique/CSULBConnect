<!DOCTYPE html>

<html lang="en">
    
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="resources/img/favicon.png">
    <title>CSULBConnect</title>
    <link href="resources/lib/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet/less" type="text/css" href="resources/custom.less" />
</head>


<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="resources/img/logo.png" height=30px /></a>
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="/newevent" >Add an Event</a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle nav-link active" data-toggle="dropdown" href="#">${name}
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="#">My Events</a></li>
                    <li><a class="nav-link" href="${pageContext.request.contextPath}/login">Sign Out</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>

  <body>
    <div class="jumbotron">
      <div class="container">


        <!-- Beach Hacks Modal------------------------------------->
        <div class="modal fade" id="beachHacksModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id=""></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
                  <span aria-hidden="true">&times;</span>
                  </button>
              </div>
              <div class="modal-body row">
                <div class="col-sm-8"><img src="resources/img/temp/beach-hacks.png" /></div>
                <div class="col-sm-4">
                  <h3>Beach Hacks</h3>
                  <p class="muted">Members: 25</p>
                  <!-- <button type="button" class="btn btn-secondary">Join Us</button> -->

                </div>
              </div>
              <div class="modal-body">

                <ul class="nav nav-tabs" id="myTab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home-hacks" role="tab" aria-controls="home" aria-selected="true">About Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="profile-tab-hacks" data-toggle="tab" href="#profile-hacks" role="tab" aria-controls="profile" aria-selected="false">Events</a>
                  </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                  <div class="tab-pane fade show active about" id="home-hacks" role="tabpanel" aria-labelledby="home-tab">
                    <h5>Beach-Hacks</h5>
                    <p>Is the third collegiate hackathon hosted by California State University, Long Beach! During our 24 hour event, student developers and designers will gather on campus to build and program ideas into reality. Whether you join a team
                      or go solo, join us at BeachHacks and show us what makes you unique. It doesn't matter if you're aiming to be the next Tony Stark or you're just looking to learn some code, BeachHacks has something for you!</p>
                    <h5>Frequently Asked Questions </h5>
                    <h6>When is it?</h6>
                    <p>BeachHacks is 24 hours long starting on April 21, 2018 and ending on April 22, 2018. A more detailed schedule will be released closer to the event. Where is it? BeachHacks is being held on CSULB's campus in the University Student Union.
                    </p>
                    <h6>How much does it cost?</h6>
                    <p>BeachHacks is completely free to attend! We will provide food, snacks, swag and a great time!</p>
                    <h6>Who can participate?</h6>
                    <p>College students from all levels and majors are welcome to apply to BeachHacks!</p>
                    This isn't only a time to build something cool, but a time to learn also. If you have never programmed before, you have an opportunity to learn from everyone around you. To ensure an environment which is diverse and exciting, hackers attending are required
                    to submit applications, but don't let that intimidate you! We just want to make sure you have a great time at the event once you have been accepted.</p>
                    <h6>What do I bring?</h6>
                    <p> A laptop, cables, chargers and your ID. It's also recommended that you bring a sleeping bag, pillow, and toiletries. What you don't need to bring is a team, food, drink, or swag. We can handle that!</p>
                    <h6>What should I build?</h6>
                    <p>Anything you want! The project is up to you and your team. You have 24 hours to make anything ranging from web apps, mobile apps, desktop apps, hardware or anything else you can think of! Surprise us! How will projects be judged? When
                      you complete a project and demo it at the end of BeachHacks, a panel of judges will evaluate your project on a wide variety of criteria including design, novelty, effectiveness, WOW-factor, and much more. Winning teams will receive
                      prizes in the closing ceremony from the judge(s) of the prize category.</p>
                    <h6>Will there be any travel reimbursement?</h6>
                    <p> At this time, we are unable to provide any travel reimbursement. If this changes, we will update affected parties immediately, however, if accepted to BeachHacks please be ready to provide your own travel arrangements.</p>
                    <h6>What is the code of conduct?</h6>
                    <p>We are following the MLH Code of Conduct which can be found here. TL;DR Enjoy yourself, but don't be a jerk.</p>
                    <h6>What if I don't have a team or a project idea?</h6>
                    <p>Don't worry! Tons of hackers attend hackathons without a team or fully fledged project idea! We'll have team building excercises to help introduce you to the hackers around you and get the creative juices flowing.</p>
                    <h6> What if I want to go, but I've never had experience with anything like this before?</h6>
                    <p>There's a first for everything! One of our main goals with BeachHacks is to bring the experience of a hackathon to students who have talent and potential for this kind of event, but never got the oppurtunity to show it. The great thing
                      about technology is that we're all connected by it and no matter what you're studying, there's a technology you use everyday as a part of your work. For example, if you're a underwater basket weaving major, you could write a social
                      media app for underwater basket weavers and exchange weaving patterns, color schemes, etc. Still not sure? JUST DO IT!</p>
                    <h6> Question not answered?</h6>
                    <p>Email us at help@beachhacks.com</p>
                  </div>

                  <div class="tab-pane fade" id="profile-hacks" role="tabpanel" aria-labelledby="profile-tab-hacks">
                    <div class="card">
                      <div class="card-block">
                        <h4 class="card-title">Beach Hacks Hackithon</h4>
                        <h6 class="card-subtitle mb-2 text-muted">Beach-Hacks</h6>
                        <p class="card-text"><small class="text-muted">CSULB Student Union - Lower Level<br />4:30PM 4/21/18 - 4/22/18</small></p>
                        <p class="card-text">BeachHacks is 24 hours long starting on April 21, 2018 and ending on April 22, 2018. A more detailed schedule will be released closer to the event. BeachHacks is being held on CSULB's campus in the University Student Union</p>
                        <h5 class="attending">42 attending</h5>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- </div> -->
        <!-- End Beach Hacks Modal-->

        <!-- Book Club Modal ----------------------------------------------->
        <div class="container" id="modaldemo">
          <!-- <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">
    modal
  </button> -->

          <div class="modal fade" id="bookClubModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id=""></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
            <span aria-hidden="true">&times;</span>
          </button>
                </div>
                <div class="modal-body row">
                  <div class="col-sm-8"><img src="resources/img/temp/bookclub.jpg" /></div>
                  <div class="col-sm-4">
                    <h3>Book Club</h3>
                    <p class="muted">Members: 10</p>
<!--                    <button type="button" class="btn btn-secondary">Join Us</button>-->

                  </div>
                </div>
                <div class="modal-body">

                  <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About Us</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="profile-tab-book" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Events</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active about" id="home" role="tabpanel" aria-labelledby="home-tab">
                      <p>What we're about Well I think the group name does most of the describing, but the goal here is for people relatively the same age, to pick great books, meet up once a month and discuss them. I want to create a casual and fun atmosphere
                        so that like-minded people can get together, meet people out of their circles, and have the intellectual stimulation that's void from so many of the encounters I've had with people out here in LA.</p>
                      <p> We'll pick from a range of books, and meet wherever the group decides. Ideally, we'd have 10-12 people per meeting, and if it gets bigger we can do two groups that switch halfway so we can have plenty of interaction. I'd like to
                        think we could bring an activity or fun ideas that would relate to whatever we read, so that the book club isn't just a bunch of pretentious snoots breaking down the dichotomy of the inner and outer self-narrative, but a bunch
                        of people having a great time while also using brain power, rather than destroying brain power. So come join! I'm real chill and up for whatever so let's read and have some fun</p>
                    </div>

                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab-book">
                      <div class="card">
                        <div class="card-block">
                          <h4 class="card-title">ICE by Anna Kavan - May 6th discussion</h4>
                          <h6 class="card-subtitle mb-2 text-muted">Book Club</h6>
                          <p class="card-text"><small class="text-muted">LA5 245<br />Sunday 5/6/18 at 4:30PM</small></p>
                          <p class="card-text">Discussion of novel "Ice" by Anna Kaven, please have read the book by the meeting.</p>
                          <h5 class="attending">12 attending</h5>
                        </div>
                      </div>
                      <!-- <div class="card">
                        <div class="card-block">
                          <h4 class="card-title">Phys 345 Midterm Study</h4>
                          <h6 class="card-subtitle mb-2 text-muted">Book Club</h6>
                          <p class="card-text"><small class="text-muted">Library, third floor<br />4:30PM 3/6/18</small></p>
                          <p class="card-text">Cupidatat exercitation culpa excepteur culpa officia nostrud cupidatat adipisicing nulla nisi ea culpa elit quis tempor sit laborum. Ullamco ad irure exercitation occaecat amet irure reprehenderit labore nulla cillum. Sint cupidatat
                            aute velit enim dolore officia nostrud.</p>
                          <h5 class="attending">12 attending</h5>

                        </div>
                      </div> -->

                    </div>
                  </div>
                </div>
                <!-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Submit</button>
        </div> -->
              </div>
            </div>
          </div>
        </div>
        <!-- End Book Club Modal ----------------------------------------------->


        <!-- Soccer Club Modal------------------------------------->
        <div class="container" id="soccerClubModal">
          <div class="modal fade" id="soccerClubModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id=""></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
            <span aria-hidden="true">&times;</span>
          </button>
                </div>
                <div class="modal-body row">
                  <div class="col-sm-8"><img src="soccer.jpg" /></div>
                  <div class="col-sm-4">
                    <h3>Soccer Club</h3>
                    <p class="muted">Members: 25</p>
<!--                    <button type="button" class="btn btn-secondary">Join Us</button>-->

                  </div>
                </div>
                <div class="modal-body">

                  <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home-soccer" role="tab" aria-controls="home" aria-selected="true">About Us</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="profile-tab-soccer" data-toggle="tab" href="#profile-soccer" role="tab" aria-controls="profile" aria-selected="false">Events</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active about" id="home-soccer" role="tabpanel" aria-labelledby="home-tab">
                      <p>Night games at Arcadia Civic Center Athletic Field thru July 2018, 60 minutes of adrenaline pumping fun games. We'll have two games 9 v 9 simultaneous or one game 11 v 11 depending on signups. You can sign up as early as two days
                        prior to the event. The schedule will open up at 4 pm so that you can RSVP and you have 2 hours before game time to cancel. Otherwise, you will be charged for the game as if you were there. There will be a $6 fee per game. You
                        may pay cash at the field or via venmo; please bring change. Players that RSVP will have priority. If you don't remove your RSVP and don't show up, you will need to pay for the hour you missed. So please keep your reservation current
                        by removing yourself or texting me at least an hour prior to the game. Please keep away from the field until the exact time. These games are competitive but we do play safe and make every effort to not get hurt. In the event that
                        there are continued disrespect for others and the field, You will be asked to leave. Keep in mind these games are for fun only!</p>
                      <p>Excepteur id cupidatat ea id ea anim consequat consectetur. Veniam sit duis ipsum nostrud ullamco Lorem esse mollit irure aliquip amet eiusmod. In voluptate ipsum occaecat tempor voluptate voluptate dolore cupidatat labore ex laborum.
                        Veniam excepteur exercitation culpa nulla elit labore elit mollit. Id dolore commodo cupidatat eiusmod laborum nulla officia nulla reprehenderit est culpa duis excepteur enim dolor esse. Irure excepteur in veniam cillum id officia
                        ad deserunt cillum est eiusmod velit sint eu id eiusmod.</p>
                    </div>

                    <div class="tab-pane fade" id="profile-soccer" role="tabpanel" aria-labelledby="profile-tab-soccer">
                      <div class="card">
                        <div class="card-block">
                          <h4 class="card-title">Soccer Club Match Days</h4>
                          <h6 class="card-subtitle mb-2 text-muted">Soccer Club</h6>
                          <p class="card-text"><small class="text-muted">LA5 245<br />4:30PM 3/6/18</small></p>
                          <p class="card-text">Minim voluptate deserunt et amet occaecat qui fugiat. Mollit cupidatat et Lorem minim ut labore cupidatat. Laborum esse irure veniam consectetur exercitation consectetur est aliquip incididunt nisi mollit magna ut ad excepteur.</p>
                          <h5 class="attending">42 attending</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Soccer Modal-->

        <!-- Hiking Club Modal------------------------------------->
        <div class="container" id="modaldemo">
          <div class="modal fade" id="hikingClubModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id=""></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
            <span aria-hidden="true">&times;</span>
          </button>
                </div>
                <div class="modal-body row">
                  <div class="col-sm-8"><img src="resources/img/temp/hiking.jpg" /></div>
                  <div class="col-sm-4">
                    <h3>Hiking Club</h3>
                    <p class="muted">Members: 25</p>
<!--                    <button type="button" class="btn btn-secondary">Join Us</button>-->

                  </div>
                </div>
                <div class="modal-body">

                  <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home-hiking" role="tab" aria-controls="home" aria-selected="true">About Us</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile-hiking" role="tab" aria-controls="profile" aria-selected="false">Events</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active about" id="home-hiking" role="tabpanel" aria-labelledby="home-tab">
                      <h3>What We're About</h3>
                      <p>
                        Meet other people who are interested in hiking and walking for exercise, and attending various other fun events such as bicycling, kayaking, river rafting, etc. We sometimes have BBQs, sometimes have fundraisers, sometimes have parties and even go on
                        exotic vacations....but mostly it is about hiking and having fun in the outdoors. You will find adventure on the various trails in the surrounding greater Los Angeles area which could even include downtown L.A. walks, or restaurants
                        in other areas, with a varied leader mix of levels to choose from either beginners, intermediate and advanced hikers. The hike leaders in this group aren't professional hike leaders. </p>
                      <p>You are responsible for yourself. By signing up for these events, you agree not to hold the Meetup organizers of LA Hiking Group responsible for whatever happens to you on these events. LA Hiking Group does not certify the expertise
                        of the organizers,the event or assistant organizers (hike leaders) and.LA Hiking Group is NOT responsible for any possible losses or injuries. For safety and liability reasons you MUST have a clear PHOTO of yourself on your profile
                        that shows up on the listings. Any interest in volunteering for the Angeles National Forest....see more info on www.mtlowe.net</p>
                    </div>

                    <div class="tab-pane fade" id="profile-hiking" role="tabpanel" aria-labelledby="profile-tab">

                      <!-- Tuesday Night Trailblaze-->
                      <div class="card">
                        <div class="card-block">
                          <h4 class="card-title">Tuesday Night Trailblaze</h4>
                          <h6 class="card-subtitle mb-2 text-muted">Hiking Club</h6>
                          <p class="card-text"><small class="text-muted">Griffith Park Merry Go Round Lot 2<br />Every Tuesday at 6:30PM</small></p>
                          <p class="card-text">If you are looking for a great workout, join the TNT group on a dash throughout Griffith Park. Along with becoming stronger, and getting a good workout sweat, there will be many miles, smiles, and laughter on the trails! Arrive
                            early to talk to members that have trained for various races (10K thru 100-miles, & every distance between) and ask about training plans, up coming races, preferred trail shoes, gear, etc. The TNT members welcome your participation.</p>
                          <!-- <h5 class="attending">42 attending</h5> -->
                        </div>
                      </div>
                      <!-- End Tuesday Night Trailblaze-->

                      <!-- Redwood Beginning Backpacking-->
                      <div class="card">
                        <div class="card-block">
                          <h4 class="card-title">INFORMATIONAL POSTING 29th Annual Beginning Backpack Class in the Redwoods</h4>
                          <h6 class="card-subtitle mb-2 text-muted">Hiking Club</h6>
                          <p class="card-text"><small class="text-muted">La Crescenta - Montrose, CA<br />4:30PM 3/6/18</small></p>
                          <p class="card-text">Have you ever wanted to learn to backpack and get away from the crowds of people? Learn how to backpack in 3 Sunday courses (4/29, 5/6, 5/20) culminating in a trip to a Redwood Forest grove in Sierra Nevada 6/2-3. Course times
                            are 5:00-8:30 PM (4/29 and 5/20) and 1:00-4:30 PM (5/6) Learn what to take, latest in equipment, what to do before you leave LA. Backpacking equipment demonstrations, giveaways and refreshments at classes. Attendance Mandatory
                            at 4/29 class to participate on the June trip. Send contact information, email and phone #, $50 payable to the Sierra Club and mail to David Meltzer, 611 E Pine Ave, El Segundo, CA 90245. Your check secures your reservation.
                            The Course will be held in La Cresenta. Once your registration is confirmed you will receive more info. This class fills up every year so please be sure to sign up early by sending in your check. Upon receipt of the check,
                            I will send a confirmation letter to you. Questions about the class can be addressed to me at [masked] Remember- To participate in the backpacking class you must send in the registration fee. Walk ups the day of class will
                            not be accepted due to the limited size of the class and it fills up early. Cancellation Policy: No refunds once your spot in the course is confirmed</p>
                          <h5 class="attending">42 attending</h5>
                        </div>
                      </div>
                      <!-- End Redwood Beginning Backpacking-->

                      <!-- Hiking Club Meeting Days -->
                      <div class="card">
                        <div class="card-block">
                          <h4 class="card-title">Hiking Club Meeting Days</h4>
                          <h6 class="card-subtitle mb-2 text-muted">Hiking Club</h6>
                          <p class="card-text"><small class="text-muted">LA5 245 CSULB<br />Every Thursday at 6:30PM</small></p>
                          <p class="card-text">Meeting to discuss group hikes, planned overnight hiking trips, hiking vacations, and information regarding National Hiking Asscociation membership.</p>
                          <!-- <h5 class="attending">42 attending</h5> -->
                        </div>
                      </div>
                      <!-- End Hiking Clud Meeting Days -->

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Hiking Modal-->

        <!--------------------------- End Header Modal ----------------------------->
      </div>
    </div>
    <!-- End jumbotron -->


    <div class="container" id="content">
      <div class="card-deck">



              <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#beachHacksModal">
        <!-- Beach Hacks Card -->
        <div class="card" id="targetBookClub">
          <img class="card-img img-fluid" src="resources/img/temp/beach-hacks.png"/>
          <div class="card-img-overlay filter"> </div>
          <div class="card-img-overlay">
            <h2 class="card-title">Beach Hacks</h2>
             <p class="memberCount">10 members</p> 
          </div>
        </div>
      </button>

        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#bookClubModal">

          <!-- Card for Book Club  -->
        <div class="card" id="targetBookClub">
          <img class="card-img img-fluid" src="resources/img/temp/bookclub.jpg" />
          <div class="card-img-overlay filter"> </div>
          <div class="card-img-overlay">
            <h2 class="card-title">Book Club</h2>
            <p class="memberCount">10 members</p>
          </div>
        </div>

    </button>

        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#soccerClubModal">

          <!-- Card for Soccer Club  -->
        <div class="card" id="targetBookClub">
          <img class="card-img img-fluid" src="resources/img/temp/soccer.jpg" />
          <div class="card-img-overlay filter"> </div>
          <div class="card-img-overlay">
            <h2 class="card-title">Soccer Club</h2>
            <p class="memberCount">25 members</p>
          </div>
        </div>

      </button>


        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#hikingClubModal">

          <!-- Card for Hiking Club  -->
        <div class="card"id="targetBookClub">
          <img class="card-img img-fluid" src="resources/img/temp/hiking.jpg" />
          <div class="card-img-overlay filter"> </div>
          <div class="card-img-overlay">
            <h2 class="card-title">Hiking</h2>
            <p class="memberCount">10 members</p>
          </div>
        </div>
      </div>

    </button>

      <!-- Modals for Event Creation ----------------------------------------------------->
      <div class="modal fade" id="addevent" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4>Add an Event</h4>
              <!-- 'x' button in top corner of modal -->
              <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
              <span aria-hidden="true">&times;</span>
            </button>
            </div>


            <div class="modal-body">
            <form action= "newevent" id="eventForm" modelAttribute="event" method="post" class="align-items-center boxcontent">
              <div class="form-group">
                <span for="event-name" class="col-lg-2 control-label">Event Name:</span>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="event-name" placeholder="Enter Event Name" name = "event-name">
                </div>
              </div>

              <div class="form-group">
                <label for="event-location" class="col-lg-2 control-label">Location:</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="event-location" placeholder="Enter Location Details" name = "event-location">
                </div>
              </div>

              <div class="form-group">
                <span for="event-date" class="col-lg-2 control-label">Enter Date and Time:</span>
                <div class="col-lg-10">
                  <input type="datetime-local" class="form-control" id="event-date" placeholder="Enter Date and Time of Event" name="event-date">
                </div>
              </div>

              <div class="form-group">
                <span for="event-description" class="col-lg-2 control-label">Description of Event</span>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="event-description" placeholder="Enter Description Here" name="event-description">
                </div>
              </div>
                <div class="col text-center">
                    <button class="btn btn-primary" id="event">Submit</button>
                </div>
                </form>
            </div>
          </div>
        </div>
      </div>

        <script src="jquery-3.1.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://v4-alpha.getbootstrap.com/dist/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/3.0.0/less.min.js"></script>
        <%@include file="resources/footer.jsp"%>

  </body>

</html>