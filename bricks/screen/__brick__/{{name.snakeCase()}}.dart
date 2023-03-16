import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{^isStateful}}
class {{name.pascalCase()}} extends ConsumerWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold();
  }
}
{{/isStateful}}
{{#isStateful}}
class {{name.pascalCase()}} extends ConsumerStatefulWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _{{name.pascalCase()}}State();
}

class _{{name.pascalCase()}}State extends ConsumerState<{{name.pascalCase()}}> {

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
{{/isStateful}}
