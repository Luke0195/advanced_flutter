import 'package:flutter_test/flutter_test.dart';

class NextEventPlayer {
  final String id;
  final String name;
  final String initials;
  final String? photo;
  final String? position;
  final bool isConfirmed;
  final DateTime? confirmationDate;


  NextEventPlayer._({
    required this.id,
    required this.name,
    required this.initials,
    required this.isConfirmed,
    this.photo,
    this.position,
    this.confirmationDate,
  });

  factory NextEventPlayer({
    required String id,
    required String name,
    required bool isConfirmed,
    
    String? photo,
    String? position,
    DateTime? confirmationDate,
  }) => NextEventPlayer._(id: id, name: name, isConfirmed: isConfirmed, initials: _getInitials(name), photo: photo, position: position, confirmationDate: confirmationDate, );

  static String _getInitials(String name){
    final  names = name.toUpperCase().split(' ');
    final firstChar = names.first[0];
    final lastChar = names.last.split('').elementAtOrNull(names.length == 1 ? 1 : 0) ?? '';
    
    return '$firstChar$lastChar';
  }
}

void main() {
  
  String initialsOf(String name) =>  NextEventPlayer(id: '',name: name ,isConfirmed: true).initials;
  test('should returns the first letter of the first and last name', () {
    expect(initialsOf('lucas santos'),equals('LS'));
    expect(initialsOf('paulo lima'), equals('PL'));
    expect(initialsOf('ingrid mota da silva'),equals('IS'));
  });

  test('should returns the first letters of the first name', (){
    expect(initialsOf('lucas'), equals('LU'));
  });

  test('should convert to uppercase', (){
    expect(initialsOf('lucas'), equals('LU'));
  });

  test('should returns an first letter if name has only one letter', (){
    expect(initialsOf('l'), equals('L'));
  });
}
