# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```

1. npm i -D hardhat
Giải thích: Lệnh này sử dụng npm (Node Package Manager) để cài đặt Hardhat vào dự án của bạn.
-D: Có nghĩa là cài đặt package này như một dependency phát triển (dev dependency), điều này có nghĩa là nó chỉ cần thiết trong quá trình phát triển và không cần thiết trong môi trường sản xuất.
2. npx hardhat
Giải thích: npx là một công cụ đi kèm với npm cho phép bạn chạy các package mà không cần cài đặt chúng toàn cục.
Khi bạn chạy npx hardhat, bạn đang khởi động Hardhat CLI (Command Line Interface) để thực hiện các tác vụ như tạo dự án mới, triển khai hợp đồng thông minh, hoặc chạy các bài kiểm tra.
3. npm i -D dotenv
Giải thích: Lệnh này cài đặt thư viện dotenv, cho phép bạn sử dụng các biến môi trường trong ứng dụng của mình.
Sử dụng: Thư viện này thường được dùng để quản lý các thông tin nhạy cảm như khóa API hoặc thông tin đăng nhập mà bạn không muốn đưa vào mã nguồn.
4. npm i -D @nomiclabs/hardhat-waffle (@nomicfoundation/hardhat-chai-matchers)
Giải thích:
Lệnh này cài đặt hai package: @nomiclabs/hardhat-waffle và @nomicfoundation/hardhat-chai-matchers.
@nomiclabs/hardhat-waffle: Đây là một plugin cho Hardhat giúp bạn viết và chạy các bài kiểm tra hợp đồng thông minh bằng cách sử dụng Waffle, một thư viện kiểm tra.
@nomicfoundation/hardhat-chai-matchers: Đây là một plugin bổ sung cho phép bạn sử dụng các trình so sánh (matchers) của Chai trong các bài kiểm tra của Hardhat, giúp làm cho việc viết kiểm tra trở nên dễ dàng và rõ ràng hơn.
5. npm i -D @nomiclabs/hardhat-etherscan
Giải thích: Lệnh này cài đặt plugin @nomiclabs/hardhat-etherscan, cho phép bạn xác minh các hợp đồng thông minh của mình trên Etherscan.
Sử dụng: Plugin này rất hữu ích khi bạn muốn công khai mã nguồn hợp đồng thông minh của mình và cho phép người dùng kiểm tra tính xác thực của nó trên Etherscan.
