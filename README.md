# Pursuit-Core-iOS-UnwindSegueDemo

## Unwind Segue 

Unwind segues give you a way to "unwind" the navigation stack back through push, modal, popover, and other types of segues. You use unwind segues to "go back" one or more steps in your navigation hierarchy. Unlike a normal segue, which create a new instance of their destination view controller and transitions to it, an unwind segue transitions to an existing view controller in your navigation hierarchy. Callbacks are provided to both the source and destination view controller before the transition begins. You can use these callbacks to pass data between the view controllers.

When you create an unwind segue in Interface Builder you do not specify a destination view controller. The unwind segue determines which view controller in your navigation hierarchy to unwind to when it is triggered at runtime. This process is customizable and additional points of customization are provided for container view controllers to participate in the unwind process. 

## Reading 
[Apple Technical Note - Using Unwind Segues](https://developer.apple.com/library/archive/technotes/tn2298/_index.html)  

## Steps involved in creating an Unwind Segue 

Example Scenario: You have 2 view controllers, you want to pass data from the second view contorller to the first view controller. In the link demo, we are passing the user's full name from the EditFullnameController to the MainViewController. 

1. Create an @IBAction in the view controller you are interested in unwinding to, in our case the MainViewController. 
1. Implement performForSegue() function in the second view controller, in our case the EditFullnameController. 
1. Navigate to the storyboard in question, in our case Main.storyboard, head to the EditFullnameController, control-drag from the view controller icon to the exit icon in the header view on the view controller scene. At this point the unwind @IBAction you created in the MainViewController will pop up, select the unwind segue. 
1. Finally select in unwind segue in the document outline and navigate to the attribues inspector and name the segue identifier. 

Creating a programmatically initiated unwind segue.
![connecting unwind segue in storyboard](https://developer.apple.com/library/archive/technotes/tn2298/Art/tn2298_SceneToExitIcon.png)

