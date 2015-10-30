

# Pickin' Fruit

Let's make a slot machine!

## Instructions

  1. A picker View "displays a spinning wheel or slot-machine motif of values". I've already placed one on the storyboard. Your job is to implement its **2** delegates.
  2. The first one is called `UIPickerViewDataSource`. Check out the docs on it...it should look pretty familiar to `UITableView`. Implement the required methods on your view controller. There should be three components (i.e., columns), and each component should have one row per symbol in the slot machine.
  3. Now implement the `UIPickerViewDelegate` to put in the appropriate text in each row. Each component (column) should have the same stuff in it.
     - *Here, have some emoji:* 🍎🍇🍉🍊🍀💎 
  4. When the spin button is pressed, use the `selectRow:inComponent:animated:` to randomly spin each component to a row.
  5. When the animations finish, display a `UIAlertController` that says whether you won (i.e., all three components have the same value) or lost. There should be two buttons: `Cancel` and `Spin Again`. These should do reasonable things.
