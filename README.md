# Primes

Primes is a basic program that checks whether or not a given number is prime or not. It was as much an exercise in writing Swift code as it was reinforcing my knowledge of checking prime numbers.

## Inspiration

The inspiration for this program was a spate of videos released on YouTube a few months ago related to primes after a new world’s largest prime was discovered using the [GIMPS](http://www.mersenne.org) (Great Internet Mersenne Prime Search) software.
The idea was to write a piece of software that could check whether or not a number was prime using one of several different methods:

#### Brute Force
This is currently the only method implemented and it literally checks whether or not any number greater than one is a factor of the number being checked. This takes quite a long time for large number, obviously.

## To Do

* Add some UI that allows a number to be inputted.
* Add some UI that allows a method of checking whether or not the inputted number is prime to be chosen.
* Add some more methods of checking whether or not a number is prime.
* Find a way to overcome issues with large numbers. Currently we are using the Int type, which means we have a limit to the size of the number we can check.
* I don’t know much about functional programming, but I feel like this is the sort of thing which goes hand-in-hand with it. I’d like to investigate this a little more.