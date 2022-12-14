/// @description Insert description here
// You can write your code in this editor
// Get input buttons
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

// Input axis
var _inputX = _right - _left;
var _inputY = _down - _up;

// Get movement speed
moveX = _inputX * moveSpeed;
moveY = _inputY * moveSpeed;


// Collisions
if (collision(x + moveX, y)) {
	while (!collision(x + sign(moveX), y)) {
		x += sign(moveX);
	}
	
	moveX = 0;
}

if (collision(x, y + moveY)) {
	while (!collision(x, y + sign(moveY))) {
		y += sign(moveY);
	}
	
	moveY = 0;
}

x += moveX;
y += moveY;


/*
if (PlayerCollision(x+movex,y,oCollision))
{
	while (!PlayerCollision(x+sign(movex),y,oCollision))
	{
x += sign(movex);
}
	movex = 0;
}


if (PlayerCollision(x+movey,y,oCollision))
{
	while (!PlayerCollision(x+sign(movey),y,oCollision))
	{
x += sign(movey);
}
	movey = 0;
}
*/
if (moveX !=0 or moveY !=0)
{
sprite_index = sPlayer_move;
}
else
{
sprite_index = sPlayer_idle;
}
//mouse direction
var _signMouse = sign(mouse_x - x);
if (_signMouse !=0){
image_xscale = _signMouse;
}

//animatio speed and facing
if (moveX !=0 && sign(moveX) !=_signMouse)
{
image_speed=-1;
}
else
{
image_speed=1;
}


