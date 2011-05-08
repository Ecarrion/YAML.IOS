# YAML.IOS for Objective-C

A fork from [YAML.Framework](https://github.com/mirek/YAML.framework).

Based on C [LibYAML library](http://pyyaml.org/wiki/LibYAML) by Kirill Simonov.
`YAML.framework` provides support for YAML (de/)serialisation similarly to standard `NSPropertyListSerialization`.

It's fast and compatible with iOS.

## Examples

Using input stream:

	NSError * error = nil;
    NSURL * url = [NSURL fileURLWithPath:[[NSBundle mainBundle] 
                                         pathForResource:@"basic" ofType:@"yaml"]];
    
    NSInputStream * stream = [[NSInputStream alloc] initWithURL:url];
    NSMutableArray * yaml = [YAMLSerialization YAMLWithStream: stream
                                        options: kYAMLReadOptionStringScalars
                                          error: &error];
       
    // Dump Objective-C object description
    NSLog(@"%@", [yaml description]);
    NSLog(@"Error: %@\n", error);

For input YAML file:

    items:
      - name: Foo
      - name: Bar

Should print dump string similar to:
    
    (
      {
        items = (
          {
            name = Foo;
          },
          {
            name = Bar;
          }
        );
      }
    )

## License

`YAML.framework` is released under the MIT license.

    Copyright (c) 2010 Mirek Rusin (YAML.framework)
                  2006 Kirill Simonov (LibYAML)

    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
    of the Software, and to permit persons to whom the Software is furnished to do
    so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.