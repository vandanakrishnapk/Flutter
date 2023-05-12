void main()
{
 Map json = {
 "data": [
 {
 "id": 1,
 "name": "cerulean",
 "year": 2000,
 "color": "#98B2D1",
 "pantone_value": "15-4020"
 },
 {
 "id": 2,
 "name": "fuchsia rose",
 "year": 2001,
 "color": "#C74375",
 "pantone_value": "17-2031"
 },
 ],
 "support"
  : {
"url": "https://reqres.in/#support-heading",
"text": "To keep ReqRes free, contributions towards server costs are appreciated!",
}
};
 (json['data'] as List).forEach((element) {
   print(element['name']);
   print(element['year']);
 });
}