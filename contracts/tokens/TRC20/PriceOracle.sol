pragma solidity >=0.4.21 <0.6.0;

contract PriceOracle {

// Address of oracle set in the contract constructor
  address oracleAddress;
  
  // Price data
  string price;
  string rank;
  string marketCap;
  string vol24H;
  string perChange1H;
  string perChange1D;
  string perChange7D;
  
  // Function called on creation of contract, sets oracle address
  constructor (address _oracleAddress) public {
    oracleAddress = _oracleAddress;
  }
  
  // Event emitted when price is updated from oracle
  event PriceUpdate (
  string price,
  string rank,
  string marketCap,
  string vol24H,
  string perChange1H,
  string perChange1D,
  string perChange7D
  );
  
  // Event emitted when a price update is initiated
  event InitUpdate();
  
  // Function called to return price data
  function getPriceData() public view returns (string memory, string memory, string memory, string memory, string memory, string memory, string memory) {
    return (price, rank, marketCap, vol24H, perChange1H, perChange1D, perChange7D);
  }
  
  // Function called to initate price update
  function initUpdate() public {
    emit InitUpdate();
  }
  
  // function called by oracle to update price data within contract
  function updatePrice (
  string memory _price,
  string memory _rank,
  string memory _marketCap,
  string memory _vol24H,
  string memory _perChange1H,
  string memory _perChange1D,
  string memory _perChange7D
  )
  public
  {
    require(msg.sender == oracleAddress);
    price = _price;
    rank = _rank;
    marketCap = _marketCap;
    vol24H = _vol24H;
    perChange1H = _perChange1H;
    perChange1D = _perChange1D;
    perChange7D = _perChange7D;
    
    emit PriceUpdate (
    price,
    rank,
    marketCap,
    vol24H,
    perChange1H,
    perChange1D,
    perChange7D
    );
  }
}
