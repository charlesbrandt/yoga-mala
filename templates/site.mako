<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="Yoga Mala is dedicated to providing a welcoming space where students are encouraged to explore the nature of yoga and of themselves through physical practice, breathing exercises, self-study, philosophical inquiry, meditation and ethical practices.">
    <meta name="keywords" content="Bloomington, Indiana, Yoga, Studio, Ashtanga, Meditation, Breathing, Classes, Yoga, Vinyasa Flow, Yoga Studio">
    <meta name="author" content="Debby Harris" />
    
    <title>Yoga Mala | ${title} Bloomington, Indiana Yoga Studio</title>

    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">

    <!--[if lt IE 9]>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
    <![endif]-->

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-old-ie-min.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
    <!--<![endif]-->

    
    <!-- CSS -->
    <link href="http://fonts.googleapis.com/css?family=Artifika&v1" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="" />

    <!-- JavaScript -->

    <a href="https://plus.google.com/102321407434702008159" rel="publisher"></a>

    <script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-56810879-1', 'auto');
ga('send', 'pageview');
    </script>

  </head>



  <body>


    <div class="menu-wrapper pure-g" id="menu">
      <div class="pure-u-1">
        <div class="pure-menu">
          <a href="/" class="pure-menu-heading custom-brand"><img src="images/yoga_mala.png" alt="Yoga Mala" class="pure-img centered"></a>
          <a href="#" class="menu-toggle" id="toggle"><s class="bar"></s><s class="bar"></s><s class="bar"></s></a>                    

        </div>
      </div>
      <div class="pure-u-1">
        <img src="images/header-bar.png" alt="Yoga Mala" class="pure-img centered">
      </div>

      
      <div class="pure-u-1">
        <div class="pure-menu pure-menu-horizontal custom-can-transform custom-menu-3 horizontal-visible">

          <ul class="pure-menu-list"> 
            <li class="pure-menu-item"><a href="schedule.html" class="pure-menu-link">Schedule</a></li> 
            <li class="pure-menu-item"><a href="classes-ashtanga.html" class="pure-menu-link">Classes</a></li> 
            <li class="pure-menu-item"><a href="teachers.html" class="pure-menu-link">Teachers</a></li> 
            <li class="pure-menu-item"><a href="pricing.html" class="pure-menu-link">Pricing</a></li> 
            <li class="pure-menu-item"><a href="events.html" class="pure-menu-link">Events</a></li> 
            <li class="pure-menu-item"><a href="about-yoga.html" class="pure-menu-link">About Yoga</a></li> 
            <li class="pure-menu-item"><a href="faqs.html" class="pure-menu-link">FAQ</a></li> 
            <li class="pure-menu-item"><a href="contact.html" class="pure-menu-link">Contact Us</a></li> 
          </ul>

        </div>
      </div>
    </div>
    

    <div id="centerwrapper">
      <div id="content">
	${body}
      </div>
      <%include file="footer.mako" />
    </div>
    

    <script>
     //this needs to happen after 'toggle' id exists on page     
     (function (window, document) {
       var menu = document.getElementById('menu'),
           WINDOW_CHANGE_EVENT = ('onorientationchange' in window) ? 'orientationchange':'resize';
       
       function toggleHorizontal() {
         [].forEach.call(
           document.getElementById('menu').querySelectorAll('.custom-can-transform'),
           function(el){
             el.classList.toggle('pure-menu-horizontal');
             el.classList.toggle('horizontal-visible');
           }
         );
       };
       
       function toggleMenu() {
         // set timeout so that the panel has a chance to roll up
         // before the header switches states
         if (menu.classList.contains('open')) {
           setTimeout(toggleHorizontal, 500);
         }
         else {
           toggleHorizontal();
         }
         menu.classList.toggle('open');
         document.getElementById('toggle').classList.toggle('x');
       };
       
       function closeMenu() {
         if (menu.classList.contains('open')) {
           toggleMenu();
         }
       }
       
       document.getElementById('toggle').addEventListener('click', function (e) {
         toggleMenu();
       });
   
       window.addEventListener(WINDOW_CHANGE_EVENT, closeMenu);
     })(this, this.document);
     
    </script>
    
  </body>
</html>

