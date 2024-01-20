import 'bloc/event_container_bloc.dart';import 'models/event_container_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/presentation/event_page/event_page.dart';import 'package:clean_egypt/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class EventContainerScreen extends StatelessWidget {EventContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<EventContainerBloc>(create: (context) => EventContainerBloc(EventContainerState(eventContainerModelObj: EventContainerModel()))..add(EventContainerInitialEvent()), child: EventContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<EventContainerBloc, EventContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.eventPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Thumbsup: return AppRoutes.eventPage; case BottomBarEnum.Linkedinwhitea70001: return "/"; case BottomBarEnum.Contrastwhitea70001: return "/"; case BottomBarEnum.Lockwhitea70001: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.eventPage: return EventPage(); default: return DefaultWidget();} } 
 }
