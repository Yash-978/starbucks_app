class ProductDetailModel
{
  String? productName,category,size,celsius,description,ingredients,veg_nonveg;
  int? price,productNo;

  ProductDetailModel({this.productName,this.category,this.size,this.celsius,this.description,this.ingredients,this.veg_nonveg,this.price,this.productNo});

factory ProductDetailModel.fromProduct(Map m1)
{
  return ProductDetailModel(productName: m1['productName'],category: m1['category'],size: m1['size'],celsius: m1['celsius'],description: m1['description'],ingredients: m1['ingredients'],veg_nonveg: m1['veg_nonveg']);
}
}