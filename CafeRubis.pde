//Jennifer Nolan
//C16517636

void setup()
{
  size(800, 600);
  background(180);
  loadData();
  printProducts();
  displayProducts();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

float posx = width / 8;
float posy = height / 6;

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
}

void printProducts()
{
  for(int i = 0; i < products.size(); i ++)
  {
    Product p = products.get(i);
    println(p);
  }
}

void draw()
{
  float x = width / 8;
  float y = height / 6;
  
  fill(255);
  stroke(0);
  rect(x * 4.5, y * 0.7, 300, 500);
  
  textAlign(LEFT);
  fill(0);
  text("Your Bill", x * 5.5, y);
}

void displayProducts()
{
  textAlign(CENTER); 
  fill(0);
  textSize(26);
  text("Cafe Rubis Till System", width / 2, 30);
  
  line(width / 2, height / 6 * 0.5, width / 2, height / 6 * 5.8);
  
  float i = 1;
  float j = 0.01f;
  float k = 1;
  float x = width / 8;
  float y = height / 6;
  float x2 = width / 8 * 3;
  
  for(Product p:products)
  {
    fill(255);
    stroke(0);
    j = j + 0.7f;
    rect(x - 12, y * j, 270, 50);
    
    fill(0);
    textAlign(LEFT);
    textSize(18);
    text(p.name, x, y * i);
    i = i + 0.7f;
  }
  
  for(Product p:products)
  {
    text(nf(p.price, 1, 2), x2, y * k);
    k = k + 0.7f;
  }
}

void mousePressed()
{
   for(int i = 0; i < products.size(); i ++)
   {
     //Product b = bill.get(i);
     //float total;
     float j = 0.01f;
     
     if(mouseX > posx - 12 && mouseX < 365)
     {
       if(mouseY > posy * j)
       {
         //textAlign(LEFT);
         //text(nf(b.price, 1, 2), 
       }
     }
   }
}