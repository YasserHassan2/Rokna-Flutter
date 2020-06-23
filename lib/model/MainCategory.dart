class MainCategory {
  int id;
  String title,imgUrl;

  MainCategory({this.id,this.title,this.imgUrl});

}

List<MainCategory> mainCategorisList = [

  MainCategory(
    id: 1,
    title: 'Products',
    imgUrl: 'https://images.pexels.com/photos/2766334/pexels-photo-2766334.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'
  ),
  MainCategory(
      id: 2,
      title: 'Workshops',
      imgUrl: 'https://images.pexels.com/photos/301703/pexels-photo-301703.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'
  ),
  MainCategory(
      id: 3,
      title: 'Events',
      imgUrl: 'https://images.pexels.com/photos/3626588/pexels-photo-3626588.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"'
  )


];