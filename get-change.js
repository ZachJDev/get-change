const getChange = (change) => {
    change = Math.floor(change)
  const coins = [
    { name: 'quarters', val: 25 },
    { name: 'dimes', val: 10 },
    { name: 'nickels', val: 5 },
    { name: 'pennies', val: 1 },
  ];
  const final = {};
  for (let i = 0; i < coins.length; i++) {
    const diff = change > 0 ? Math.floor(change / coins[i].val) : 0
    final[coins[i].name] = diff;
    change -= diff * coins[i].val
  }
  return final
};

getChange(96) // { quarters: 3, dimes: 2, nickels: 0, pennies: 1 }
