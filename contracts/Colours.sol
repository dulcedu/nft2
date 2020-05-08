pragma solidity 0.5.7;

import "./ERC721Full.sol";

contract Colours is ERC721Full {

  bytes3[] public colours;
  mapping(bytes3 => bool) private colourExists;

  constructor()
    ERC721Full("Colour", "FARBE")
    public
  {
    // do nothing
  }

  function mint(bytes3 colour) public {
    require(
      !colourExists[colour],
      "Colour already exists"
    );
    uint _id = colours.push(colour);
    _mint(msg.sender, _id);
    colourExists[colour] = true;
  }
}
