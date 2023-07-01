class CollisionBox{

    int x, y, w, h;
    ArrayList<CollisionBox> boxes;

    CollisionBox(int cactusType){
        x=1350;
        int type = cactusType;
        boxes = new ArrayList<CollisionBox>();

        if(type < 3){
            h=66;
            y=470;
        }else{
            h=96;
            y=444;
        }
        switch (type) {
            case 0:         
                                         //x,y,w,h  //y2=470, y10=486
                //boxes.add(new CollisionBox(228,10,5,16));
                boxes.add(new CollisionBox(1350,486,9,30));
                boxes.add(new CollisionBox(1358,470,14,66));  
                boxes.add(new CollisionBox(1371,478,9,30));         
                break;
            case 1:
                boxes.add(new CollisionBox(1350,486,11,30));
                boxes.add(new CollisionBox(1360,470,11,66));  
                boxes.add(new CollisionBox(1370,478,12,30));        
            
                boxes.add(new CollisionBox(1381,478,12,26));
                boxes.add(new CollisionBox(1392,470,12,66));  
                boxes.add(new CollisionBox(1403,478,10,34));        
                break;
            case 2:
                boxes.add(new CollisionBox(1350,486,11,30));
                boxes.add(new CollisionBox(1360,470,11,66));  
                boxes.add(new CollisionBox(1370,478,12,30));        
               
                boxes.add(new CollisionBox(1381,477,12,40));
                boxes.add(new CollisionBox(1392,470,12,66));  
                boxes.add(new CollisionBox(1403,484,12,38));   

                boxes.add(new CollisionBox(1414,476,12,32));
                boxes.add(new CollisionBox(1425,470,12,66));  
                boxes.add(new CollisionBox(1436,478,11,34));              
                break;
            case 3:
                w = 46;
               
                break;
            case 4:
                w = 96;
                
                break;
            case 5:
                w = 146;
                
                break;
            case 6:
                                        //x,   y,  w,  h  //y2=470, y10=486
            //          player.sprite.get(848, 2, 44, 47);
            // boxes.add(new CollisionBox(200,450,80,86));   
            //boxes.add(new CollisionBox(202,480,11,30));             
            //boxes.add(new CollisionBox(212,492,44,26));
            //boxes.add(new CollisionBox(220,517,26,7));
            //boxes.add(new CollisionBox(220,522,11,12));
            //boxes.add(new CollisionBox(237,522,11,12));
            //boxes.add(new CollisionBox(228,480,35,17));
            //boxes.add(new CollisionBox(239,454,37,28)); //IF box 0 (la cola) == NO C.Y BAJAR HASTA SUELO

            boxes.add(new CollisionBox(202,480,11,30));             
            boxes.add(new CollisionBox(212,492,44,26));
            boxes.add(new CollisionBox(220,517,26,7));
            boxes.add(new CollisionBox(220,522,11,12));
            boxes.add(new CollisionBox(237,522,11,12));
            boxes.add(new CollisionBox(228,480,35,17));
            boxes.add(new CollisionBox(239,454,37,28)); 
            break;

            case 7:
                                         //x,   y,  w,  h  //y2=470, y10=486
            //          player.sprite.get(1112, 19, 59, 30); 
            // boxes.add(new CollisionBox(200,484,110,52));   
            boxes.add(new CollisionBox(202,488,17,20));   
            boxes.add(new CollisionBox(218,488,88,30));  
            boxes.add(new CollisionBox(222,517,26,17)); 
            boxes.add(new CollisionBox(247,517,22,9));
            break;
        }
    }

    CollisionBox(int _x, int _y, int _w, int _h){
        x=_x;
        y=_y;
        w=_w;
        h=_h;
    }

    void update(int speed){
        x -= speed;
    }

    ArrayList<CollisionBox> getCollisionBoxes(){ 
        return boxes;
    }

    void display(){
        fill(255,0,0,50);
        rect(x,y,w,h);
      
    }
}