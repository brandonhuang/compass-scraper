require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get('http://compass.lighthouselabs.ca/session/new')
login_page = page.link_with(href: '/auth/github').click

#redirects to github login

github_login_form = login_page.form_with(action: '/session')
github_login_form.login = "hi@brandonhuang.io"
github_login_form.password = "scraper1"
agent.submit(github_login_form)

#redirects back to setup compass page

for i in (0..50)
  begin
    title = agent.get("http://compass.lighthouselabs.ca/days/setup/activities/#{i}").at('.activity-details h1').text.strip
    # Activity.creat(title: title, id: i)
  rescue Mechanize::ResponseCodeError
    pp "#{i} doesn't exist"
  end
end
