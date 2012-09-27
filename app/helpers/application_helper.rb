module ApplicationHelper
  # 各種ソーシャルボタン
  def hatena_bookmark_button(url='http://u2pedia.u2plus.jp/wiki')
    <<-EOS.html_safe
      <a class="hatena-bookmark-button" href="http://b.hatena.ne.jp/entry/#{url}" data-hatena-bookmark-layout="standard">
        <img src="http://b.st-hatena.com/images/entry-button/button-only.gif" width="18" height="18" />
      </a>
    EOS
  end
  def hatena_bookmark_button_script
    '<script type="text/javascript" src="http://b.st-hatena.com/js/bookmark_button_wo_al.js" charset="utf-8" async="async"></script>'.html_safe
  end

  def facebook_like_button(url="http://u2pedia.u2plus.jp/wiki")
    <<-EOS.html_safe
      <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fu2pedia.u2plus.jp&amp;send=false&amp;layout=button_count&amp;width=110&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=arial&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:110px; height:21px;" allowTransparency="true"></iframe>
    EOS
  end

  def twitter_share_button(url='http://u2pedia.u2plus.jp/wiki', title='u2pedia', user='youutubu_U2plus')
    <<-EOS.html_safe
      <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://u2pedia.u2plus.jp/wiki" data-text="#{title}" data-via="#{user}" data-lang="ja"></a>
    EOS
  end

  def twitter_share_button_script
    <<-EOS.html_safe
      <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
    EOS
  end
  
  def google_plus_button()
    <<-EOS.html_safe
      <div class="g-plusone" data-size="medium" data-href="http://u2pedia.u2plus.jp/wiki">
    EOS
  end

  def google_plus_button_script
    <<-EOS.html_safe
      <script type="text/javascript">window.___gcfg = {lang: 'ja'}; (function() {var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true; po.src = 'https://apis.google.com/js/plusone.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);})();</script>
    EOS
  end

  def facebook_share_button(url='http://u2pedia.u2plus.jp/wiki', title='u2pedia')
    <<-EOS.html_safe
      <a name="fb_share" href="http://www.facebook.com/sharer.php?u=#{url}" onclick="javascript:window.open('http://www.facebook.com/sharer.php?u=http://u2pedia.u2plus.jp/wiki', '', 'width=640, height=440, left='+(window.screen.width-640)/2 +',top='+(window.screen.height-440)/2); return false;">
        <img src="/assets/share.gif" />
      </a>
    EOS
  end

  def mixi_check_button()
    <<-EOS.html_safe
      <a class="mixi-check-button" href="http://mixi.jp/share.pl" data-key="076c78be14d062ccf1b5c7697693950893253025"></a>
    EOS
  end

  def mixi_check_button_script
    '<script type="text/javascript" src="http://static.mixi.jp/js/share.js"></script>'.html_safe
  end
  
  #ガジェット
  def facebook_gadget
    '<iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FU2plus&amp;width=280&amp;height=450&amp;colorscheme=light&amp;show_faces=true&amp;border_color=gainsboro&amp;stream=false&amp;header=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:280px; height:450px; background:#FFF;" allowTransparency="true"></iframe>'.html_safe
  end
  def twitter_gadget
    <<-EOS.html_safe
      <script src="http://widgets.twimg.com/j/2/widget.js"></script>
      <script>
      new TWTR.Widget({
        version: 2,
        type: 'profile',
        rpp: 4,
        interval: 30000,
        width: 280,
        height: 450,
        theme: {
          shell: {
            background: '#55B3CF',
            color: '#FFF'
          },
          tweets: {
            background: '#FFF',
            color: '#333',
            links: '#55B3CF'
          }
        },
        features: {
          scrollbar: false,
          loop: false,
          live: false,
          behavior: 'all'
        }
      }).render().setUser('youutubu_U2plus').start();
      </script>
    EOS
  end
end
