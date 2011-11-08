= minitest-debugger

home :: https://github.com/seattlerb/minitest-debugger
rdoc :: http://docs.seattlerb.org/minitest-debugger

== DESCRIPTION:

This is a stupid simple example of how easy it is to make a minitest
plugin that does something useful. In this case it wraps assert so
that failed assertions will drop into the ruby debugger.

== FEATURES/PROBLEMS:

* Failed assertions drop into the debugger.
* Unhandled exceptions already drop into the debugger.

== SYNOPSIS:

Add this to the top of your test file or helper:

    require 'minitest/debugger' if ENV['DEBUG']

Then run your tests as normal but define DEBUG=1:

    % DEBUG=1 rake test 
    Debug.rb
    Emacs support available.

    Run options: --seed 27343

    # Running tests:

    .Assertion Failed. Dropping into debugger now:
    ./lib/minitest/debugger.rb:40:
    (rdb:1) up 2
    #3 example.rb:18:in `test_assert_failure'
    (rdb:1) l
    [13, 22] in example.rb
       13    def wrong
       14      24
       15    end
       16  
       17    def test_assert_failure
    => 18      assert_equal 42, wrong
       19    end
       20  
       21    def bad
       22      raise "no"

== REQUIREMENTS:

* minitest... you probably already have it

== INSTALL:

* sudo gem install minitest-debugger

== LICENSE:

(The MIT License)

Copyright (c) Ryan Davis, seattle.rb

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
