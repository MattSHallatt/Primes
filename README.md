# Primes

Primes is a basic program that checks whether or not a given number is prime or not. It was as much an exercise in writing Swift code as it was reinforcing my knowledge of checking prime numbers.

## Inspiration

The inspiration for this program was a spate of videos released on YouTube a few months ago related to primes after a new world’s largest prime was discovered using the [GIMPS](http://www.mersenne.org) (Great Internet Mersenne Prime Search) software.
The idea was to write a piece of software that could check whether or not a number was prime using one of several different methods:

#### Brute Force
This method literally checks whether or not any number greater than one is a factor of the number being checked. This takes quite a long time for large numbers, obviously.

#### Lucas-Lehmer
This method uses the Lucas-Lehmer sequence of numbers to check mersenne numbers for primality.

A mersenne number is simply any power of two, minus 1: (2 ^ n) - 1

The sequence starts with the number 4 and each successive entry is the square of the previous number, minus 2:

4, 14, 194, 37,634, 1,416,317,954...

If we use (2 ^ n) - 1, then we want to check the n - 1th number in the Lucas-Lehmer sequence. If our mersenne number is a factor of this number, then we know for certain that it is a prime. If not, we know it is not a prime.

The Lucas-Lehmer numbers get very large very quickly which makes checking most mersenne numbers quite difficult. Luckily, as we are only looking for factors of the Lucas-Lehmer number, we can just keep track of the Lucas-Lehmer number mod the mersenne number. For example:

Lets choose the mersenne number (2 ^ 13) - 1, which is equal to 8191.

We need to check if the 12th Lucas-Lehmer number is a multiple of it.

Rather than just calculating the 12th Lucas-Lehmer number, which would be huge, we can keep track of the Lucas-Lehmer numbers mod 8191, squaring the remainder when the Lucas-Lehmer number is larger than the mersenne number we are checking. This looks like follows:

4, 14, 194, 4870, 3953, 5970, 1857, 36, 1294, 3470, 128, 0

The fourth number would be the first number larger than 8191, so we continue with 37,634 % 8191, which equals 4870.

The last number in this amended sequence is zero, meaning 8191 is indeed prime.

## To Do

* Add some UI that allows a number to be inputted.
* Add some UI that allows a method of checking whether or not the inputted number is prime to be chosen.
* Add some more methods of checking whether or not a number is prime.
* Find a way to overcome issues with large numbers. Currently we are using the Int type, which means we have a limit to the size of the number we can check.
* I don’t know much about functional programming, but I feel like this is the sort of thing which goes hand-in-hand with it. I’d like to investigate this a little more.