const getChange = (change) => {
  const coins = [
    { name: 'quarters', val: 25 },
    { name: 'dimes', val: 10 },
    { name: 'nickels', val: 5 },
    { name: 'pennies', val: 1 },
  ];
  const final = {};
  for (let i = 0; i < coins.length; i++) {
    const numCoins = Math.floor(change / coins[i].val)
    final[coins[i].name] = numCoins;
    change -= numCoins * coins[i].val
  }
  return final
};

getChange(96) // { quarters: 3, dimes: 2, nickels: 0, pennies: 1 }
