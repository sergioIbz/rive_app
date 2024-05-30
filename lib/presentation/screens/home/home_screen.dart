import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiveApp'),
      ),
      body: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _CustomListTitle(
          title: 'State provider',
          subTitle: 'Estado simple',
          location: '/state-provider',
        ),
      ],
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTitle({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
