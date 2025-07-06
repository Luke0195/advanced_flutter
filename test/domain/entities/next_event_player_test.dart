import 'package:advanced_flutter/domain/entities/next_event_player.dart';

import 'package:flutter_test/flutter_test.dart';


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

  test('should return "-" when name is empty', ()async{
    expect(initialsOf(''), equals('-'));
  });

  test('should ignore extra withspaces', (){
    expect(initialsOf(' Lucas Santos'), equals('LS'));
    expect(initialsOf('Lucas Santos '), equals('LS'));
    expect(initialsOf(' Lucas Santos '), equals('LS'));
    expect(initialsOf('R '), equals('R'));
    expect(initialsOf(' R '), equals('R'));
    expect(initialsOf('   '), equals('-'));
  });
}
