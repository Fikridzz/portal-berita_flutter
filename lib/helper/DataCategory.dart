import 'package:portal_berita/models/Category.dart';

List<Categorie> getCategorie() {
  List<Categorie> categorie = [
    Categorie(
        categoriName: "Health",
        imageUrl:
            "https://images.unsplash.com/photo-1447452001602-7090c7ab2db3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80"),
    Categorie(
        categoriName: "Entertainment",
        imageUrl:
            "https://images.unsplash.com/photo-1576542188345-8e790299bef8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"),
    Categorie(
        categoriName: "Business",
        imageUrl:
            "https://images.unsplash.com/photo-1462206092226-f46025ffe607?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1506&q=80"),
    Categorie(
        categoriName: "General",
        imageUrl:
            "https://images.unsplash.com/photo-1432821596592-e2c18b78144f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"),
    Categorie(
        categoriName: "Science",
        imageUrl:
            "https://images.unsplash.com/photo-1531956656798-56686eeef3d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1078&q=80"),
  ];
  return categorie;
}
