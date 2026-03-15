import 'package:get_it/get_it.dart';
import 'package:test1/core/network/api_service.dart';
import 'package:test1/core/network/dio_client.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dioClient: DioClient()));
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(apiService: getIt.get<ApiService>()),
  );
}
