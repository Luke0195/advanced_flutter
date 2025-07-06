import 'package:flutter_test/flutter_test.dart';

class NextEventPlayer {
  final String id;
  final String name;
  final String? photo;
  final String? position;
  final bool isConfirmed;
  final DateTime? confirmationDate;

  const NextEventPlayer({
    required this.id,
    required this.name,
    required this.isConfirmed,
    this.photo,
    this.position,
    this.confirmationDate,
  });

  String getInitials(){
    final  names = name.split(' ');
    final firstChar = names.first[0];
    final lastChar = names.last[0];
    return '$firstChar$lastChar';
  }
}

void main() {
  
  NextEventPlayer makeSut(String name) =>  NextEventPlayer(id: '',name: name ,isConfirmed: true);
  test('should returns the first letter of the first and last name', () {

    expect( makeSut('Lucas Santos').getInitials(), equals('LS'));
    expect(makeSut('Paulo Lima').getInitials(), equals('PL'));
    expect(makeSut('Ingrid Mota da Silva').getInitials(), equals('IS'));


  });
}
