//Jennifer Nolan
//C16517636

void setup()
{
  size(800, 600);
  loadData();
  printProducts();
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