/// items : [{"id":1,"name":"Goku","ki":"60.000.000","maxKi":"90 Septillion","race":"Saiyan","gender":"Male","description":"El protagonista de la serie, conocido por su gran poder y personalidad amigable. Originalmente enviado a la Tierra como un infante volador con la misión de conquistarla. Sin embargo, el caer por un barranco le proporcionó un brutal golpe que si bien casi lo mata, este alteró su memoria y anuló todos los instintos violentos de su especie, lo que lo hizo crecer con un corazón puro y bondadoso, pero conservando todos los poderes de su raza. No obstante, en la nueva continuidad de Dragon Ball se establece que él fue enviado por sus padres a la Tierra con el objetivo de sobrevivir a toda costa a la destrucción de su planeta por parte de Freeza. Más tarde, Kakarot, ahora conocido como Son Goku, se convertiría en el príncipe consorte del monte Fry-pan y líder de los Guerreros Z, así como el mayor defensor de la Tierra y del Universo 7, logrando mantenerlos a salvo de la destrucción en innumerables ocasiones, a pesar de no considerarse a sí mismo como un héroe o salvador.","image":"https://dragonball-api.com/characters/goku_normal.webp","affiliation":"Z Fighter","deletedAt":null},{"id":2,"name":"Vegeta","ki":"54.000.000","maxKi":"19.84 Septillion","race":"Saiyan","gender":"Male","description":"Príncipe de los Saiyans, inicialmente un villano, pero luego se une a los Z Fighters. A pesar de que a inicios de Dragon Ball Z, Vegeta cumple un papel antagónico, poco después decide rebelarse ante el Imperio de Freeza, volviéndose un aliado clave para los Guerreros Z. Con el paso del tiempo llegaría a cambiar su manera de ser, optando por permanecer y vivir en la Tierra para luchar a su lado contra las inminentes adversidades que superar. Junto con Piccolo, él es de los antiguos enemigos de Goku que ha evolucionando al pasar de ser un villano y antihéroe, a finalmente un héroe a lo largo del transcurso de la historia, convirtiéndose así en el deuteragonista de la serie.","image":"https://dragonball-api.com/characters/vegeta_normal.webp","affiliation":"Z Fighter","deletedAt":null},{"id":3,"name":"Piccolo","ki":"2.000.000","maxKi":"500.000.000","race":"Namekian","gender":"Male","description":"Es un namekiano que surgió tras ser creado en los últimos momentos de vida de su padre, siendo su actual reencarnación. Aunque en un principio fue el archienemigo de Son Goku, con el paso del tiempo fue haciéndose menos malvado hasta finalmente convertirse en un ser bondadoso y miembro de los Guerreros Z. A través del tiempo, también comenzó a tomarle cariño a su discípulo Son Gohan, a quien veía como una especie de \"vástago\" y formando un lazo de amistad con este.","image":"https://dragonball-api.com/characters/picolo_normal.webp","affiliation":"Z Fighter","deletedAt":null},{"id":4,"name":"Bulma","ki":"0","maxKi":"0","race":"Human","gender":"Female","description":"Bulma es la protagonista femenina de la serie manga Dragon Ball y sus adaptaciones al anime Dragon Ball, Dragon Ball Z, Dragon Ball Super y Dragon Ball GT. Es hija del Dr. Brief y su esposa Panchy, hermana menor de Tights y una gran amiga de Son Goku con quien inicia la búsqueda de las Esferas del Dragón. En Dragon Ball Z tuvo a Trunks, primogénito de quien sería su esposo Vegeta, a su hija Bra[3] y su hijo adulto del tiempo alterno Trunks del Futuro Alternativo.","image":"https://dragonball-api.com/characters/bulma.webp","affiliation":"Z Fighter","deletedAt":null},{"id":5,"name":"Freezer","ki":"530.000","maxKi":"52.71 Septillion","race":"Frieza Race","gender":"Male","description":"Freezer es el tirano espacial y el principal antagonista de la saga de Freezer.","image":"https://dragonball-api.com/characters/Freezer.webp","affiliation":"Army of Frieza","deletedAt":null},{"id":6,"name":"Zarbon","ki":"20.000","maxKi":"30.000","race":"Frieza Race","gender":"Male","description":"Zarbon es uno de los secuaces de Freezer y un luchador poderoso.","image":"https://dragonball-api.com/characters/zarbon.webp","affiliation":"Army of Frieza","deletedAt":null},{"id":7,"name":"Dodoria","ki":"18.000","maxKi":"20.000","race":"Frieza Race","gender":"Male","description":"Dodoria es otro secuaz de Freezer conocido por su brutalidad.","image":"https://dragonball-api.com/characters/dodoria.webp","affiliation":"Army of Frieza","deletedAt":null},{"id":8,"name":"Ginyu","ki":"9.000","maxKi":"25.000","race":"Frieza Race","gender":"Male","description":"Ginyu es el líder del la élite de mercenarios de mayor prestigio del Ejército de Freeza, la cual lleva el nombre de Fuerzas Especiales Ginew en su honor[9].","image":"https://dragonball-api.com/characters/ginyu.webp","affiliation":"Army of Frieza","deletedAt":null},{"id":9,"name":"Celula","ki":"250.000.000","maxKi":"5 Billion","race":"Android","gender":"Male","description":"Cell conocido como Célula en España, es un bioandroide creado por la computadora del Dr. Gero, quien vino del futuro de la línea 3 con la intención de vengarse de Goku por haber acabado con el Ejército del Listón Rojo, y con ello el sueño de todo villano: dominar el mundo. Es el antagonista principal del Arco de los Androides y Cell.","image":"https://dragonball-api.com/characters/celula.webp","affiliation":"Freelancer","deletedAt":null},{"id":10,"name":"Gohan","ki":"45.000.000","maxKi":"40 septillion","race":"Saiyan","gender":"Male","description":"Son Gohanda en su tiempo en España, o simplemente Gohan en Hispanoamérica, es uno de los personajes principales de los arcos argumentales de Dragon Ball Z, Dragon Ball Super y Dragon Ball GT. Es un mestizo entre saiyano y humano terrícola. Es el primer hijo de Son Goku y Chi-Chi, hermano mayor de Son Goten, esposo de Videl y padre de Pan.","image":"https://dragonball-api.com/characters/gohan.webp","affiliation":"Z Fighter","deletedAt":null}]
/// meta : {"totalItems":58,"itemCount":10,"itemsPerPage":10,"totalPages":6,"currentPage":1}
/// links : {"first":"https://dragonball-api.com/api/characters?limit=10","previous":"","next":"https://dragonball-api.com/api/characters?page=2&limit=10","last":"https://dragonball-api.com/api/characters?page=6&limit=10"}

class DragonballModel {
  DragonballModel({
      List<Items>? items, 
      Meta? meta, 
      Links? links,}){
    _items = items;
    _meta = meta;
    _links = links;
}

  DragonballModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  List<Items>? _items;
  Meta? _meta;
  Links? _links;
DragonballModel copyWith({  List<Items>? items,
  Meta? meta,
  Links? links,
}) => DragonballModel(  items: items ?? _items,
  meta: meta ?? _meta,
  links: links ?? _links,
);
  List<Items>? get items => _items;
  Meta? get meta => _meta;
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

/// first : "https://dragonball-api.com/api/characters?limit=10"
/// previous : ""
/// next : "https://dragonball-api.com/api/characters?page=2&limit=10"
/// last : "https://dragonball-api.com/api/characters?page=6&limit=10"

class Links {
  Links({
      String? first, 
      String? previous, 
      String? next, 
      String? last,}){
    _first = first;
    _previous = previous;
    _next = next;
    _last = last;
}

  Links.fromJson(dynamic json) {
    _first = json['first'];
    _previous = json['previous'];
    _next = json['next'];
    _last = json['last'];
  }
  String? _first;
  String? _previous;
  String? _next;
  String? _last;
Links copyWith({  String? first,
  String? previous,
  String? next,
  String? last,
}) => Links(  first: first ?? _first,
  previous: previous ?? _previous,
  next: next ?? _next,
  last: last ?? _last,
);
  String? get first => _first;
  String? get previous => _previous;
  String? get next => _next;
  String? get last => _last;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first'] = _first;
    map['previous'] = _previous;
    map['next'] = _next;
    map['last'] = _last;
    return map;
  }

}

/// totalItems : 58
/// itemCount : 10
/// itemsPerPage : 10
/// totalPages : 6
/// currentPage : 1

class Meta {
  Meta({
      num? totalItems, 
      num? itemCount, 
      num? itemsPerPage, 
      num? totalPages, 
      num? currentPage,}){
    _totalItems = totalItems;
    _itemCount = itemCount;
    _itemsPerPage = itemsPerPage;
    _totalPages = totalPages;
    _currentPage = currentPage;
}

  Meta.fromJson(dynamic json) {
    _totalItems = json['totalItems'];
    _itemCount = json['itemCount'];
    _itemsPerPage = json['itemsPerPage'];
    _totalPages = json['totalPages'];
    _currentPage = json['currentPage'];
  }
  num? _totalItems;
  num? _itemCount;
  num? _itemsPerPage;
  num? _totalPages;
  num? _currentPage;
Meta copyWith({  num? totalItems,
  num? itemCount,
  num? itemsPerPage,
  num? totalPages,
  num? currentPage,
}) => Meta(  totalItems: totalItems ?? _totalItems,
  itemCount: itemCount ?? _itemCount,
  itemsPerPage: itemsPerPage ?? _itemsPerPage,
  totalPages: totalPages ?? _totalPages,
  currentPage: currentPage ?? _currentPage,
);
  num? get totalItems => _totalItems;
  num? get itemCount => _itemCount;
  num? get itemsPerPage => _itemsPerPage;
  num? get totalPages => _totalPages;
  num? get currentPage => _currentPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalItems'] = _totalItems;
    map['itemCount'] = _itemCount;
    map['itemsPerPage'] = _itemsPerPage;
    map['totalPages'] = _totalPages;
    map['currentPage'] = _currentPage;
    return map;
  }

}

/// id : 1
/// name : "Goku"
/// ki : "60.000.000"
/// maxKi : "90 Septillion"
/// race : "Saiyan"
/// gender : "Male"
/// description : "El protagonista de la serie, conocido por su gran poder y personalidad amigable. Originalmente enviado a la Tierra como un infante volador con la misión de conquistarla. Sin embargo, el caer por un barranco le proporcionó un brutal golpe que si bien casi lo mata, este alteró su memoria y anuló todos los instintos violentos de su especie, lo que lo hizo crecer con un corazón puro y bondadoso, pero conservando todos los poderes de su raza. No obstante, en la nueva continuidad de Dragon Ball se establece que él fue enviado por sus padres a la Tierra con el objetivo de sobrevivir a toda costa a la destrucción de su planeta por parte de Freeza. Más tarde, Kakarot, ahora conocido como Son Goku, se convertiría en el príncipe consorte del monte Fry-pan y líder de los Guerreros Z, así como el mayor defensor de la Tierra y del Universo 7, logrando mantenerlos a salvo de la destrucción en innumerables ocasiones, a pesar de no considerarse a sí mismo como un héroe o salvador."
/// image : "https://dragonball-api.com/characters/goku_normal.webp"
/// affiliation : "Z Fighter"
/// deletedAt : null

class Items {
  Items({
      num? id, 
      String? name, 
      String? ki, 
      String? maxKi, 
      String? race, 
      String? gender, 
      String? description, 
      String? image, 
      String? affiliation, 
      dynamic deletedAt,}){
    _id = id;
    _name = name;
    _ki = ki;
    _maxKi = maxKi;
    _race = race;
    _gender = gender;
    _description = description;
    _image = image;
    _affiliation = affiliation;
    _deletedAt = deletedAt;
}

  Items.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _ki = json['ki'];
    _maxKi = json['maxKi'];
    _race = json['race'];
    _gender = json['gender'];
    _description = json['description'];
    _image = json['image'];
    _affiliation = json['affiliation'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  String? _name;
  String? _ki;
  String? _maxKi;
  String? _race;
  String? _gender;
  String? _description;
  String? _image;
  String? _affiliation;
  dynamic _deletedAt;
Items copyWith({  num? id,
  String? name,
  String? ki,
  String? maxKi,
  String? race,
  String? gender,
  String? description,
  String? image,
  String? affiliation,
  dynamic deletedAt,
}) => Items(  id: id ?? _id,
  name: name ?? _name,
  ki: ki ?? _ki,
  maxKi: maxKi ?? _maxKi,
  race: race ?? _race,
  gender: gender ?? _gender,
  description: description ?? _description,
  image: image ?? _image,
  affiliation: affiliation ?? _affiliation,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  String? get name => _name;
  String? get ki => _ki;
  String? get maxKi => _maxKi;
  String? get race => _race;
  String? get gender => _gender;
  String? get description => _description;
  String? get image => _image;
  String? get affiliation => _affiliation;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['ki'] = _ki;
    map['maxKi'] = _maxKi;
    map['race'] = _race;
    map['gender'] = _gender;
    map['description'] = _description;
    map['image'] = _image;
    map['affiliation'] = _affiliation;
    map['deletedAt'] = _deletedAt;
    return map;
  }

}