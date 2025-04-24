import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:webspark_test/features/main_screen/bloc/main_cubit.dart';
import 'package:webspark_test/widgets/widgets.dart';
import 'package:webspark_test/app/route/route.dart';

import '../extensions/extensions.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  bool isValidUrl(String input) {
    final uri = Uri.tryParse(input);
    return uri != null && uri.hasScheme && uri.host.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<MainCubit, MainState>(
      builder: (BuildContext context, MainState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home Screen'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Set valid API base URL in order to continue',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.compare_arrows_outlined),
                        const SizedBox(width: 32),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 8),
                              border: const UnderlineInputBorder(),
                              errorText: state.linkInput.errorMessage(context),
                              labelStyle: textTheme.bodyLarge,
                              hintStyle: textTheme.labelMedium?.copyWith(color: Colors.black.withValues(alpha: 0.65)),
                            ),
                            onChanged: context.read<MainCubit>().linkChanged,
                            keyboardType: TextInputType.url,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                title: 'Start counting process',
                onPressed: () {
                  context.read<MainCubit>().linkChanged(state.linkInput.value);
                  if (state.isAllFieldsValid) {
                    context.read<MainCubit>().setNewLink();
                    context.pushNamed(Routes.processScreen.name);
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
