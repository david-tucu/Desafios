PImage miImagen;  // variable para la imagen
float posX, despX; // variables para el primer nombre
float posY, despY; // variables para el segundo nombre
boolean cara1, cara2; // variables que detectan donde esta el mouse
String texto = "D\nA\nN\nT\nE";
void setup() {
  size(400, 400);
//cargar la imagen
  miImagen = loadImage("1.jpg");
  
  despX = 1;
  posX = 0;
  posY = 10;
  despY = 1;
}

void draw() {
 
  
  //fondo bonito
  background(130, 20, 170);
  
  //dibujar la imagen
  image(miImagen, 0, 0, 300, 300);
  
  
  println(mouseX, mouseY);

//primer nombre
  posX+=despX;
  
  //variable que interpreta que estoy cliqueando en la cara 1
  cara1 = mouseX >= 90 && mouseX <= 150 && mouseY >= 65 && mouseY <= 155;

  if (mousePressed && cara1) {
    textSize(50);
    fill(0);
    text("Karen", posX, 370);
  }
  if (posX>=200 || posX<=0) {
    despX = -despX;
  }
  
  //segundo nombre
  posY += despY;
  
  //variable que interpreta que estoy cliqueando en la segunda cara
  // 145 a 200 x  25 a 120
  cara2 = mouseX >= 145 && mouseX <= 200 && mouseY >= 25 && mouseY<=120;
  if(mousePressed && cara2){
     textSize(30);
    fill(0);
  text(texto,350,posY);  
  }
  
   if (posY>=200 || posY<=10) {
    despY = -despY;
  }
  
  
}
