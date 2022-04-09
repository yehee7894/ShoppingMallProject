package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRespository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRespository() {
		Product phone = new Product("p1234", "ipone12", 1000000);
		phone.setDescription("6.1 inch, 2532X1170 Super Retina XDR display, 듀얼  12MP 카메라");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("p1235", "엘지 그램", 1500000);
		notebook.setDescription("13.3 inch, LED display, Intel Core procrssors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("p1236", "iPad Air 3", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super display, Octa-Core procrssors");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Apple");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String pid) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getPid() != null && product.getPid().equals(pid)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}
