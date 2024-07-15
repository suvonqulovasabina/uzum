extension StringExtension on String {
  // String to money format
  String toValue() {
    List<String> parts = double.parse(this).toStringAsFixed(0).split('.');
    String integerPartReversed = parts[0].split('').reversed.join('');
    String formattedReversed = integerPartReversed.replaceAllMapped(RegExp(r'.{3}'), (match) => '${match[0]} ');
    String formatted = formattedReversed.split('').reversed.join('').trim();

    return formatted;
  }

  String toPhoneNumber() {
    if (length != 13 || !startsWith('+998')) return this;

    final ls = split('').toList();
    final spaceIndexes = [4, 6 + 1, 9 + 2, 11 + 3];
    for (final index in spaceIndexes) {
      ls.insert(index, ' ');
    }
    return ls.join();
  }


  String hideCardNumbers() {
    var cardNumbers = this;
    var newStr = "";
    if (cardNumbers.length == 16) {
      newStr += cardNumbers.substring(0, 4);
      newStr += " ";
      newStr += cardNumbers.substring(4, 6);
      newStr += "** ";
      newStr += "**** ";
      newStr += cardNumbers.substring(12);
    }
    return newStr;
  }

}