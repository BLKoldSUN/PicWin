To open the window, just type /intro
alias intro {
  ;; here we create the window and we set the size
  window -adk0pC @intro 400 400 350 420
  ;; background of the window, in this case i used a png image
  drawpic -r @intro 0 0 $mircdirsystem/pics/spotlight1.png  
  ;; 2 labels
  drawtext -np @intro 0  tahoma 18 20 10  Login NickServ
  drawtext -np @intro 0  tahoma 12 20 40 Please use your nickserv credentials to login
  ;; login text
  drawtext -np @intro 0  tahoma 14 30 70  Username:
  drawtext -np @intro 0  tahoma 14 30 100  Password:
  drawrect -nd @intro 0 2 150 70 150 25 5 5
  drawrect -nd @intro 0 2 150 100 150 25 5 5
  ;; this represents your nickname using the identifyer $me
  drawtext -np @intro 0  tahoma 14 155 74 $me
  ;; login button + shadows under each button to create a nice effect
  drawrect -ndf @intro 1 2 152 132 70 25 5 5
  drawrect -ndf @intro 0 2 150 130 70 25 5 5
  drawrect -ndf @intro 1 2 232 132 70 25 5 5
  drawrect -ndf @intro 0 2 230 130 70 25 5 5
  ;; text button
  drawtext -np @intro 1  tahoma 12 165 135 Login
  drawtext -np @intro 1  tahoma 12 240 135 Register
  ;; groupbox
  drawrect -nd @intro 0 1 20 180 280 150 5 5
  drawtext -np @intro 0  tahoma 12 30 190 Other settings for username

}
menu @intro {
  close:window -c @intro 
}
