pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/utils/math/Math.sol";

contract Test{
    using Math for uint256;

    function bigger (uint256 _a, uint256 _b) piublic pure returns (uint256){
        uint256 big = _a.max(_b);
        return (big);
    }

}