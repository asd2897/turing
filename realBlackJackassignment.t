%////////////////////////////////////////////////////////////////////////%
%Author:Austin                                                  %
%Date:Nov 23rd 2010                                                      %
%Filename:BlackJackassignment.t                                  %
%Description:Used to make and play a game of Blackjack                   %
%////////////////////////////////////////////////////////////////////////%
import GUI
% variables 
procedure start
var money,bet:int
 money:=100 
var a,sum : int 
var b : string
var x : int 
    x:=80
var c : int 
var d : string
var y : int 
    y:=520
var dealer:int
    dealer:=0
var cardnum : int
var cardname : string   
var cardnum1 : int
var cardname1 : string   
var cardvalue : int
var cardvalue1 : int
var total : int   
    total:=0
var z,q:int
    q:=580
    z:=560    
    sum:=0
var Dealercard,Dealervalue:int
var Dealercard2:string
end start
start
var a,sum : int 
var b : string
var x : int 
    x:=80
var c : int 
var d : string
var y : int 
    y:=520
var dealer:int
    dealer:=0
var cardnum : int
var cardname : string   
var cardnum1 : int
var cardname1 : string   
var cardvalue : int
var cardvalue1 : int
var total : int   
    total:=0
var z,q:int
    q:=580
    z:=560    
    sum:=0
var Dealercard,Dealervalue:int
var Dealercard2:string
var money,bet:int
 money:=100 
Draw.Text (intstr(money),0,590,defFontID,white)

setscreen("graphics:899,599")

var muney,beet,gamemoney:int
procedure draw
Draw.FillBox (0, 0, 900, 600, green)
Draw.FillBox (0, 0, 25, 600, 231)
Draw.FillBox (0, 575, 900, 600, 231)
Draw.FillBox (874, 0, 900, 600, 231)
Draw.FillBox (0, 0, 900, 25, 231)
end draw
draw
procedure game

Dealercard := Rand.Int (1, 52)
Dealercard2 := intstr (Dealercard) + ".bmp"
Pic.ScreenLoad ("dealer.bmp", 560,30, picCopy)
Pic.ScreenLoad ("dealer.bmp", 540,30, picCopy)
%For the cards
cardnum := Rand.Int (1, 52)
cardname := intstr (cardnum) + ".bmp"
Pic.ScreenLoad (cardname, 60, 50, picCopy)
delay (250)
%for second starting card
cardnum1 := Rand.Int (1, 52)
cardname1 := intstr (cardnum1) + ".bmp"
Pic.ScreenLoad (cardname1, 80, 40, picCopy)
delay (500)
if cardname = cardname1 then
    put cardnum1 + 1
end if
% Puts total on screen for first card
cardvalue := cardnum mod 13
if cardvalue = 1 then
    cardvalue := 11
elsif cardvalue > 10 or cardvalue = 0 then
    cardvalue := 10
end if
% for second card
cardvalue1 := cardnum1 mod 13
if cardvalue1 = 1 then
    cardvalue1 := 11
elsif cardvalue1 > 10 or cardvalue1 = 0 then
    cardvalue1 := 10
end if
% intial total
total := cardvalue + cardvalue1
Draw.Text (intstr (total), 100, z, defFontID, red)
if total =21 then
    Draw.Text ("Balck Jack You Win", 350,410, defFontID,black)
end if
Draw.Text (" Is Your total", 110, z, defFontID, red)
end game
game

% button procedure for u
procedure Hit
    a:= Rand.Int (1, 52)
    x:=x+20
    var k:=a mod 13
    z:=z-20
    total:=total+k
    Draw.Text (intstr (total), 100, z, defFontID, red)
    Draw.Text (" Is Your total", 110, z, defFontID, red)
    if total =21 then
    Draw.Text ("Balck Jack You Win", 350,410, defFontID,black)
    elsif total>21 then
    Draw.Text ("You bust", 350,410, defFontID,black)
    end if
    b := intstr (a) + ".bmp"
    Pic.ScreenLoad (b,x, 30, picCopy)
end Hit
%dealer procedurer
procedure Stay
 
var a,sum : int 
var b : string
var x : int 
    x:=80
var c : int 
var d : string
var y : int 
    y:=520
var dealer:int
    dealer:=0
var cardnum : int
var cardname : string   
var cardnum1 : int
var cardname1 : string   
var cardvalue : int
var cardvalue1 : int
var total : int   
    total:=0
var z,q:int
    q:=580
    z:=560    
    sum:=0
var Dealercard,Dealervalue:int
var Dealercard2:string

    loop
       c:= Rand.Int (1, 52)
       y:=y+20
       d := intstr (c) + ".bmp"
       dealer:= c mod 13 
       if dealer = 1 then
	  dealer := 11
       elsif dealer > 10 or dealer = 0 then
	   dealer := 10
       end if
       Pic.ScreenLoad (d,y,30,picCopy) 
       delay (250)
       sum:=(dealer+sum)
       q:=q-20
       Draw.Text (intstr (sum), 694, q, defFontID, red)
       Draw.Text (" Is the dealers total", 705, q, defFontID, red)
       exit when sum>16 
    end loop 
if sum>21 then
   Draw.Text ("The Dealer Busts", 350,400 , defFontID, red)
elsif sum=21 then
   Draw.Text ("The Dealer wins", 350,400 , defFontID, red)
end if
end Stay

procedure restart
cls
draw
game
if total<=21 or sum>21 then
money:=money+20
elsif total>21 then
money:=money-20
end if
end restart
%button
loop
    var dra : int := GUI.CreateButton (348,300, 30, "Stay", Stay)
    var fill : int := GUI.CreateButton (300,300, 30, "Hit", Hit)
    var fil : int := GUI.CreateButton (402,300, 30, "restart", restart)
    exit when GUI.ProcessEvent
end loop
if sum<total then
Draw.Text ("The Dealer wins", 350,400 , defFontID, red)
elsif total<sum then
Draw.Text (" You Win", 350,410, defFontID,black)
end if
