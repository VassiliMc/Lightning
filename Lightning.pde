float startX =(float)Math.random()*301;;
float endX = 0;
float startY = 0;
float endY = 0;
void setup(){
	noStroke();
	size(500,500);
	background(0,0,0);
	strokeWeight(3);
}
void draw(){
	noStroke();
	fill(0,0,0,7);
	rect(0,0,500,500);
	float newX [] = new float[20];
	int count = 0;
	stroke(255,255,0);
	while(endY < 500){
		stroke(255,255,0);
		endX = startX + (float)Math.random()*18 - 9;
		endY = startY + (float)Math.random()*9+5;
		float fork = (float)Math.random();
		if(fork>0.1){
			stroke(255,255,0);
			line(startX, startY, endX, endY);
			for(int g = -1; g < 2; g += 2){
				stroke(255,255,255,40);
				line(startX-g, startY, endX-g, endY);
			}
			for(int i = 0; i <= count; i++){
				float hold = newX[i] + (float)Math.random()*18 - 9;
				if(newX[i] != 0){
					stroke(255,255,0);
					line(newX[i], startY, hold, endY);
					for(int g = -1; g < 2; g += 2){
						stroke(255,255,255,40);
						line(newX[i]-g, startY, hold-g, endY);
					}
					newX[i] = hold;
				}
			}
		} else {
			stroke(255,255,0);
			line(startX, startY, endX, endY);
			for(int g = -1; g < 2; g += 2){
				stroke(255,255,255,40);
				line(startX-g, startY, endX-g, endY);
			}
			newX[count] = startX;
			stroke(255,255,0);
			line(startX, startY, endX+(startX - endX)*2, endY);
			for(int g = -1; g < 2; g += 2){
				stroke(255,255,255,40);
				line(startX-g, startY, endX+(startX - endX)*2-g, endY);
			}
			count ++;
			for(int i = 0; i <= count; i++){
				float hold = newX[i] + (float)Math.random()*18 - 9;
				if(newX[i] != 0){
					stroke(255,255,0);
					line(newX[i], startY, hold, endY);
					for(int g = -1; g < 2; g += 2){
						stroke(255,255,255,40);
						line(newX[i]-g, startY, hold-g, endY);
					}
					newX[i] = hold;
				}
			}
		}
		startX=endX;
		startY=endY;
	}
}
void mousePressed(){
	fill(128);
	rect(0,0,500,500);
	startX = (float)Math.random()*301;
	//endX = startX;
	startY = 0;
	endY=0;
	background(0,0,0);
}

