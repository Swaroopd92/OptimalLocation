
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width" />
  <meta name="google" value="notranslate">
  <title>No Vacancy</title>
  <meta property='og:title' content='No Vacancy' /> 
  <meta property='og:description' content='novacancy.js is a text neon golden effect jQuery plugin.' />
  <meta property='og:image' content='http://chuckyglitch.twbbs.org/novacancy/images/og_novacancy.png' /> 
  <meta property="og:type" content="website" />
  <meta property="og:url" content="http://chuckyglitch.twbbs.org/novacancy/" />
  <meta property="fb:admins" content="1026317618" />
  <meta name="description" content="novacancy.js is a text neon golden effect jQuery plugin." />
  <link rel="stylesheet" href="TextStyle/style.css" type="text/css" media="screen,print">
  <link href="TextStyle/style1.css" rel="stylesheet" type="text/css">
  <link href='http://fonts.googleapis.com/css?family=Monoton' rel='stylesheet' type='text/css'>
  <!-- IE Fix for HTML5 Tags -->
  <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <script type="text/javascript" src="TextStyle/jquery1.js"></script>
  <script type="text/javascript" src="TextStyle/jquery2.js"></script>
  
  <script type="text/javascript">
    $(document).ready(function()
    {
      $('#no').novacancy({
        'reblinkProbability': 0.1,
        'blinkMin': 0.2,
        'blinkMax': 0.6,
        'loopMin': 8,
        'loopMax': 10,
        'color': '#ffffff',
        'glow': ['0 0 80px #ffffff', '0 0 30px #008000', '0 0 6px #0000ff']
      }); 

      $('#vacancy').novacancy({
        'blink': 1,
        'off': 1,
        'color': 'Red',
        'glow': ['0 0 80px Red', '0 0 30px FireBrick', '0 0 6px DarkRed']
      });

      $('.bg').addClass('bg'+Math.floor((Math.random()*3)+1).toString() );
    });
  </script>

  

</head>
<body>
  

    <div class="top-banner">
      <div class="board">
        <h1>
            <span id="no">Status</span>
            <span id="vacancy">Pending</span>
        </h1>
      </div>
    </div>
 

</body>
</html>
