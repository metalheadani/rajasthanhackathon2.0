contract mortal{
	
	address public owner;

	function mortal(){

	owner = msg.sender; //receives address of user
	}

	modifier onlyOwner(){
		if(msg.sender != owner){
			throw; //built in function in solidity meaning transaction will not be executed
		} else{
			_

		}	
	}

	function kill() onlyOwner{
	suicide(owner);
	}
} 

contract User is owner {  //inheritance
	string public usrName;
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