import 'package:test/test.dart';

main() {
  // TODO: cara rekursive
  bool isPalindromRecursive(String value, int index) {
    if (index < value.length / 2) {
      // int indexAwal = index;
      // int indexAkhir = value.length - index - 1;

      // print("${value[indexAwal]} : ${value[indexAkhir]}");
      if (value[index] != value[value.length - index - 1]) {
        return false;
      } else {
        return isPalindromRecursive(value, index + 1);
      }
    } else {
      return true;
    }
  }

  bool isPalindrome(String value) {
    // TODO: Dengan cara simpan ke variabel lain
    // String temp = "";

    // for (var i = value.length - 1; i >= 0; i--) {
    //   // print(value[i]);
    //   temp = temp + value[i];
    // }
    // return temp == value;

    // TODO: cara looping tanpa varibel baru
    // for (var i = 0; i < value.length / 2; i++) {
    //   int indexAwal = i;
    //   int indexAkhir = value.length - i - 1;

    //   print("${value[indexAwal]} : ${value[indexAkhir]}");
    //   if (value[indexAwal] != value[indexAkhir]) {
    //     return false;
    //   }
    // }

    // return true;

    // TODO: cara rekursif
    return isPalindromRecursive(value, 0);
  }

  test("expected true", () {
    // arrange
    String value = "kodok";

    // act
    // bool isPalin = isPalindrome(value);
    bool isPalin = isPalindrome(value);

    // expect
    expect(isPalin, true);
  });
  test("expected false", () {
    // arrange
    String value = "Denny";

    // act
    // bool isPalin = isPalindrome(value);
    bool isPalin = isPalindrome(value);

    // expect
    expect(isPalin, false);
  });

  // test("expected palindrome", () {
  //   // arrange
  //   String value = "aba";

  //   // act

  //   bool isPalin = isPalindrome(value);

  //   // assert
  //   expect(isPalin, true);
  // });
}
