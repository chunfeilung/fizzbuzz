let sayFizz = "Fizz"
let sayBuzz = "Buzz"

let isFizzNumber x =
  x % 3 = 0

let isBuzzNumber x =
  x % 5 = 0

let sayPossiblyFizzBuzzableNumber x =
  match isFizzNumber x, isBuzzNumber x with
  | false, false -> x.ToString()
  | false, true  -> sayBuzz
  | true, false  -> sayFizz
  | true, true   -> sayFizz + sayBuzz

[1 .. 100] |> List.iter (sayPossiblyFizzBuzzableNumber >> printfn "%s")