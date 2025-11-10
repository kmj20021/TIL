void main() {
  const int width = 10;
  const int height = 10;

  print('-' * width);

  for (int i = 0; i < height - 2; i++) {
    String line = '|';

    for (int j = 0; j < width - 2; j++) {
      if (i == j || i + j == width - 3) {
        line += 'X';
      } else {
        line += ' ';
      }
    }

    line += '|';
    print(line);
  }

  print('-' * width);
}
