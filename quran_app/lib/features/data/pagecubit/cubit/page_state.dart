part of 'page_cubit.dart';

@immutable
sealed class PageState {}

final class PageInitial extends PageState {}
final class PageZoom extends PageState {}
final class endzoom extends PageState {}
final class TapSwitch extends PageState {}