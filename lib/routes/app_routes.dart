import 'package:flutter/material.dart';
import 'package:clean_egypt/presentation/logo_screen/logo_screen.dart';
import 'package:clean_egypt/presentation/first_screen/first_screen.dart';
import 'package:clean_egypt/presentation/sceond_screen/sceond_screen.dart';
import 'package:clean_egypt/presentation/third_screen/third_screen.dart';
import 'package:clean_egypt/presentation/log_in_screen/log_in_screen.dart';
import 'package:clean_egypt/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:clean_egypt/presentation/send_code_screen/send_code_screen.dart';
import 'package:clean_egypt/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:clean_egypt/presentation/forgot_password_successful_screen/forgot_password_successful_screen.dart';
import 'package:clean_egypt/presentation/create_account_screen/create_account_screen.dart';
import 'package:clean_egypt/presentation/verfiy_screen/verfiy_screen.dart';
import 'package:clean_egypt/presentation/complete_your_profile_screen/complete_your_profile_screen.dart';
import 'package:clean_egypt/presentation/add_manually_location_screen/add_manually_location_screen.dart';
import 'package:clean_egypt/presentation/location_access_screen/location_access_screen.dart';
import 'package:clean_egypt/presentation/map_pin_screen/map_pin_screen.dart';
import 'package:clean_egypt/presentation/full_screen/full_screen.dart';
import 'package:clean_egypt/presentation/scanner_screen/scanner_screen.dart';
import 'package:clean_egypt/presentation/complain_screen/complain_screen.dart';
import 'package:clean_egypt/presentation/uploaded_screen/uploaded_screen.dart';
import 'package:clean_egypt/presentation/notification_screen/notification_screen.dart';
import 'package:clean_egypt/presentation/profile_screen/profile_screen.dart';
import 'package:clean_egypt/presentation/update_profile_screen/update_profile_screen.dart';
import 'package:clean_egypt/presentation/refer_earn_screen/refer_earn_screen.dart';
import 'package:clean_egypt/presentation/view_earnings_screen/view_earnings_screen.dart';
import 'package:clean_egypt/presentation/my_impact_screen/my_impact_screen.dart';
import 'package:clean_egypt/presentation/settings_screen/settings_screen.dart';
import 'package:clean_egypt/presentation/change_password_screen/change_password_screen.dart';
import 'package:clean_egypt/presentation/delete_account_screen/delete_account_screen.dart';
import 'package:clean_egypt/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:clean_egypt/presentation/help_faq_tab_container_screen/help_faq_tab_container_screen.dart';
import 'package:clean_egypt/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:clean_egypt/presentation/reward_screen/reward_screen.dart';
import 'package:clean_egypt/presentation/coupon_screen/coupon_screen.dart';
import 'package:clean_egypt/presentation/event_container_screen/event_container_screen.dart';
import 'package:clean_egypt/presentation/detail_screen/detail_screen.dart';
import 'package:clean_egypt/presentation/remove_event_screen/remove_event_screen.dart';
import 'package:clean_egypt/presentation/favorite_screen/favorite_screen.dart';
import 'package:clean_egypt/presentation/rank_screen/rank_screen.dart';
import 'package:clean_egypt/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String firstScreen = '/first_screen';

  static const String sceondScreen = '/sceond_screen';

  static const String thirdScreen = '/third_screen';

  static const String logInScreen = '/log_in_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String sendCodeScreen = '/send_code_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String forgotPasswordSuccessfulScreen =
      '/forgot_password_successful_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String verfiyScreen = '/verfiy_screen';

  static const String completeYourProfileScreen =
      '/complete_your_profile_screen';

  static const String addManuallyLocationScreen =
      '/add_manually_location_screen';

  static const String locationAccessScreen = '/location_access_screen';

  static const String mapPinScreen = '/map_pin_screen';

  static const String fullScreen = '/full_screen';

  static const String scannerScreen = '/scanner_screen';

  static const String complainScreen = '/complain_screen';

  static const String uploadedScreen = '/uploaded_screen';

  static const String notificationScreen = '/notification_screen';

  static const String profileScreen = '/profile_screen';

  static const String updateProfileScreen = '/update_profile_screen';

  static const String referEarnScreen = '/refer_earn_screen';

  static const String viewEarningsScreen = '/view_earnings_screen';

  static const String myImpactScreen = '/my_impact_screen';

  static const String settingsScreen = '/settings_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String deleteAccountScreen = '/delete_account_screen';

  static const String helpContactUsPage = '/help_contact_us_page';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String helpFaqPage = '/help_faq_page';

  static const String helpFaqTabContainerScreen =
      '/help_faq_tab_container_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String rewardScreen = '/reward_screen';

  static const String couponScreen = '/coupon_screen';

  static const String eventPage = '/event_page';

  static const String eventContainerScreen = '/event_container_screen';

  static const String detailScreen = '/detail_screen';

  static const String removeEventScreen = '/remove_event_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String rankScreen = '/rank_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        logoScreen: LogoScreen.builder,
        firstScreen: FirstScreen.builder,
        sceondScreen: SceondScreen.builder,
        thirdScreen: ThirdScreen.builder,
        logInScreen: LogInScreen.builder,
        confirmationScreen: ConfirmationScreen.builder,
        sendCodeScreen: SendCodeScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        forgotPasswordSuccessfulScreen: ForgotPasswordSuccessfulScreen.builder,
        createAccountScreen: CreateAccountScreen.builder,
        verfiyScreen: VerfiyScreen.builder,
        completeYourProfileScreen: CompleteYourProfileScreen.builder,
        addManuallyLocationScreen: AddManuallyLocationScreen.builder,
        locationAccessScreen: LocationAccessScreen.builder,
        mapPinScreen: MapPinScreen.builder,
        fullScreen: FullScreen.builder,
        scannerScreen: ScannerScreen.builder,
        complainScreen: ComplainScreen.builder,
        uploadedScreen: UploadedScreen.builder,
        notificationScreen: NotificationScreen.builder,
        profileScreen: ProfileScreen.builder,
        updateProfileScreen: UpdateProfileScreen.builder,
        referEarnScreen: ReferEarnScreen.builder,
        viewEarningsScreen: ViewEarningsScreen.builder,
        myImpactScreen: MyImpactScreen.builder,
        settingsScreen: SettingsScreen.builder,
        changePasswordScreen: ChangePasswordScreen.builder,
        deleteAccountScreen: DeleteAccountScreen.builder,
        notificationSettingsScreen: NotificationSettingsScreen.builder,
        helpFaqTabContainerScreen: HelpFaqTabContainerScreen.builder,
        privacyPolicyScreen: PrivacyPolicyScreen.builder,
        rewardScreen: RewardScreen.builder,
        couponScreen: CouponScreen.builder,
        eventContainerScreen: EventContainerScreen.builder,
        detailScreen: DetailScreen.builder,
        removeEventScreen: RemoveEventScreen.builder,
        favoriteScreen: FavoriteScreen.builder,
        rankScreen: RankScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LogoScreen.builder
      };
}
