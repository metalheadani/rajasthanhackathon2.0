pragma solidity ^0.4.0;

contract mortal{
	
	address public owner;

	function mortal(){

	owner = msg.sender; //receives address of user
	}

	modifier onlyOwner(){
		if(msg.sender != owner){
			revert; //built in function in solidity meaning transaction will not be executed
		} else{
			_;

		}	
	}

//contract is terminated automatically
	function kill() onlyOwner{
	suicide(owner);
	}
} 

contract User is mortal {  //inheritance
	string public userName;
	function User(string _name){
	userName = _name;
	}

}

contract Provider is mortal{
	string public providerName;
	function Provider(string _name){
	providerName = _name;
	}
}
