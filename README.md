# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [x] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [x] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

#### EXTRA
- [x] User can view the app on various device sizes and orientations.
- [x] In both the detail views, UI is updated to be less primitive

### App Walkthrough GIF

<img src="https://github.com/yasvi31/flixster/blob/master/flix(3).gif" width=250><br>
<img src="https://github.com/yasvi31/flixster/blob/master/flix(4).gif" width=250><br>

### Notes
I faced some challenges in creating a segue from an UIImageView but fixed it after some debugging by enabling UI interaction. 

---

## Flix Part 1

### User Stories

#### REQUIRED (10pts)
- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [x] (2pt) User can view the app on various device sizes and orientations.
- [x] (1pt) Run your app on a real device.

### App Walkthrough GIF

<img src="https://github.com/yasvi31/flixster/blob/master/Flix(2).gif" width=250><br>

### Notes
Had an issue with the TableCellView not showing the details but fixed it with quick debugging. Couldn't run a custom framework on real device because of the bug in the latest update of Xcode; It ran on the lower versions of Xcode.
