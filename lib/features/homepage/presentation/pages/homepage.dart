import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/homepage/presentation/bloc/homepage_bloc.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/loaded_homepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  static const String routeName = CommonConstants.homepageRouteName;
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomepageBloc>(context).add(const GetHomepageDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageBloc, HomepageState>(
      builder: (context, state) {
        if (state is LoadingHomepageState) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        } else if (state is LoadedHomepageDataState) {
          return LoadedHomePage(homepageData: state.response);
        } else if (state is ErrorHomepageState) {
          return Container(
            height: 300,
            color: AppColors.walletCardColor,
          );
        }
        return Container();
      },
    );
  }
}
