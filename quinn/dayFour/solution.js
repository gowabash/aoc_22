"use strict"

let inputText;
fetch('input.txt').then(x => x.text()).then(y => inputText = y);

function main() {
    let elfPairs = inputText.split("\r\n");
    let enclosedPairs = 0;
    let overlappingPairs = 0;

    for(let i = 0; i < elfPairs.length; i++) {
        let rangeOne = elfPairs[i].split(",")[0];
        let rangeTwo = elfPairs[i].split(",")[1];
        let minOne = Number(rangeOne.split("-")[0]);
        let maxOne = Number(rangeOne.split("-")[1]);
        let minTwo = Number(rangeTwo.split("-")[0]);
        let maxTwo = Number(rangeTwo.split("-")[1]);

        if((minOne <= minTwo && maxOne >= maxTwo) || (minTwo <= minOne && maxTwo >= maxOne)) {
            enclosedPairs += 1;
        }

        if((minOne >= minTwo && minOne <= maxTwo) || (maxOne >= minTwo && maxOne <= maxTwo) || (minOne <= minTwo && maxOne >= maxTwo)) {
            overlappingPairs += 1;
        }
    }
    console.log("Part 1: " + enclosedPairs);
    console.log("Part 2: " + (overlappingPairs));
}