# Pre-optimization Gas Report

| Unoptimized      |                 |        |        |        |         |
| ---------------- | --------------- | ------ | ------ | ------ | ------- |
| Deployment Cost  | Deployment Size |        |        |        |         |
| 2509208          | 12469           |        |        |        |         |
| Function Name    | min             | avg    | median | max    | # calls |
| addToWhitelist   | 13816           | 52607  | 68008  | 68029  | 7       |
| administrators   | 3053            | 3053   | 3053   | 3053   | 5       |
| balanceOf        | 2746            | 2746   | 2746   | 2746   | 3       |
| balances         | 596             | 1096   | 596    | 2596   | 4       |
| getPaymentStatus | 982             | 982    | 982    | 982    | 1       |
| transfer         | 174595          | 187897 | 194548 | 194548 | 3       |
| whiteTransfer    | 76342           | 77408  | 77942  | 77942  | 3       |
| whitelist        | 904             | 904    | 904    | 904    | 2       |

# Post-optimization Gas Report

| Optimized        |                 |      |        |       |         |
| ---------------- | --------------- | ---- | ------ | ----- | ------- |
| Deployment Cost  | Deployment Size |      |        |       |         |
| 210076           | 1609            |      |        |       |         |
| Function Name    | min             | avg  | median | max   | # calls |
| addToWhitelist   | 295             | 1286 | 1678   | 1678  | 7       |
| administrators   | 332             | 378  | 378    | 424   | 5       |
| balanceOf        | 331             | 331  | 331    | 331   | 3       |
| balances         | 535             | 6011 | 536    | 22438 | 4       |
| getPaymentStatus | 365             | 365  | 365    | 365   | 1       |
| transfer         | 512             | 512  | 512    | 512   | 3       |
| whiteTransfer    | 1572            | 1572 | 1572   | 1572  | 3       |
| whitelist        | 375             | 375  | 375    | 375   | 2       |
