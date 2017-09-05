
int pantalla=0;
int seleccion=0;
int turno=0;


int[] jugador1=new int[4];
int[] jugador2=new int[4];

int[] p1=new int[4];
int[] p2=new int[4];
int[] p3=new int[4];
int[] p4=new int[4];
int[] p5=new int[4];
int[] p6=new int[4];

void Personaje1()
{
  
fill(255,0,0);
ellipse(70,120,70,70);
fill(255,0,0);
ellipse(70,60,100,100); 
fill(255,0,0);
ellipse(30,100,20,20);
ellipse(110,100,20,20);
fill(0);
ellipse(60,70,50,50);
ellipse(80,70,50,50);
fill(255);
ellipse(60,70,10,10);
ellipse(80,70,10,10);
fill(255,0,0);
ellipse(50,160,20,20);
ellipse(90,160,20,20);




}


void Personaje2()
{
  
stroke(90,255,0);
fill(90,255,0);
ellipse(90,120,80,80);
fill(90,255,0);
ellipse(90,80,130,130); 

fill(90);
ellipse(60,60,20,20);
ellipse(120,60,20,20);
ellipse(60,100,50,50);
ellipse(120,100,50,50);
}

void Personaje3() {
  noStroke();
fill(0);
ellipse(70,110,90,90);
fill(0);
ellipse(70,80,140,140);


fill(90);
ellipse(40,80,70,70);
ellipse(105,80,60,60);
fill(0);
ellipse(40,80,70,30);
ellipse(105,80,60,30);
fill(255);
ellipse(5,20,50,20);
ellipse(135,20,50,20);


}


void Personaje4() {

fill(0);
ellipse(105,120,110,110);
fill(255,0,0);
ellipse(105,130,50,50);
fill(0);
rect(10,70,30,30); 
rect(170,70,30,30);
fill(0);
rect(30,20,150,120); 
fill(255);
ellipse(70,50,40,40);
ellipse(150,50,40,40);
fill(0);
ellipse(70,50,20,20);
ellipse(150,50,20,20);
fill(255);
ellipse(70,40,10,10);
ellipse(150,40,10,10);




}

void Personaje5() {


 fill(0);
rect(50,90,30,90);
rect(130,90,30,90);
rect(20,10,30,30); 
rect(160,10,30,30);
rect(50,30,110,110); 
fill(255);
ellipse(70,50,30,30);
ellipse(140,50,30,30);

rect(80,90,10,10); 
rect(100,90,10,10);
rect(120,90,10,10);  



}


void Personaje6() {


noStroke(); 
 fill(0);
rect(10,10,20,20); 
rect(170,10,20,20);
rect(20,20,30,30); 
rect(150,20,30,30);
  
 

fill(0);
rect(40,40,120,120); 

fill(255);
ellipse(100,100,80,80);
fill(0);
ellipse(100,100,40,40);
fill(255);
ellipse(100,100,20,20);


}

void setup()
{


  p1[0]=3;
  p1[1]=3;
  p1[2]=15;
  p1[3]=1;

  p2[0]=3;
  p2[1]=3;
  p2[2]=15;
  p2[3]=2;

  p3[0]=3;
  p3[1]=4;
  p3[2]=15;
  p3[3]=1;

  p4[0]=4;
  p4[1]=3;
  p4[2]=15;
  p4[3]=2;

  p5[0]=3;
  p5[1]=2;
  p5[2]=15;
  p5[3]=1;

  p6[0]=3;
  p6[1]=2;
  p6[2]=15;
  p6[3]=2;

  size(600, 400); 
  textSize(60);
  

  
}

void draw()
{
 
  
  

  switch (pantalla)
  {
  case 0:
    fill(0);
    background(255);
    pushMatrix();
    textSize(35);
    fill(50);
    text("CTRL, PARA CONTINUAR",100,100);
    popMatrix();
  
    
    
    break;
  case 1:
    background(155);
     pushMatrix();
    textSize(20); 
    text("DAR CLIC PARA ELEGIR JUGADOR 1 Y 2",100,200);
    popMatrix();


    Personaje1();

    pushMatrix();
    translate(200, 0);
    Personaje2();
    popMatrix();

    pushMatrix();
    translate(400, 0);
    Personaje3();
    popMatrix();

    pushMatrix();
    translate(0, 200);
    Personaje4();
    popMatrix();

    pushMatrix();
    translate(200, 200);
    Personaje5();
    popMatrix();

    pushMatrix();
    translate(400, 200);
    Personaje6();
    popMatrix();

    break;
  case 2:
   
   
    background(255,200,200);
      fill(0,255,0);
      textSize(24);
      text("J1 PATADA= 1 PUÑO= 2    J2 PATADA= 3 PUÑO2= 4", 50, 370);
    
    pushMatrix();
    fill(255,0,0);
    rect(100,100,jugador1[2],30);
    popMatrix();
    
    pushMatrix();
    fill(255,0,0);
    rect(300,100,jugador2[2],30);
    popMatrix();
    
    pushMatrix();
    translate(100, 100);
    if (jugador1==p1)
    {
      Personaje1();
    } else if (jugador1==p2)
    {
      Personaje2();
    } else if (jugador1==p3)
    {
      Personaje3();
    } else if (jugador1==p4)
    {
     Personaje4();
    } else if (jugador1==p5)
    {
      Personaje5();
    } else if (jugador1==p6)
    {
   Personaje6();
    }
    popMatrix();

    pushMatrix();
    translate(400, 100);
    if (jugador2==p1)
    {
      Personaje1();
    } else if (jugador2==p2)
    {
   Personaje2();
    } else if (jugador2==p3)
    {
      Personaje3();
    } else if (jugador2==p4)
    {
      Personaje4();
    } else if (jugador2==p5)
    {
    Personaje5();
    } else if (jugador2==p6)
    {
      Personaje6();
    }
    popMatrix();


    if (jugador1[2]<=0)
    {
      fill(255);
      text("ERES EL GANADOR,REINCIA CON BARRA ", 220, 50);
    } else if (jugador2[2]<=0)
    {
      fill(255);
      text("ERES EL GANADOR,REINICIA CON BARRA", 50, 50);
    }
  }
}

void keyPressed()
{
  if (keyCode==CONTROL)
  {
    pantalla=1;
  }

  if (turno==0&&pantalla==2)
  {
    if (key=='1'||key=='1')
    {
      
      
      jugador2[2]=jugador2[2]-(jugador1[0]-jugador2[3]);
      println(jugador2[2]);
      turno=1;
    }
    if (key=='2'||key=='2')
    {
    
      jugador2[2]=jugador2[2]-(jugador1[1]-jugador2[3]);
      println(jugador2[2]);
      turno=1;
    }
  }
  if (turno==1&&pantalla==2)
  {
    if (key=='3'||key=='3')
    {
      
      jugador1[2]=jugador1[2]-(jugador2[0]-jugador1[3]);
      println(jugador1[2]);
      turno=0;
    } 
    if (key=='4'||key=='4')
    {
      
      jugador1[2]=jugador1[2]-(jugador2[1]-jugador1[3]);
      println(jugador2[2]);
      turno=0;
    }
  }

  if (jugador1[2]<=0||jugador2[2]<=0)
  {
    if (key==' ') {
      pantalla=0;
    }
  }
}

void mouseClicked()
{
  if (pantalla==1)
  {
    
    if (mouseX>0&&mouseX<200&&mouseY>0&&mouseY<200)
    {
      if (seleccion==0)
      {
        jugador1=p1;
        seleccion=1;
      
      } else if (seleccion==1)
      {
        
        jugador2=p1;
        
        pantalla=2;
      }
    }

    if (mouseX>200&&mouseX<400&&mouseY>0&&mouseY<200)
    {
      if (seleccion==0)
      {
        jugador1=p2;
        seleccion=1;
      } else if (seleccion==1)
      {
        
        jugador2=p2;
        pantalla=2;
      }
    }


    if (mouseX>400&&mouseX<600&&mouseY>0&&mouseY<200)
    {
      if (seleccion==0)
      {
        jugador1=p3;
        seleccion=1;
       
      } else if (seleccion==1)
      {

        jugador2=p3;
        pantalla=2;
      }
    }
    if (mouseX>0&&mouseX<200&&mouseY>200&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=p4;
        seleccion=1;
      } else if (seleccion==1)
      {
       
        jugador2=p4;
        pantalla=2;
      }
    }

    if (mouseX>200&&mouseX<400&&mouseY>200&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=p5;
        seleccion=1;
      } else if (seleccion==1)
      {

        jugador2=p5;
        pantalla=2;
      }
    }

 
    if (mouseX>400&&mouseX<600&&mouseY>200&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=p6;
        seleccion=1;
      } else if (seleccion==1)
      {

        jugador2=p6;
        pantalla=2;
      }
    }
  }
}