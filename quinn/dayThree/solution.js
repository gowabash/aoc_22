"use strict"

let inputText;
fetch('input.txt').then(x => x.text()).then(y => inputText = y);

function main() {
    let rucksacks = inputText.split("\r\n");
    const codes = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    let totalPriority = 0;
    
    for(let i = 0; i < rucksacks.length; i++) {
        let currentA = rucksacks[i].substring(0, rucksacks[i].length / 2);
        let currentB = rucksacks[i].substring(rucksacks[i].length / 2, rucksacks[i].length);
        let sharedChar = "";
        for(let j = 0; j < currentA.length; j++) {
            if(currentB.includes(currentA.charAt(j))) {
                sharedChar = currentA.charAt(j);
            }
        }
        totalPriority += codes.indexOf(sharedChar);
    }
    console.log("Part 1: " + totalPriority);

    totalPriority = 0;
    for(let i = 0; i < rucksacks.length / 3; i++) {
        let currentA = rucksacks[i * 3];
        let currentB = rucksacks[i * 3 + 1];
        let currentC = rucksacks[i * 3 + 2];
        let potentialChars = "";
        let sharedChar = "";
        for(let j = 0; j < currentA.length; j++) {
            if(currentB.includes(currentA.charAt(j))) {
                potentialChars += currentA.charAt(j);
            }
        }
        for(let j = 0; j < potentialChars.length; j++) {
            if(currentC.includes(potentialChars.charAt(j))) {
                sharedChar = potentialChars.charAt(j);
            }
        }
        totalPriority += codes.indexOf(sharedChar);
    }
    console.log("Part 2: " + totalPriority);
}