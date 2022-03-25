import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

class QueueDetailsPage extends StatelessWidget {
  final QueueModel queueModel;
  const QueueDetailsPage({
    required this.queueModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _Header(
                queueModel: queueModel,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: queueDetailsPadding),
              child: ElevatedButton(
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  child: const Text(
                    'Add Progress',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: _Participants(
                queueModel: queueModel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final QueueModel queueModel;
  const _Header({required this.queueModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors[queueModel.color],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          queueModel.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class _Participants extends StatelessWidget {
  final QueueModel queueModel;
  const _Participants({
    required this.queueModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: queueDetailsPadding, vertical: 10),
          child: Text(
            'On duty:',
            style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
          ),
        ),
        _ParticipantTile(user: queueModel.crrentUser, onDuty: true),
        if (queueModel.participants.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: queueDetailsPadding, vertical: 10),
            child: Text(
              'Other participants in the queue:',
              style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
            ),
          ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: queueModel.participants.length,
            itemBuilder: (context, index) => _ParticipantTile(
              user: queueModel.participants[index],
              onDuty: false,
            ),
            separatorBuilder: (context, index) => Stack(
              children: const [
                Divider(
                  height: 0.5,
                  color: Colors.white,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: queueDetailsPadding),
                  child: Divider(
                    height: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ParticipantTile extends StatelessWidget {
  final UserModel user;
  final bool onDuty;
  const _ParticipantTile({
    required this.user,
    required this.onDuty,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: onDuty
            ? const Border.symmetric(
                horizontal: BorderSide(color: Colors.grey, width: 0.5))
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: queueDetailsPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: Theme.of(context).textTheme.userNameStyle,
                  ),
                  if (onDuty)
                    Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '${user.expenses}₽ spent',
                          style: Theme.of(context).textTheme.expensesStyle,
                        ),
                      ],
                    )
                ],
              ),
            ),
            onDuty
                ? TextButton(
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'shake',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                : Text(
                    '${user.expenses}₽ spent',
                    style: Theme.of(context).textTheme.expensesStyle,
                  )
          ],
        ),
      ),
    );
  }
}
