# How to restart iOS in 20 lines of code

Download this project and install the app on your iOS device. It will allow you to restart the operating system with the tap of the screen!

# Requirements

Only works on **iOS 7.1** with iPhone 5 or older (including iPhone 5c).
i.e. it will not work on iPhone 5s.

# How it works

The only lines of code that do anything in this app are the following:

```objc
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
  UIView *subView = [[UIView alloc] initWithFrame:cell.bounds];
  [cell addSubview:subView];
  
  // The following lines of code cause the crash, all three lines are required.
  cell.layer.cornerRadius = 1;
  subView.layer.shadowOpacity = 1;
  subView.layer.borderWidth = 1;
  
  return cell;
}
```

The lines of code marked with a `// *` have been identified as the cause of the problem. There may be other ways to acheive the same result, but by having these three lines of code in the app, the app will cause the operating system to crash.

It's very simple when broken down:
* Dequeue a collection view cell in the usual way and add a subview to it
* Set the cell's corner radius to 1 point
* Set the subview's shadow opacity to 1
* Set the subview's border width to 1 point

Easy, huh? By removing any one of these lines, this app will not cause the OS to restart.

# Disclaimer

This works by taking advantage of a bug in **backboardd**, the daemon that runs alongside the SpringBoard daemon. The few lines of code in the app cause the daemon to crash, in turn causing SpringBoard to restart. The daemon has been witnessed to get into a state whereby this crash doesn't occur, and under such conditions, this app will not work. If this is the case for you -- and you have confirmed your device meets the Requirements -- please restart your device manually to witness this great app in action.

# Disclaimer #2

If you hadn't realised already, this is kind of a joke. I wouldn't expect an app of any size to cause the operating system to crash, least of all an app written in only 20 lines of code. Apple have been made aware of this and are investigating it.

Hopefully with this app in mind, if you notice strange things in your own apps causing the backboardd daemon to terminate after updating to iOS 7.1, you will be able to diagnose the problem more easily.
