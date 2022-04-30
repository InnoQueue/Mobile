part of 'queue_details_page.dart';

class _AddProgressButton extends StatelessWidget {
  final QueueDetailsModel queueDetialsModel;
  const _AddProgressButton({
    required this.queueDetialsModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          AppLocalizations.of(context)!.translate('add progress') ??
              'Add Progress',
          style: Theme.of(context).textTheme.largeButtonTextSrtyle,
        ),
      ),
      onPressed: () {
        showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext _) {
            return TaskExpensesDialog(
              buildContext: context,
              queueDetialsModel: queueDetialsModel,
            );
          },
        );
      },
    );
  }
}
