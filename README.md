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
| 249674           | 1718            |       |        |       |         |
| Function Name    | min             | avg   | median | max   | # calls |
| addToWhitelist   | 319             | 1310  | 1702   | 1702  | 7       |
| administrators   | 446             | 494   | 501    | 523   | 5       |
| balanceOf        | 2573            | 2573  | 2573   | 2573  | 3       |
| balances         | 511             | 1011  | 511    | 2511  | 4       |
| getPaymentStatus | 554             | 554   | 554    | 554   | 1       |
| transfer         | 25884           | 25884 | 25884  | 25884 | 3       |
| whiteTransfer    | 37100           | 38166 | 38700  | 38700 | 3       |
| whitelist        | 596             | 596   | 596    | 596   | 2       |
