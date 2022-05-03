[![Hits-of-Code](https://hitsofcode.com/github/InnoQueue/Mobile?branch=main)](https://hitsofcode.com/github/InnoQueue/Mobile/view?branch=main)

# Cross-platform Mobile Development with Flutter S22 elective.

> Semester 6, 3rd study-year, Innopolis University.

**Flutter Project**. For this project, the [Backend](https://github.com/InnoQueue/Backend) project for the REST API was developed (please **do not** take into account this contribution 🙏).

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

## 📲 APK
- You can download the [APK file](https://github.com/InnoQueue/README/blob/main/app-release.apk) to install and use it on your Android phone *(also available on the GitHub [releases](https://github.com/InnoQueue/Mobile/releases/tag/Release) page)*, or you can download this GitHub project and build it for your favourite platform.

## 📲 How to build
- When you've cloned the repo, you'll need to run "flutter pub get" to locally install all the dependencies
- Wait a bit...
- To release build **APK** for android run: `flutter build apk --split-per-abi`
- To release build for **iOS** run: `flutter build ios`
- PROFIT

## List of screens
- Splash/Introduction
- To-do tasks
- Queues
- Notifications
- Settings

<p float="left">
<img width="250" src="https://user-images.githubusercontent.com/19241702/159998772-dfb0de9a-2444-4354-8756-beace5c7e9e4.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/160007732-9749ea1e-3b5f-4230-9381-2e1e0f0769b9.jpeg"/>
</p>

<p float="left">
<img width="250" src="https://user-images.githubusercontent.com/49106163/160007842-4ccf59b6-6c42-4a93-a3dd-1f39680d8e0c.jpeg"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/160008010-6cda5365-1d1d-4e4d-a99c-83a9198f32af.jpeg"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/160008064-7242a52f-8a03-44da-9e7b-2512c1aa7227.jpeg"/>
</p>

<p float="left">
<img width="250" src="https://user-images.githubusercontent.com/49106163/160008208-1c5e070d-5a49-4c89-91b7-2aad0dabb2e5.jpeg"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/160008138-592be89d-a500-49a0-a256-4770c17b0f4a.jpeg"/>
</p>


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
> Features on which we are working on can be found in [issues](https://github.com/InnoQueue/Mobile/issues)

## 📊 Repositories
- The [README repository](https://github.com/InnoQueue/README)
- The Backend project which mobile application uses is [in this repository](https://github.com/InnoQueue/Backend)
