import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

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
              Row(
                children: [
                  const Icon(Icons.compare_arrows_outlined),
                  const SizedBox(width: 24),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelStyle: textTheme.bodyLarge,
                        hintStyle: textTheme.labelMedium?.copyWith(color: Colors.black.withValues(alpha: 0.65)),
                      ),
                      keyboardType: TextInputType.url,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Field cannot be empty.';
                        } else if (!isValidUrl(value.trim())) {
                          return 'Invalid URL.';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              )
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
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
