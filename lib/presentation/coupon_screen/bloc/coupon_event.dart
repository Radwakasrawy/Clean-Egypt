// ignore_for_file: must_be_immutable

part of 'coupon_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Coupon widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CouponEvent extends Equatable {}

/// Event that is dispatched when the Coupon widget is first created.
class CouponInitialEvent extends CouponEvent {
  @override
  List<Object?> get props => [];
}
