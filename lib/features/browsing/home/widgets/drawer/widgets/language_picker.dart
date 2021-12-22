import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';

class LanguagePicker extends StatelessWidget {
  const LanguagePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 34),
      title: Text(
        AppLocalizations.of(context)!.language,
        style: const TextStyle(
          color: AppColors.gray,
          fontSize: 16,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: AppColors.gray,
        size: 16,
      ),
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return Consumer(
            builder: (_, ref, __) {
              return AlertDialog(
                title: Text(AppLocalizations.of(context)!.change_app_lang),
                actionsAlignment: MainAxisAlignment.center,
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      const english = Locale('en');
                      ref.watch(localeProvider.notifier).locale = english;
                      Navigator.pop(context);
                    },
                    child: const Text("English"),
                  ),
                  TextButton(
                    onPressed: () {
                      const arabic = Locale('ar');
                      ref.watch(localeProvider.notifier).locale = arabic;
                      Navigator.pop(context);
                    },
                    child: const Text("العربيّة"),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
