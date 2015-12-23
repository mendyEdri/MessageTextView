# MessageTextView
Show Message on view for empty screens with minimum code, just one block.

Example:
<pre>
<code>
[MessageTextView textViewWithHeader:@"No Notifications" message:@"Once your profile will be asked to be viewed we will notify         you!" onView:self.view completion:^(id result, NSError *error) {
        UITextView *message = (UITextView *)result;
        [self.view addSubview:message];
}];
</code>
</pre>

![alt tag](https://github.com/mendyEdri/MessageTextView/blob/master/Simulator%20Screen%20Shot%2023%20Dec%202015,%2011.16.02%20AM.png?raw=true)

![alt tag](https://github.com/mendyEdri/MessageTextView/blob/master/Simulator%20Screen%20Shot%2023%20Dec%202015,%2011.15.52%20AM.png?raw=true)
