// function madLib(verb, adjective, noun) {

//     console.log(`We shall ${verb.toUpperCase()} the best ${adjective.toUpperCase()} ${noun.toUpperCase()}`)
// }

// madLib('make', 'best', 'guac');

// function isSubstring(search, sub) {
//     console.log(search.includes(sub))
// }

// isSubstring("time to program", "time")
// isSubstring("jump for joy", "joys")


// function fizzBuzz(array) {
//     let nums = []
//     for (let i = 0; i < array.length; i++) {
//         if (array[i] % 3 === 0 && array[i] % 5 !== 0) {
//             nums.push(array[i]);
//         }
//         else if (array[i] % 5 === 0 && array[i] % 3 !== 0) {
//             nums.push(array[i]);
//         }
//     }
//     console.log(nums)
// }

// fizzBuzz([2,3,4,5,36,10,9,6,3])



function isPrime(num) {
    if (num < 2) {
        return false;
    }
    else if (num === 2) {
        return true;
    }
    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false
        }
    }
    return true
}

function sumOfNPrimes(num) {
    let count = 0
    let arr = []
    for (i = 0; num > arr.length; i++){
        if (isPrime(i)) {
            count += i
            arr.push(i)
        }
    }
    return count
}




console.log(sumOfNPrimes(0))
console.log(sumOfNPrimes(1))
console.log(sumOfNPrimes(4))