"use strict"

let inputText;
fetch('input.txt').then(x => x.text()).then(y => inputText = y);

function main() {
    let elfTotals = [];
    let calorieCounts = inputText.split("\r\n\r\n");
    
    for(let i = 0; i < calorieCounts.length; i++) {
        calorieCounts[i] = calorieCounts[i].split("\r\n");
        elfTotals[i] = 0;
        for(let j = 0; j < calorieCounts[i].length; j++) {
            elfTotals[i] += Number(calorieCounts[i][j]);
        }
    }
    elfTotals.sort(function(a, b){return b - a});
    console.log("Part 1: " + elfTotals[0]);
    console.log("Part 2: " + (elfTotals[0] + elfTotals[1] + elfTotals[2]));
}