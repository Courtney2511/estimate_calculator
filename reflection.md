### Reflection:

When I started attacking the problem, I knew that I wanted to break it down in small, single function pieces for ease of reuse and proper testing.  I wanted to be sure that in the future if any of the markups changed that it was easy to implement and test.

For testing, I wanted to make sure that I tested for edge case scenarios, so when building tests for the markup functions I included cases that would produce interesting results, taking into account integer math and rounding errors.

I noticed that the example input/output scenarios only allowed for jobs of one kind of goods.  I wondered if there was a  case where a job would contain multiple types of goods as this seemed like more of a real world scenario.  Having broken the problem down into small parts - the initial markup as a function, and then the variable percentage markup for differing types of goods, I figured that this would be easy to implement if this was the case.
