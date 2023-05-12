void main() {
  Map json = {
    "data": {
      "id": 2,
      "email": "janet.weaver@reqres.in",
      "first_name": "Janet",
      "last_name": "Weaver",
      "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "support": {
      "url": "https://reqres.in/#support-heading",
      "text":
          "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
  };

  Map anotherJson={
    "page": 2,
    "per_page": 6,
    "total": 12,
    "total_pages": 2,
    "data": [
      {
        "id": 7,
        "email": "michael.lawson@reqres.in",
        "first_name": "Michael",
        "last_name": "Lawson",
        "avatar": "https://reqres.in/img/faces/7-image.jpg"
      },
      {
        "id": 8,
        "email": "lindsay.ferguson@reqres.in",
        "first_name": "Lindsay",
        "last_name": "Ferguson",
        "avatar": "https://reqres.in/img/faces/8-image.jpg"
      },

    ],
    "support": {
      "url": "https://reqres.in/#support-heading",
      "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
  };

  (anotherJson['data'] as List).forEach((element) {
    print(element['first_name']);
  });
}
