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

string public standard = 'name_hosting 0.1';
string public version = '0.0.1';

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


function safeWithdrawal() onlyOwner {


       if (owner == msg.sender) {
   //      amountToPay=amountRaised;
           if (owner.send(amountRaised)) {

            //   FundTransfer(beneficiary, amountRaised, false);
             //  amountAll=amountAll+amountToPay
           //    amountToPay=0;

          //     amountRaised=0;
           } else {
               //If we fail to send the funds to beneficiary, unlock funders balance
             //  fundingGoalReached = false;
           }
       }
   }

function () {
  throw;
}

function destroy (){
  if (msg.sender == owner) {
        suicide(owner); // send funds to organizer
      }
}

}
