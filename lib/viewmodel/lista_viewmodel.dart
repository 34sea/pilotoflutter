import '../model/item_model.dart';

class ListaViewModel {
  List<ItemModel> getItens() {
    return List.generate(
      10,
      (index) => ItemModel(nome: 'Item ${index + 1}', id: index+1),
    );
  }
}
