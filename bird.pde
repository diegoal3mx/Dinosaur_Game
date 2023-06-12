class Bird{

    int x, y, w, h, img_index;
    PImage img;
    PImage img2;
    PImage [] imgs = new PImage[2];
    PImage sprite;

    Bird(){
        x=1350;
        w= 84;
        h= 75;
        img_index = 0;
        sprite = loadImage("imgs/dinosaur-sprite.png");
        img = sprite.get(134, 2, 46, 40); 
        img2 = sprite.get(180, 2, 46, 40); 
        imgs [0] = img; imgs[1] = img2;
        int type = (int)random(4);

        switch (type) {
            case 0:
                y = 385;
                break;
            case 1:
                y = 439;
                break;
            case 2:
               y = (int) random (100,390);
                break;
            case 3:
             y = (int) random (100,390);
                 break;
        }
    }

    void update(int speed){
        x -= speed;
      
        if(frameCount%10==0){
             image(imgs[img_index ^= 1], x, y, w, h);}
        else{
             image(imgs[img_index], x, y, w, h);
        }
    }

    void display(){
        noFill();
        rect(x,y,w,h);
        image(imgs[img_index], x, y, w, h);
    }
}