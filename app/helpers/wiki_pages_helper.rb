module WikiPagesHelper
  acts_as_wiki_pages_helper

  def wiki_user( user )
    return ("&lt;" + wt("Unknown") + "&gt;").html_safe unless user

    if user.respond_to?(:screen_name)
      user.screen_name
    else
      "User##{user.id}"
    end
  end
end
