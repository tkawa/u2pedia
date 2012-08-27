module ApplicationHelper
  def facebook_like_button(url="http://u2pedia.u2plus.jp/wiki")
    <<-EOS.html_safe
      <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fu2pedia.u2plus.jp&amp;send=false&amp;layout=button_count&amp;width=110&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=arial&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:110px; height:21px;" allowTransparency="true"></iframe>
    EOS
  end

  def twitter_share_button(url='http://u2pedia.u2plus.jp/wiki', title='U2pedia', user='youutubu_U2plus')
    <<-EOS.html_safe
      <a class="twitter-share-button" href="http://twitter.com/share" data-via="#{user}" data-lang="ja" data-related="goods_U2plus">
      </a>
    EOS
  end

  def twitter_share_button_script
    <<-EOS.html_safe
      <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
    EOS
  end
  
  def google_plus_button()
    <<-EOS.html_safe
      <div class="g-plusone" data-size="medium">
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
end
