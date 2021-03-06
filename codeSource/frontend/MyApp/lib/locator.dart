import 'package:get_it/get_it.dart';

import 'package:MyApp/core/repositories/socket_repo.dart';
import 'package:MyApp/core/repositories/agency_repo.dart';
import 'package:MyApp/core/repositories/authentication_repo.dart';
import 'package:MyApp/core/repositories/network_image_repo.dart';
import 'package:MyApp/core/repositories/employee_repo.dart';
import 'package:MyApp/core/repositories/publications_repo/pub_utility_repo.dart';
import 'package:MyApp/core/repositories/publications_repo/pub_settings_repo.dart';
import 'package:MyApp/core/repositories/publications_repo/pub_reactions_repo.dart';
import 'package:MyApp/core/repositories/publications_repo/pub_global_repo.dart';
import 'package:MyApp/core/repositories/notifications_repo/notifications_repo.dart';
import 'package:MyApp/core/repositories/chat_repo.dart';

import 'package:MyApp/core/services/socket_service.dart';
import 'package:MyApp/core/services/agency_service.dart';
import 'package:MyApp/core/services/authentication_service.dart';
import 'package:MyApp/core/services/network_image_service.dart';
import 'package:MyApp/core/services/employee_service.dart';
import 'package:MyApp/core/services/map_service.dart';
import 'package:MyApp/core/services/publication_service/pub_global_Src.dart';
import 'package:MyApp/core/services/publication_service/pub_reactions_Src.dart';
import 'package:MyApp/core/services/publication_service/pub_settings_Src.dart';
import 'package:MyApp/core/services/chat_service.dart';
import 'package:MyApp/core/services/messages_service.dart';
import 'package:MyApp/core/services/chat_users_service.dart';
import 'package:MyApp/core/services/notificationsService.dart';

import 'package:MyApp/core/viewmodels/home_model.dart';
import 'package:MyApp/core/viewmodels/login_model.dart';
import 'package:MyApp/core/viewmodels/agency_model.dart';
import 'package:MyApp/core/viewmodels/network_image_model.dart';
import 'package:MyApp/core/viewmodels/profil_model.dart';
import 'package:MyApp/core/viewmodels/to_post_model.dart';
import 'package:MyApp/core/viewmodels/map_model.dart';
import 'package:MyApp/core/viewmodels/chat_model.dart';
import 'package:MyApp/core/viewmodels/chat_users_model.dart';
import 'package:MyApp/core/viewmodels/messages_model.dart';
import 'package:MyApp/core/viewmodels/notification_models/notification_model.dart';
import 'package:MyApp/core/viewmodels/publication_models/post_single_model.dart';
import 'package:MyApp/core/viewmodels/notification_models/notification_single_model.dart';



GetIt locator = GetIt.instance;

void setupLocator() {

  locator.registerLazySingleton(() => SocketRepo());
  locator.registerLazySingleton(() => AuthenticationRepo());
  locator.registerLazySingleton(() => AgencyRepo());
  locator.registerLazySingleton(() => NetworkImageRepo());
  locator.registerLazySingleton(() => EmployeeRepo());
  locator.registerLazySingleton(() => NotificationRepo());
  locator.registerLazySingleton(() => ChatRepo());
  
  locator.registerLazySingleton(() => PubUtilityRepo());
  locator.registerLazySingleton(() => PublicationGlobalRepo());
  locator.registerLazySingleton(() => PublicationReactionsRepo());
  locator.registerLazySingleton(() => PublicationSettingsRepo());



  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => AgencyService());
  locator.registerLazySingleton(() => NetworkImageService());
  locator.registerLazySingleton(() => EmployeeService());
  locator.registerLazySingleton(() => MapService());
  locator.registerLazySingleton(() => ChatUsersService());
  locator.registerLazySingleton(() => SocketService());
  locator.registerLazySingleton(() => ChatService());
  locator.registerLazySingleton(() => MessagesService());
  locator.registerLazySingleton(() => PublicationReactionsService());
  locator.registerLazySingleton(() => PublicationSettingService());
  locator.registerLazySingleton(() => PublicationGlobalService());
  locator.registerLazySingleton(() => NotificationService());



  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => AgencyModel());
  locator.registerFactory(() => NetworkImageModel());
  locator.registerFactory(() => ProfilModel());
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => ToPostModel());
  locator.registerFactory(() => MapModel());
  locator.registerFactory(() => ChatUsersModel());
  locator.registerFactory(() => ChatModel());
  locator.registerFactory(() => MessagesModel());
  locator.registerFactory(() => SinglePostModel());

  locator.registerFactory(() => NotificationModel());
  locator.registerFactory(() => SingleNotificationModel());

}