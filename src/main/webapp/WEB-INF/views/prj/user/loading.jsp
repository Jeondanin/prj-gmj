<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en" class=""><head>
<meta http-equiv="refresh" content="4; url=./Geocode">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karla"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<style class="cp-pen-styles">html, body {
  padding: 0px;
  margin: 0px;
  background: #000;
  font-family: 'Karla', sans-serif;
  color: #fff;
  height: 100%;
}

body {
  display: flex;
  cursor: default;
}

canvas {
  background: #000;
  margin: auto;
  width: 500px;
  height: 300px;
  -webkit-filter: blur(3px) contrast(20);
          filter: blur(3px) contrast(20);
}

inputs {
  position: fixed;
  top: 0;
  left: 0;
  color: #FFF;
  font-size: 12px;
  opacity: 0;
  transition: all 0.2s;
  background: rgba(0, 0, 0, 0.75);
  padding: 5px;
}
inputs input {
  display: none;
}
inputs:hover {
  opacity: 1;
}
</style></head><body>

<canvas width="500" height="300"></canvas>
<inputs style="visibility:hidden">
  <label for="move">move (0.5)</label>
  <input id="move" type="range" value="0.5" min="0" max="1" step="0.01">
  <label for="pull">pull (0.15)</label>
  <input id="pull" type="range" value="0.15" min="0" max="1" step="0.01">
  <label for="dampen">dampem (0.95)</label>
  <input id="dampen" type="range" value="0.95" min="0.5" max="1" step="0.001">
  <label for="density"> Density (3)</label>
  <input id="density" type="range" value="3" min="1" max="20" step="1">
</inputs>
<script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>
<script>// NOTE: this code is a bit upsidedown

var ctx = document.querySelector('canvas').getContext('2d');
var canvas = ctx.canvas;
canvas.width = canvas.getBoundingClientRect().width;
canvas.height = canvas.getBoundingClientRect().height;

var draw = new Draw(ctx);
var mouse = new Mouse(canvas);

var particles = [];
var densityInput = document.getElementById('density');

densityInput.addEventListener('input', function () {
	document.querySelector('[for=density]').innerHTML = 'density (' + densityInput.value + ')';
	init();
});

init();
step();

function init() {
	draw.set({
		font: '125px monospace',
		textBaseline: 'middle',
		textAlign: 'center',
		fillStyle: '#FFF' });


	draw.clear();
	draw.fillText(canvas.width / 2, canvas.height / 2, '건 문 지');
	particles = scan(ctx, densityInput.value);
	for (var particle of particles) {
		particle.sx = particle.x;
		particle.sy = particle.y;
		particle.ax = Math.random() * 25 - 13;
		particle.ay = Math.random() * 25 - 13;
	}
}

function step() {
	draw.clear();
	window.requestAnimationFrame(step);
	var move = document.getElementById('move').value;
	document.querySelector('[for=move]').innerHTML = 'move (' + move + ')';
	var pull = document.getElementById('pull').value;
	document.querySelector('[for=pull]').innerHTML = 'pull (' + pull + ')';
	var dampen = document.getElementById('dampen').value;
	document.querySelector('[for=dampen]').innerHTML = 'dampem (' + dampen + ')';

	for (var particle of particles) {
		var distance = Math.sqrt(Math.pow(particle.y - mouse.y, 2) + Math.pow(particle.x - mouse.x, 2));
		var push = 1 / distance * 6;

		for (var ax of ['x', 'y']) {
			// Move
			particle[ax] += particle['a' + ax];
			// Move random
			particle['a' + ax] += (Math.random() - 0.5) * move;
			// Pull to start
			particle['a' + ax] -= Math.sign(particle[ax] - particle['s' + ax]) * pull;
			// Dampen
			particle['a' + ax] *= dampen;
			// Push from mouse
			particle['a' + ax] -= Math.sign(mouse[ax] - particle[ax]) * push;
		}

		draw.fillCircle(particle.x, particle.y, 4);
	}
}

function scan(ctx, density) {
	var imageData = ctx.getImageData(0, 0, ctx.canvas.width, ctx.canvas.height);
	var pixels = [];
	var rows = ctx.canvas.height / density;
	var cols = ctx.canvas.width / density;

	for (var row = 0; row < rows; row++) {
		for (var col = 0; col < cols; col++) {
			var pixelX = col * density + density / 2;
			var pixelY = row * density + density / 2;

			for (var rp = 0; rp < density; rp++) {
				for (var rc = 0; rc < density; rc++) {
					var pixelID = ((row * density + rp) * ctx.canvas.width + (col * density + rc)) * 4;
					var [r, g, b, alpha] = [
					imageData.data[pixelID],
					imageData.data[pixelID + 1],
					imageData.data[pixelID + 2],
					imageData.data[pixelID + 3]];


					if (alpha) {
						pixels.push({ x: pixelX, y: pixelY, info: { r: r, g: g, b: b, alpha: alpha } });
						rp = density;
						rc = density;
					}
				}
			}
		}
	}
	//console.log('pixels', pixels)
	/*
 for(var i = 0; i < imageData.data.length; i+=4) {
 	var x = (i/4) % imageData.width
 	var y = Math.floor((i/4)/imageData.width) % imageData.height
 	var [r,g,b,alpha] = [imageData.data[i],imageData.data[i+1],imageData.data[i+2], imageData.data[i+3]]
 	// Loop all pixels and take the max
 	// the block at pixel 0 and density 2 would be [0, 1, 4, 5]
 	// Note: if the dpi doesn't line up with the col/row count. 💀
 	// Center the pixel between
 	//
 	//  -------------------
 	//  |  0   1   2   3  |
 	//  |  4   5   6   7  |
 	//  |  8   9  10  11  |
 	//  -------------------
 	var block = []
 	for(var b = 1; b < density; b++) {
 		r = Math.max(r, imageData.data[i+b])
 		g = Math.max(g, imageData.data[i+b+1])
 		b = Math.max(b, imageData.data[i+b+2])
 		alpha = Math.max(b, imageData.data[i+b+3])
 	}
 	if(alpha) {
 		pixels.push({ x:x, y:y, r:r, g:g, b:b, a:alpha, i:i })
 	}
 }
 */
	return pixels;
}
// function scan() {
// 	var points = []
// 	var x = canvas.width; while(x--) {
// 		var y = canvas.height; while(y--) {
// 			var [r,g,b,alpha] = ctx.getImageData(x, y, 1, 1).data
// 			if(alpha){
// 				points.push({ x:x, y:y, r:r, g:g, b:b, a:alpha })
// 			}
// 		}
// 	}
// 	return points
// }


function Draw(ctx) {
	this.ctx = ctx;
	this.canvas = canvas;

	this.set = function (options) {
		for (var option in options) {
			this.ctx[option] = options[option];
		}
	};
	this.fillRect = function (x, y, width, height) {
		this.ctx.fillRect(x, y, width, height);
	};
	this.strokeRect = function (x, y, width, height) {
		this.ctx.strokeRect(x, y, width, height);
	};
	this.fillCircle = function (x, y, radius) {
		this.ctx.beginPath();
		this.ctx.arc(x, y, radius, 0, Math.PI * 2);
		this.ctx.fill();
	};
	this.strokeCircle = function (x, y, radius) {
		this.ctx.beginPath();
		this.ctx.arc(x, y, radius, 0, Math.PI * 2);
		this.ctx.stroke();
	};
	this.fillText = function (x, y, text) {
		this.ctx.fillText(text, x, y);
	};
	this.strokeText = function (x, y, text) {
		this.ctx.strokeText(text, x, y);
	};
	this.line = function (x1, y1, x2, y2) {
		this.ctx.beginPath();
		this.ctx.moveTo(x1, y1);
		this.ctx.lineTo(x2, y2);
		this.ctx.stroke();
	};
	this.clear = function () {
		this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
	};
}

function Mouse(canvas) {
	this.x = 0;
	this.y = 0;
	this.canvas = canvas;
	this.canvas.addEventListener('mousemove', function (e) {
		this.x = e.offsetX;
		this.y = e.offsetY;
	}.bind(this));
	this.canvas.addEventListener('mouseleave', function (e) {
		this.x = -100;
		this.y = -100;
	}.bind(this));
}
//# sourceURL=pen.js
</script>

</body>
</html>