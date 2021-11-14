
# ResMed Take Home Assignment

Take home assignment to build an iOS app that downloads a list of results and present it with the information for the most recent day.

Requirements
- The structure of the code should be extendable to add more types of results.
- All the results to be displayed in chronological order.
- Only same date records should be displayed.

[Link to the full description](https://drive.google.com/file/d/1r7RCMgt1NChjHa6eLIwzJ08_FT5xaRzC/view?usp=sharing)

# Demo-Preview

![demo](https://j.gifs.com/28GJ3J.gif)

# Installation
- Clone the repo. 
- Open the project in Xcode and run it.

# Usage

Once the application is running, tap on the "GET RESULTS" button. The app will make an api call and present the results.

# Development
This project follows MVVM design pattern with dependency injection for the Api service. I choose this design pattern because it is better at separating concerns. The business logic is handled in the view models, while the view logic is handled in view controllers. In addition, This design pattern makes it easy to write unit tests for the business logic. 

I decided to use a dictionary for the API response because it makes it easier to add more types of results as stated in the requirements. If more results were to be added, it would require a few lines of code to accommodate them.

All the unit tests are written using XCTest framework and can be found [here](https://github.com/patcodefy/ResMedChallenge/tree/dev/ResMedChallenge/ResMedChallengeTests).

All the view models used in this project can be found [here](https://github.com/patcodefy/ResMedChallenge/tree/dev/ResMedChallenge/ResMedChallenge/ViewModels).

All the view controllers can be found [here](https://github.com/patcodefy/ResMedChallenge/tree/dev/ResMedChallenge/ResMedChallenge/ViewControllers).

# License

[GNU General Public License version 3](https://opensource.org/licenses/GPL-3.0)
