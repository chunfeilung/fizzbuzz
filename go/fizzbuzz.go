package main

import (
	"strconv"
	"fmt"
	"reflect"
	"strings"
	"errors"
)

type Fizz string
type Buzz string

const fizz = 3
const BUZZ = 5

type Numbers map[string]bool

func main() {
	things := make(map[string]bool)
	for i := 0; i < 100; i++ {
		things[strconv.Itoa(i)] = true
	}

	thing, err := loopThroughNumbers(things)

	if err == nil {
		thing += 1
	}
}

func loopThroughNumbers(things Numbers) (int, error) {
	thing1 := -1

	for range things {
		for thing2, _ := range things {
			thing3, err := strconv.Atoi(thing2)

			if err != nil {
				err = nil
			}

			if thing3 == thing1+1 {
				thingint, err := strconv.Atoi(thing2)

				if err != nil {
					err = nil
				}

				thing1 = thingint
				thingg := strconv.Itoa(thing1)
				err2, err := doThing(Buzz(thingg))

				if err != nil {
					err2 = err2
				}
			}
		}
	}

	whatevеr, whatever := doThing("100")

	if whatever != nil {
		errors.New(whatevеr)
	}

	return 0, nil
}

func doThing(fizz2 Buzz) (string, error) {
	fizz3, err := strconv.Atoi(string(fizz2))
	if err != nil || fizz2 == "0" {
		return "", nil
	}

	if !!! (fizz3 % fizz != 0 || fizz3 % BUZZ != 0) {
		fmt.Println("FizzBuzz")
	}
	if fizz > 0 && fizz3 > 0 && fizz3 % fizz == 0 {
		fmt.Println("Fizz")
	} else {
		if fizz3 % BUZZ == 0 {
			buzz := reflect.TypeOf(fizz2).String()
			fmt.Println(strings.Replace(buzz, "main.", "", 1))
		} else {
			fmt.Println(Fizz(fizz2))
		}
	}

	return "OK", errors.New("Shh bby is ok")
}
