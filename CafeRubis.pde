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
  
}

void displayProducts()
{
  textAlign(CENTER); 
  fill(0);
  textSize(26);
  text("Cafe Rubis Till System", width / 2, 30);
  
  line(width / 2, height / 6 * 0.5, width / 2, height / 6 * 5.8);
  
  float i = 1;
  float x = width / 8;
  float y = height / 6;
  
  for(Product p:products)
  {
    textAlign(LEFT);
    textSize(18);
    text(p.name, x, y * i);
    i = i + 0.7f;
  }
  
  for(Product b:bill)
  {
    textAlign(LEFT);
    
  }
}