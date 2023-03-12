// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Pyramid {
    function run(uint size) pure public returns (string memory _out) {
        // _out = ""; // TODO
        /* Example (size = 5):
         *
         *     "*\n"
         *     "**\n"
         *     "***\n"
         *     "****\n"
         *     "*****\n"
         *
         */
        _out = "";
        for (uint i = 0; i < size;) {
            for (uint j = 0; j <= i;) {
                _out = string.concat(_out, "*");
                unchecked {
                    j++;
                }
            }
            unchecked {
                i++;
            }
            _out = string.concat(_out, "\n");
        }

    }
}
