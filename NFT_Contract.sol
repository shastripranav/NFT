pragma solidity 0.5.0;
import "./ERC721Full.sol";

contract NFT_Contract is ERC721Full{
    string [] public colors;
    mapping( string => bool) _colorExists;


    constructor () ERC721Full("Color","COLOR") public{

    }

    function mint(string memory _col) public{
        require(!_colorExists[_col]);
       uint _id = colors.push(_col) ;
        _mint(msg.sender,_id);
        _colorExists[_col]=true;
    }
}
