import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/get_it/service_locator.dart';
import 'package:misk/features/arrows/presentation/views/arrows_view.dart';
import 'package:misk/features/coins_box/presentation/views/coins_box_view.dart';
import 'package:misk/features/display_doaa/presentation/views/display_doaa_view.dart';
import 'package:misk/features/display_hadith/presentation/views/display_hadith_view.dart';
import 'package:misk/features/display_remembrances/presentation/views/display_remembrances_view.dart';
import 'package:misk/features/doaa/presentation/views/doaa_view.dart';
import 'package:misk/features/gold/data/repositories/gold_repositories_implementation.dart';
import 'package:misk/features/gold/presentation/cubits/gold_carats_cubit/gold_carats_cubit.dart';
import 'package:misk/features/gold/presentation/views/gold_view.dart';
import 'package:misk/features/hadith/presentation/views/hadith_view.dart';
import 'package:misk/features/home/domain/repositories/views/home_view.dart';
import 'package:misk/features/money/presentation/views/money_view.dart';
import 'package:misk/features/on_boarding1/presentation/views/on_boarding1_view.dart';
import 'package:misk/features/on_boarding2/domain/use_case/views/on_boarding2_view.dart';
import 'package:misk/features/qibla/presentation/views/qibla_view.dart';
import 'package:misk/features/quran/presentation/cubits/quran_audio_cubit/quran_audio_cubit.dart';
import 'package:misk/features/quran/presentation/cubits/quran_text_cubit/quran_text_cubit.dart';
import 'package:misk/features/quran/presentation/views/quran_view.dart';
import 'package:misk/features/remembrances/presentation/views/remembrances_view.dart';
import 'package:misk/features/rosary/presentation/views/rosary_view.dart';
import 'package:misk/features/silver/data/repositories/silver_repositories_implementation.dart';
import 'package:misk/features/silver/presentation/cubits/silver_cubit/silver_cubit.dart';
import 'package:misk/features/silver/presentation/views/silver_view.dart';
import 'package:misk/features/splash/presentation/views/splash_view.dart';
import 'package:misk/features/zakat_calculate/presentation/views/zakat_calculate_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashViewRouter,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOneBoarding1ViewRouter,
        builder: (context, state) => const OnBoarding1View(),
      ),
      GoRoute(
        path: kOnBoarding2ViewRouter,
        builder: (context, state) => const OnBoarding2View(),
      ),
      GoRoute(
        path: kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kQuranViewRouter,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  QuranTextCubit()..getOnSurahTextMethodInCubit(surahNumber: 1),
            ),
            BlocProvider(create: (context) => QuranAudioCubit()),
          ],
          child: const QuranView(),
        ),
      ),
      GoRoute(
        path: kHadithViewRouter,
        builder: (context, state) => const HadithView(),
      ),
      GoRoute(
        path: kRemembrancesViewRouter,
        builder: (context, state) => const RemembrancesView(),
      ),
      GoRoute(
        path: kDoaaViewRouter,
        builder: (context, state) => const DoaaView(),
      ),
      GoRoute(
        path: kZakatCalculateViewRouter,
        builder: (context, state) => const ZakatCalculateView(),
      ),
      GoRoute(
        path: kQiblaViewRouter,
        builder: (context, state) => const QiblaView(),
      ),
      GoRoute(
        path: kRosaryViewRouter,
        builder: (context, state) => const RosaryView(),
      ),
      GoRoute(
        path: kDisplayRemembrancesViewRouter,
        builder: (context, state) => const DisplayRemembrancesView(),
      ),
      GoRoute(
        path: kDisplayHadithViewRouter,
        builder: (context, state) => const DisplayHadithView(),
      ),
      GoRoute(
        path: kDisplayDoaaViewRouter,
        builder: (context, state) => const DisplayDoaaView(),
      ),
      GoRoute(
        path: kMoneyViewRouter,
        builder: (context, state) => const MoneyView(),
      ),
      GoRoute(
        path: kGoldViewRouter,
        builder: (context, state) => BlocProvider(
          create: (context) => GoldCaratsCubit(
            goldRepositoriesImplementation: getIt
                .get<GoldRepositoriesImplementation>(),
          )..getGoldCaratsPricesMethodInCubit(),
          child: const GoldView(),
        ),
      ),
      GoRoute(
        path: kCoinsBoxViewRouter,
        builder: (context, state) => const CoinsBoxView(),
      ),
      GoRoute(
        path: kArrowsViewRouter,
        builder: (context, state) => const ArrowsView(),
      ),
      GoRoute(
        path: kSilverViewRouter,
        builder: (context, state) => BlocProvider(
          create: (context) => SilverCubit(
            silverRepositoriesImplementation: getIt
                .get<SilverRepositoriesImplementation>(),
          )..getPriceGramSilverInCubitMethod(),
          child: const SilverView(),
        ),
      ),
    ],
  );
}
