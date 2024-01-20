// ignore_for_file: must_be_immutable

part of 'coupon_bloc.dart';

/// Represents the state of Coupon in the application.
class CouponState extends Equatable {
  CouponState({this.couponModelObj});

  CouponModel? couponModelObj;

  @override
  List<Object?> get props => [
        couponModelObj,
      ];
  CouponState copyWith({CouponModel? couponModelObj}) {
    return CouponState(
      couponModelObj: couponModelObj ?? this.couponModelObj,
    );
  }
}
