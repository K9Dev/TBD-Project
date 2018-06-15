
image_alpha -= 0.03;

x += 0.05;
y -= 0.15;

if(image_alpha <= 0 ){
	instance_destroy();
}