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
