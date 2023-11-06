import 'package:flutter/material.dart';
import 'package:flutter_theming_code_along/presentation/core/asset_paths.dart';
import 'package:flutter_theming_code_along/presentation/core/theme/app_colors.dart';
import 'package:flutter_theming_code_along/presentation/core/widgets/check_badge.dart';
import 'package:flutter_theming_code_along/presentation/profile/custom_icon.dart';
import 'package:flutter_theming_code_along/presentation/profile/profile_picture.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CustomIcon(
                  onTap: () {
                    // change theme
                  },
                  icon: Icons.light_mode,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CustomIcon(
                  onTap: () {
                    //set theme
                  },
                  icon: Icons.close,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: ProfilePicture(
                  isBorder: true,
                  profilePicturePath: AssetPaths.onlineProfilePicture,
                  borderWidth: 2,
                  innerPadding: 12,
                  innerColor: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@Ricky Smith',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 16,
              ),
              const CheckBadge(
                size: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _ProfileItem(
                  icon: Icons.question_answer,
                  text: 'Message',
                  amount: '10 cpm',
                ),
                _ProfileItem(
                  icon: Icons.call,
                  text: 'Call',
                  amount: '80 cpm',
                ),
                _ProfileItem(
                  icon: Icons.videocam,
                  text: 'Video Call',
                  amount: '100 cpm',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Notes: ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'It is a sad world we live in!',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  const _ProfileItem({
    required this.icon,
    required this.text,
    required this.amount,
  });

  final IconData icon;
  final String text, amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppColors.disabledIcon,
          size: 35,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(text),
        const SizedBox(
          height: 8,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(amount),
        ),
      ],
    );
  }
}
