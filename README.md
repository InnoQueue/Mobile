# Cross-platform Mobile Development with Flutter S22 elective.

> Semester 6, 3rd study-year, Innopolis University.

[![Hits-of-Code](https://hitsofcode.com/github/InnoQueue/Mobile?branch=main)](https://hitsofcode.com/github/InnoQueue/Mobile/view?branch=main)
[![Codemagic build status](https://api.codemagic.io/apps/627244bf8f3a1f16f5f33465/627244bf8f3a1f16f5f33464/status_badge.svg)](https://codemagic.io/apps/627244bf8f3a1f16f5f33465/627244bf8f3a1f16f5f33464/latest_build)

## **Haskell** team
- Timur Nugaev
- Emil Khabibullin
- Roman Soldatov

## 📌 About
- This application can be used to track household chores for roommates.
- A user can create a queue and invite his/her roommates.
- Users complete a queue task one by one in a loop. So, ideally, every roommate should complete a task on each iteration.
- The app helps to remind users about to-dos and fairly automate the tasks distribution between roommates based on their contribution.
- For the [REST API](https://documenter.getpostman.com/view/16213957/UVsSP4ER), the [Backend](https://github.com/InnoQueue/Backend) project was developed (please do **not** take into account this contribution 🙏).

<p float="center">
<img width="300" src="https://user-images.githubusercontent.com/49106163/167298525-fa458bd1-4e28-4593-a738-8c26a4bdf7a6.png"/>
</p>

## 📲 APK
- You can download the [APK file](https://github.com/InnoQueue/README/blob/main/app-release.apk) to install and use it on your Android phone *(also available on the GitHub [releases](https://github.com/InnoQueue/Mobile/releases/tag/Release) page)*
- or you can download this GitHub project and build it for your favourite platform.

## 📲 How to build
- When you've cloned the repo, you'll need to run `flutter pub get` to locally install all the dependencies
- Wait a bit...
- To release build **APK** for android run: `flutter build apk --split-per-abi`
- To release build for **iOS** run: `flutter build ios`
- PROFIT

## List of screens

### Onboarding screen
- Welcome screen
- Input user name
<p float="left">
<img width="300" src="https://user-images.githubusercontent.com/49106163/167304630-ba232283-5a35-4327-8dbe-478ee2ccf7ef.png"/>
<img width="300" src="https://user-images.githubusercontent.com/49106163/167304996-224fa0b4-954a-46e8-945e-e32bb9e7dfd5.png"/>
</p>

## To-do tasks
- To-do tasks section
- Open a task
- Input expenses
- Select several tasks
<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305031-9c3177ce-0f86-4398-a510-09acb9a71141.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305039-f561ff93-bf3d-4db6-a63c-419920cba0d1.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305053-ee21117d-17d6-4916-928f-bd9f38bc9562.png"/>
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305058-cae30116-50a7-42b1-aea2-ed438bb4383d.png"/>
</p>

## Queues
- Queues section
- Create queue
- Join queue
- Queue's details
- Edit queue
- Invite in queue 
<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/49106163/167305063-cab2a097-e01c-44b9-8803-649877a5daab.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305074-5fd5d490-8661-4ce5-88d7-d47322f0baff.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305602-f19a4260-8498-4608-a92e-8760516210e5.png"/>
</p>
<p float="left">
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305083-b5cdcfd7-20a4-4771-a559-e0e164303d78.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305086-87fd3ad8-64df-4673-ab97-cd9bb2b39bab.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305088-23b97860-5086-4b4e-8cf7-88f184ec53c7.png"/>
</p>


## Notifications
- Notifications section
- push notifications on Android
<p float="left">
<img width="300" src="https://user-images.githubusercontent.com/49106163/167305111-da3c460a-f741-4b02-a242-7d22d4204c30.png"/>
<img width="250" src="https://user-images.githubusercontent.com/49106163/167305411-7e81c94f-87fe-4b8e-8307-d291b5e1c5f8.jpg"/>
</p>

## Settings
- Settings section
- Notification settings
- Theme
- Language
<p float="left">
<img width="240" src="https://user-images.githubusercontent.com/49106163/167305093-2cb6f67b-4637-4b1c-883f-d5aae2bfdfa2.png"/>
<img width="240" src="https://user-images.githubusercontent.com/49106163/167305097-6c68f9ce-f8dc-477e-b23e-fd2422e3778e.png"/>
<img width="240" src="https://user-images.githubusercontent.com/49106163/167305103-2890f9eb-c153-44ca-be6f-5c1d02a5a25e.png"/>
<img width="240" src="https://user-images.githubusercontent.com/49106163/167305109-1b8bd969-da07-4fa8-9692-5274fbdd7564.png"/>
</p>

## List of features
- Create a new queue
- Invite users to a queue
- Complete a task when it's your turn
- Complete a task even it's not your turn. So, you will be skipped on the next iteration
- Skip a task. However, on the next iteration, you will be forced to complete a task twice
- Track expenses for tasks that require buying something
- Temporarily leave a queue ("freeze"). Your progress will be saved, but you won't participate in a queue. For example, you can use this feature when you leave your room for the Winter holidays
- If it's someone's turn you can "shake" him to remind him about a task by sending a notification
- Receive reminders when it's your turn
- Receive notifications about queue progress
- Notifications history
- No registration is needed
> Features on which we are working on can be found in [issues](https://github.com/InnoQueue/Mobile/issues)

## 📊 Repositories
- The [README repository](https://github.com/InnoQueue/README)
- The Backend project which mobile application uses is [in this repository](https://github.com/InnoQueue/Backend)
