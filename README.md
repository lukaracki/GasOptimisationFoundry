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

| Optimized        |                 |       |        |       |         |
| ---------------- | --------------- | ----- | ------ | ----- | ------- |
| Deployment Cost  | Deployment Size |       |        |       |         |
| 238100           | 1749            |       |        |       |         |
| Function Name    | min             | avg   | median | max   | # calls |
| addToWhitelist   | 319             | 1310  | 1702   | 1702  | 7       |
| administrators   | 446             | 494   | 501    | 523   | 5       |
| balanceOf        | 388             | 388   | 388    | 388   | 3       |
| balances         | 644             | 1702  | 742    | 4680  | 4       |
| getPaymentStatus | 586             | 586   | 586    | 586   | 1       |
| transfer         | 20733           | 22066 | 22733  | 22733 | 3       |
| whiteTransfer    | 17624           | 18690 | 19224  | 19224 | 3       |
| whitelist        | 432             | 432   | 432    | 432   | 2       |
