# Cross-platform Mobile Development with Flutter S22 elective.

> Semester 6, 3rd study-year, Innopolis University.

**Flutter Project**. For this project, the [Backend](https://github.com/InnoQueue/Backend) project for the REST API was developed (please take into account this contribution 🙏).

## Team
- **name**: Haskell
- **team members**:
    - Timur Nugaev
    - Roman Soldatov
    - Emil Khabibullin

## 📌 About
- This application can be used to track household chores for roommates.
- A user can create a queue and invite his/her roommates.
- Users complete a queue task one by one in a loop. So, ideally, every roommate should complete a task on each iteration.

## 📲 How to build
- When you've cloned the repo, you'll need to run "flutter pub get" to locally install all the dependencies
- Wait a bit...
- To release build **APK** for android run: flutter build apk --split-per-abi
- To release build for **iOS** run: 
- Wait a little more...
- ???
- PROFIT

## List of screens
- Splash/Introduction
- To-do tasks
- Queues
- Notifications
- Settings

<img width="233" alt="image" src="https://user-images.githubusercontent.com/19241702/159998772-dfb0de9a-2444-4354-8756-beace5c7e9e4.png">
<img width="311" alt="image" src="https://user-images.githubusercontent.com/19241702/159997545-412093bf-c186-44f0-8634-b02290d69ef4.png">
<img width="230" alt="image" src="https://user-images.githubusercontent.com/19241702/159997937-2f2ae91f-d391-42b2-a9d4-ce67db0f8620.png">
<img width="231" alt="image" src="https://user-images.githubusercontent.com/19241702/159997963-ace9947f-1124-4a53-9d1c-d25c0cc485bc.png">
<img width="232" alt="image" src="https://user-images.githubusercontent.com/19241702/159997995-676bf150-90d8-4751-b740-93a16b27bf36.png">

## List of features
- Create a new queue
- Invite users to a queue
- Complete a task when it's your turn
- Complete a task even it's not your turn. So, you will be skipped on the next iteration.
- Skip a task. However, on the next iteration, you will be forced to complete a task twice.
- Track expenses for tasks that require buying something.
- Temporarily leave a queue ("freeze"). Your progress will be saved, but you won't participate in a queue. For example, you can use this feature when you leave your room for the Winter holidays.
- If it's someone's turn you can "shake" him to remind him about a task by sending a notification.
- Receive reminders when it's your turn.
- Receive notifications about queue progress.
- Notifications history
- No registration is needed.

## 📊 Repositories
- The [README repository](https://github.com/InnoQueue/README)
- The Backend project which mobile application uses is [in this repository](https://github.com/InnoQueue/Backend)
