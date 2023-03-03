import 'dart:io';

import 'package:alfred/alfred.dart';

void main() async {
  final app = Alfred();

  app.get('/example', (req, res) => 'Hello world');
  app.get('/upload/*', (req, res) => Directory('./upload'));
  app.post('/upload/*', (req, res) => Directory('./upload'));
  app.delete('/upload/*', (req, res) => Directory('./upload'));
  await app.listen(4040);
}
