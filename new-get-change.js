const getChange = (change) => {
    if(change < 0) return {quarters: 0, dimes: 0, nickels: 0, pennies: 0}
    const final = {}
    const quartVal = 25 * Math.floor( change / 25);
    const remainder1 = change - quartVal
    const dimeVal = 10 * Math.floor(remainder1 / 10);
    const remainder2 = remainder1 - dimeVal
    const nickelVal = 5 * Math.floor(remainder2 / 5)
    final.quarters = Math.floor( quartVal / 25);
    final.dimes = Math.floor(remainder1 / 10)
    final.nickels = Math.floor(remainder2 / 5)
    final.pennies = remainder2 - nickelVal
    return final;
}
console.log(
    getChange(43)
)