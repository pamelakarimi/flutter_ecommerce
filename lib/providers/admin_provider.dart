import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class AdminProvider extends ChangeNotifier {
  List<QueryDocumentSnapshot> categories = [];
  StreamSubscription<QuerySnapshot>? _categorySubscription;

   int totalCategories = 0;

   AdminProvider(){
    getCategories();  
  }
    // GET all the products
    void getProducts() {
    _productsSubscription?.cancel();
    _productsSubscription = DbService().readProducts().listen((snapshot) {
      products = snapshot.docs;
      totalProducts=snapshot.docs.length;
      notifyListeners();
    });
  }

}
