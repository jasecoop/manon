(function() {

  (function(window, document, undefined_) {
    window.Manon = (function() {
      var manon, _init;
      _init = false;
      manon = {};
      manon.init = function() {
        var $about, $abouttxt, $container, $li, $this, $thumb, $title, at_h, con_w, li_h, scroll, sizeAbout, win_h;
        if (_init) {
          return;
        }
        _init = true;
        manon.win = $(window);
        manon.docEl = $(document.documentElement);
        manon.bodyEl = $(document.body);
        $this = $(this);
        $li = $("section.links ul li");
        $title = $("section.links ul li a");
        $thumb = $(".thumb");
        $container = $(".container");
        $about = $("section.about");
        $abouttxt = $("section.about div");
        scroll = $(window).scrollTop();
        win_h = manon.win.height();
        con_w = $container.width();
        at_h = $abouttxt.height();
        li_h = $li.height();
        sizeAbout = function() {
          $about.height(win_h);
          $abouttxt.css('padding-top', win_h / 2 + 'px');
          return $abouttxt.css('margin-top', '-' + at_h / 2 + 'px');
        };
        $("section.links ul li a").hover((function() {
          return $(this).next('.thumb').fadeIn(500);
        }), function() {
          return $(this).next('.thumb').fadeOut(500);
        });
        if ($(window).width() > 480) {
          return sizeAbout();
        }
      };
      return manon;
    })();
    return $(document).ready(function() {
      return Manon.init();
    });
  })(window, window.document);

}).call(this);
