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
  test('should returns the first letter of the first and last name', () {
    final player = NextEventPlayer(
      id: '',
      name: 'Lucas Santos',
      isConfirmed: true,
    );
    expect(player.getInitials(), equals('LS'));

    final player2 = NextEventPlayer(id: '', name: 'Paulo Lima', isConfirmed: false);
    expect(player2.getInitials(), equals('PL'));


  });
}
