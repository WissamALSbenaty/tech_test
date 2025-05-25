import 'package:fintech/core/presentation/widgets/custom_sized_box.dart';
import 'package:fintech/core/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEmptyView extends StatelessWidget {

  final String? errorMessage;
  final (String,bool,void Function())? helperButton;

  const CustomEmptyView({required this.errorMessage,required this.helperButton, super.key});

  @override
  Widget build(final BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => helperButton?.$3(),
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 512.h,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(errorMessage??'',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall!,
                )),
                const CustomSizedBox(
                  height: 16,
                ),
                if (helperButton != null)
                  Center(
                    child: MainButton(
                        title: helperButton!.$1,
                        isLoading: helperButton!.$2,
                        onPressed: helperButton!.$3),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
