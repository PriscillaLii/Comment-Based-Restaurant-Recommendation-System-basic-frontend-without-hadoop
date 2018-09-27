<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>index</title>
    <script>
    function DoNav(theUrl) {
        document.location.href = theUrl;
    }
    (function(i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] ||
            function() {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
        a = s.createElement(o), m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'js/analytics.js'/*tpa=http://www.google-analytics.com/analytics.js*/, 'ga');
    ga('create', 'UA-47132172-1', 'http://dotamax.com/login/dotamax.com');
    ga('send', 'pageview');
    </script>
    <script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "hm.js-575895fe09d48554a608faa5ef059555.js"/*tpa=http://hm.baidu.com/hm.js?575895fe09d48554a608faa5ef059555*/;
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    </script>
</head>

    <link rel="stylesheet" href="css/font-awesome.min.css">
<style type="text/css">
body {
    padding: 0px;
    margin: 0px;
    background-color: rgb(33,33,33);background-image:url('');background-size:cover;backgrond-attachment:fixed;background-position:center;position:relative;
    color:#ccc;
    font: 12px/1.5 Arial, 'Droid Sans', 'Hiragino Sans GB','Microsoft YaHei';
}

a {
    color:#777;
}

a:hover, a:focus {
    color:#fff;
}

.top-radius{
    border-top-left-radius: 2px;
    border-top-right-radius:2px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius:0px;
}

.bottom-radius{
    border-top-left-radius: 0px;
    border-top-right-radius:0px;
    border-bottom-left-radius: 2px;
    border-bottom-right-radius:2px;
}


.all-radius{
    border-top-left-radius: 2px;
    border-top-right-radius:2px;
    border-bottom-left-radius: 2px;
    border-bottom-right-radius:2px;
}


.login-input {
    background-color: #fff; 
    padding: 11px 10px 11px 13px;
    display: block;
    background-color: rgba(255,255,255,0.95);
    border: 1px solid #fff;
    margin: 0;
    border: 0;
    font-family: Helvetica, STHeiti;
    font-size: 12px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    width: 300px;
}

.login-input:focus{
  
}


.breath {
    filter: alpha(opacity=50);
    -moz-opacity: 0.5;
    opacity: 0.5;
    -webkit-animation-name: breath;
    -webkit-animation-duration: 8s;
    -webkit-animation-timing-function: ease-in-out;
    -webkit-animation-iteration-count: infinite;
}

@-webkit-keyframes 'breath' {
    from {
        filter: alpha(opacity=1);
        -moz-opacity: 0.01;
        opacity: 0.01;
    }
    30% {
        filter: alpha(opacity=50);
        -moz-opacity: 0.5;
        opacity: 0.5;
    }
    70% {
        filter: alpha(opacity=50);
        -moz-opacity: 0.5;
        opacity: 0.5;
    }
    to {
        filter: alpha(opacity=1);
        -moz-opacity: 0.01;
        opacity: 0.01;
    }
}


@-moz-keyframes fullexpand {
    0% {
        width: 0px;
    }
    15% {
        width: 90%;
    }
    100% {
        width: 100%;
    }
}

@-webkit-keyframes fullexpand {
    0% {
        width: 0px;
    }
    15% {
        width: 90%;
    }
    100% {
        width: 100%;
    }
}


.trans {
    -webkit-transition: color 0.3s ease;
    -moz-transition: color 0.3s ease;
    -ms-transition: color 0.3s ease;
    -o-transition: color 0.3s ease;
    transition: color 0.3s ease;
}

*, *:active, *:focus {
    outline: 0;
    outline-style: none;
    outline-width: 0;
    -moz-outline-width: 0;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    text-decoration: none;
}

.login-in-btn {
    font-size: 13px;
    font-weight: 500;
    line-height: 38px;
    background-color: rgb(70,175,95);
    background-color: rgba(70,175,95,0.9);
    color: #fff;
    border-radius: 2px;
    width:500px;
    height: 38px;
    overflow: hidden;
    white-space: nowrap;
    -webkit-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    -moz-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    cursor: pointer;
}
.login-in-btn:focus, .login-in-btn:hover {
  background-color: rgb(90,225,125);
    background-color: rgba(90,225,125,0.9);
}

.sign-up-btn {
    font-size: 13px;
    font-weight: 500;
    line-height: 38px;
    background-color: rgb(41,119,186);
    background-color: rgba(41,119,186,0.9);
    color: #fff;
    border-radius: 2px;
    width:500px;
    height: 38px;
    overflow: hidden;
    white-space: nowrap;
    -webkit-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    -moz-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    cursor: pointer;
}

.sign-up-btn:focus, .sign-up-btn:hover {
  background-color: rgb(61,139,226);
    background-color: rgba(61,139,226,0.9);
}

.login-reply {
  color:#ec3627;
}

.sign-up-btn-small {
    font-family: Helvetica, STHeiti;
    font-size: 13px;
    text-align: center;
    line-height: 35px;
    background-color: rgba(41,119,186,0.8);
    color: #fff;
    border-radius: 2px;
    margin-right: 15px;
    margin-top: 7px;
    width:60px;
    height: 35px;
    overflow: hidden;
    white-space: nowrap;
    -webkit-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    -moz-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    float: left;
}


.sign-in-btn-small {
    font-family: Helvetica, STHeiti;
    font-size: 13px;
    text-align: center;
    line-height: 35px;
    background-color: rgba(255,255,255,0.3);
    color: #fff;
    border-radius: 2px;
    margin-right: 15px;
    margin-top: 7px;
    width:60px;
    height: 35px;
    overflow: hidden;
    white-space: nowrap;
    -webkit-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    -moz-transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    transition: all .25s cubic-bezier(.165,.84,.44,1),opacity 1ms linear;
    float: left;
    
}


.footer {
    color:#777;
}
</style>
<body id="particles-js" >

<div style=""></div>

<script src="js/particles.min.js"></script>
<script type="text/javascript">
particlesJS('particles-js',
  {
    "particles": {
      "number": {
        "value": 110,
        "density": {
          "enable": true,
          "value_area": 800
        }
      },
      "color": {
        "value": "#ffffff"
      },
      "shape": {
        "type": "circle",
        "stroke": {
          "width": 0,
          "color": "#000000"
        },
        "polygon": {
          "nb_sides": 5
        },
        "image": {
          "src": "http://dotamax.com/login/img/github.svg",
          "width": 100,
          "height": 100
        }
      },
      "opacity": {
        "value": 0.5,
        "random": false,
        "anim": {
          "enable": false,
          "speed": 1,
          "opacity_min": 0.1,
          "sync": false
        }
      },
      "size": {
        "value": 1,
        "random": true,
        "anim": {
          "enable": false,
          "speed": 20,
          "size_min": 0.1,
          "sync": false
        }
      },
      "line_linked": {
        "enable": true,
        "distance": 40,
        "color": "#fff",
        "opacity": 1,
        "width": 1
      },
      "move": {
        "enable": true,
        "speed": 3,
        "direction": "none",
        "random": false,
        "straight": false,
        "out_mode": "out",
        "attract": {
          "enable": false,
          "rotateX": 600,
          "rotateY": 1200
        }
      }
    },
    "interactivity": {
      "detect_on": "canvas",
      "events": {
        "onhover": {
          "enable": true,
          "mode": "grab"
        },
        "onclick": {
          "enable": true,
          "mode": "push"
        },
        "resize": true
      },
      "modes": {
        "grab": {
          "distance": 120,
          "line_linked": {
            "opacity": 1
          }
        },
        "bubble": {
          "distance": 400,
          "size": 40,
          "duration": 2,
          "opacity": 8,
          "speed": 3
        },
        "repulse": {
          "distance": 300
        },
        "push": {
          "particles_nb": 4
        },
        "remove": {
          "particles_nb": 2
        }
      }
    },
    "retina_detect": true,
    "config_demo": {
      "hide_card": false,
      "background_color": "#b61924",
      "background_image": "",
      "background_position": "50% 50%",
      "background_repeat": "no-repeat",
      "background_size": "cover"
    }
  }

);
</script>

    <script type="text/javascript">
        document.body.style.backgroundImage="url(images/back.jpg)";
    </script> 
    <div style="z-index: 1000;position: absolute;top:20%;left :43%;margin: 0 0 0 -190px;

">
        <div style="margin-left: auto;margin-right: auto;width: 500px;text-align: center;background-color: rgba(50,50,50,0.6);padding: 60px 40px;position: relative;">
            
            
<img src="images/max.png" style="width:120px;margin-bottom: 5px;">
<div style="margin-top: 5px;margin-bottom: 20px;color:#ccc;font-size: 14px;font-weight: 600;">餐饮数据平台</div>

<div id="login_form"style="font-size: 12px;">
   <div style="margin-left: 0px;margin-bottom: 5px;color:#ec3627">
    </div>
    <div class="login-in-btn" onClick="document.location.href = 'alluser.action'" style="margin-right: 10px;">
        显示所有用户
    </div>
    <div class="sign-up-btn" onClick="document.location.href = 'allrestaurant.action'" style="margin-right: 10px;margin-top: 20px;">
        显示所有餐馆
    </div>
    <div class="login-in-btn" onClick="document.location.href = 'allcomment.action'" style="margin-right: 10px;margin-top: 20px;">
        所有餐馆用户关注点
    </div>
    <div class="sign-up-btn" onClick="document.location.href = 'allrestaurant.action'" style="margin-right: 10px;margin-top: 20px;">
        let's go!
    </div>
</div>
        </div>
    </div>
    <div style="position: fixed;bottom:20px;width: 100%;">
        <div class="footbar" style="padding-bottom:10px;text-align: center;">         
            <img src="images/logo_01.png" style="width:40px;margin: 0 auto;" class="max_logo breath">
      </div>
    </div>
</body>
</html>