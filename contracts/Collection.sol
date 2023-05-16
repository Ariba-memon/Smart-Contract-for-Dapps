pragama solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol"
import "@openzeppelin/contracts/utils/ERC721/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERCURIStorage.sol";

contract Collection is ERCURIStorage, Ownable{
using Counters for Counters.Counter;
Counters.Counter private _tokenIds;
Counters.Counter private _tokenMinted;

uint256 public PRICE_PER_TOKEN = 0.0001 ether;
uint public LIMIT_PER_ADDRESS =3;
unit256 public MAX_SUPPLY =1000;

constructor() ERC721("NFTDAPP", "NFT"){}
function setPrice(uint256 price) external onlyOwner  {
    PRICE_PER_TOKEN = price;
}
function setLimit(uint256 limit) externl onlyOwner{
    LIMIT_PER_ADDRESS = limit;
}
function setMaxSupply(uint256 max_supply) externl onlyOwner{
    MAX_SUPPLY = max_supply
}
}