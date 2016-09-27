contract owned {
    address public owner;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender != owner) throw;
        _
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
}

contract HostingDNS  is owned{

string public standard = 'hosting 0.1';

uint public price;

//  mapping (address => mapping (uint => string)) public Links;
mapping (address => uint256) public balanceOf;
mapping (address => string) public Links;

//initialization
function HostingDNS (uint pricePlace){
price = pricePlace;

}

function buyPlace (uint256 amount, string link){
balance0f[msg.sender]=amount;
Links[address]=link;


}

function () {
  throw;
}


}
