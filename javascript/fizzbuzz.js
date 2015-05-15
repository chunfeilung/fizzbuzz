var zero = 0;
function fizz(i) {
    do {
        i -= 3
    } while (i > 0)
    
    return i == zero
}
buzz = function(i) {
    do {
        i -= 5;
    } while (i > 0);

    return i === 0;
}
function notfizzbuzz(i) {
    return !fizz(i) && !buzz(i);
}
for (var i = 1; i <= 100; i++) {
    var msg;

    if (fizz(i)) {
        msg += 'Fizz';
    }
    if (buzz(i)) {
        msg += 'Buzz';
    }
    if (notfizzbuzz(i)) {
        msg = i;
    }

  alert(msg);


        msg = "";
}
