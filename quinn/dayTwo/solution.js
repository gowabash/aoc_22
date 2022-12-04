"use strict"

let inputText;
fetch('input.txt').then(x => x.text()).then(y => inputText = y);

function main() {
    let strategyGuide = inputText.split("\r\n");
    let score = 0;
    for(let i = 0; i < strategyGuide.length; i++) {
        if(strategyGuide[i].charAt(2) == "X"){
            score += 1;
            if(strategyGuide[i].charAt(0) == "A") {
                score += 3;
            }else if(strategyGuide[i].charAt(0) == "B") {
                score += 0;
            }else if(strategyGuide[i].charAt(0) == "C") {
                score += 6;
            }
        }else if(strategyGuide[i].charAt(2) == "Y") {
            score += 2;
            if(strategyGuide[i].charAt(0) == "A") {
                score += 6;
            }else if(strategyGuide[i].charAt(0) == "B") {
                score += 3;
            }else if(strategyGuide[i].charAt(0) == "C") {
                score += 0;
            }
        }else if(strategyGuide[i].charAt(2) == "Z") {
            score += 3;
            if(strategyGuide[i].charAt(0) == "A") {
                score += 0;
            }else if(strategyGuide[i].charAt(0) == "B") {
                score += 6;
            }else if(strategyGuide[i].charAt(0) == "C") {
                score += 3;
            }
        }
    }
    console.log("Part 1: " + score);
    
    score = 0;
    for(let i = 0; i < strategyGuide.length; i++) {
        if(strategyGuide[i].charAt(2) == "X"){
            score += 0;
            if(strategyGuide[i].charAt(0) == "A") {
                score += 3;
            }else if(strategyGuide[i].charAt(0) == "B") {
                score += 1;
            }else if(strategyGuide[i].charAt(0) == "C") {
                score += 2;
            }
        }else if(strategyGuide[i].charAt(2) == "Y") {
            score += 3;
            if(strategyGuide[i].charAt(0) == "A") {
                score += 1;
            }else if(strategyGuide[i].charAt(0) == "B") {
                score += 2;
            }else if(strategyGuide[i].charAt(0) == "C") {
                score += 3;
            }
        }else if(strategyGuide[i].charAt(2) == "Z") {
            score += 6;
            if(strategyGuide[i].charAt(0) == "A") {
                score += 2;
            }else if(strategyGuide[i].charAt(0) == "B") {
                score += 3;
            }else if(strategyGuide[i].charAt(0) == "C") {
                score += 1;
            }
        }
    }
    console.log("Part 2: " + score);
}