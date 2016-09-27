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

contract Hosting {

string public standard = 'hosting 0.1';

mapping (uint256 => string) public Links;
mapping (address => uint256) public balanceOf;



}
