part of '../home_page.dart';

class _AddButton extends StatelessWidget {
  const _AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: FittedBox(
        child: FloatingActionButton(
          child: const Icon(
            Icons.add,
            size: 35,
          ),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return const QueueBottomSheet();
              },
            );
          },
        ),
      ),
    );
  }
}
