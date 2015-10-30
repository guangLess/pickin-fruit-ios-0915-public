

# Pickin' Fruit

Let's make a slot machine!

## Instructions

  1. A picker View "displays a spinning wheel or slot-machine motif of values". I've already placed one on the storyboard. Your job is to implement its **2** delegates.
  2. The first one is called `UIPickerViewDataSource`. Check out the docs on it...it should look pretty familiar to `UITableView`. Implement the required methods there to display the number of rows for all of the fruits. There should be three components (i.e., columns).
  3. Now implement the `UIPickerViewDelegate` to put in the appropriate text in each row. Each component (think column) should have the same stuff in it.
  4. When the spin button is pressed, use the `selectRow:inComponent:animated:` to randomly spin each component to a row.
  5. If they land on the same fruit, display a `UIAlertController` that says whether you won or lost. There should be two button: `Cancel` and `Re-spin`. These should do reasonable things.
  
  As a sidenote: When you run the tests, you'll notice that the spinner will only show "Apple" and "Orange." We have "swizzled" the method so that winning spins become more likely (so that your tests don't run on and on forever.) Don't worry about how to do this for now, but understand that "swizzling" is the process of exchanging one method implementation for another. In this case we are substituting the original array of many fruits for one with just two fruits, just for the test suite. When run by a user, the array will include all of the fruits.
