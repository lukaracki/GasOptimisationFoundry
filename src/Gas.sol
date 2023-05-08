// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract GasContract {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    bytes32 private constant __ADDED_TO_WHITE_LIST_EVENT =
        0x62c1e066774519db9fe35767c15fc33df2f016675b7cc0c330ed185f286a2d52;

    bytes32 private constant __WHITE_LIST_TRANSFER_EVENT =
        0x98eaee7299e9cbfa56cf530fd3a0c6dfa0ccddf4f837b8f025651ad9594647b3;

    /*//////////////////////////////////////////////////////////////
                               CONSTANTS
    //////////////////////////////////////////////////////////////*/

    address private constant __administrator0 = 0x3243Ed9fdCDE2345890DDEAf6b083CA4cF0F68f2;
    address private constant __administrator1 = 0x2b263f55Bf2125159Ce8Ec2Bb575C649f822ab46;
    address private constant __administrator2 = 0x0eD94Bc8435F3189966a49Ca1358a55d871FC3Bf;
    address private constant __administrator3 = 0xeadb3d065f8d15cc05e92594523516aD36d1c834;
    address private constant __administrator4 = 0x0000000000000000000000000000000000001234;

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    //    .._
    //  `.   ``-.                               .-----.._
    //    `,     `-.                          .:      /`
    //      :       `"..                 ..-``       :
    //      /   ...--:::`n            n.`::...       :
    //      `:``      .` ::          /  `.     ``---..:.
    //        `\    .`  ._:   .-:   ::    `.     .-``
    //          :  :    :_\\_/: :  .::      `.  /
    //          : /      \-../:/_.`-`         \ :
    //          :: _.._  q` p ` /`             \|
    //          :-`    ``(_. ..-----hh``````/-._:
    //                      `:      ``     /     `
    //                      E:            /
    //                       :          _/
    //                       :    _..-``
    //                       l--``

    /*//////////////////////////////////////////////////////////////
                                 ENUMS
    //////////////////////////////////////////////////////////////*/

    //            .-._   _ _ _ _ _ _ _ _
    // .-''-.__.-'00  '-' ' ' ' ' ' ' ' '-.
    // '.___ '    .   .--_'-' '-' '-' _'-' '._
    //  V: V 'vv-'   '_   '.       .'  _..' '.'.
    //    '=.____.=_.--'   :_.__.__:_   '.   : :
    //            (((____.-'        '-.  /   : :
    //                              (((-'\ .' /
    //                            _____..'  .'
    //                           '-._____.-'

    /*//////////////////////////////////////////////////////////////
                                  MAPS
    //////////////////////////////////////////////////////////////*/

    //            /^\/^\
    //          _|__|  O|
    // \/     /~     \_/ \
    //  \____|__________/  \
    //         \_______      \
    //                 `\     \                 \
    //                   |     |                  \
    //                  /      /                    \
    //                 /     /                       \\
    //               /      /                         \ \
    //              /     /                            \  \
    //            /     /             _----_            \   \
    //           /     /           _-~      ~-_         |   |
    //          (      (        _-~    _--_    ~-_     _/   |
    //           \      ~-____-~    _-~    ~-_    ~-_-~    /
    //             ~-_           _-~          ~-_       _-~
    //                ~--______-~                ~-___-~

    /*//////////////////////////////////////////////////////////////
                                 ARRAYS
    //////////////////////////////////////////////////////////////*/

    //
    //          , ,\ ,'\,'\ ,'\ ,\ ,
    //    ,  ;\/ \' `'     `   '  /|
    //    |\/                      |
    //    :                        |
    //    :                        |
    //     |                       |
    //     |                       |
    //     :               -.     _|
    //      :                \     `.
    //      |         ________:______\
    //      :       ,'o       / o    ;
    //      :       \       ,'-----./
    //       \_      `--.--'        )
    //      ,` `.              ,---'|
    //      : `                     |
    //       `,-'                   |
    //       /      ,---.          ,'
    //    ,-'            `-,------'
    //   '   `.        ,--'
    //         `-.____/
    //                 \
    //

    /*/////////////////////////////////////////////////////////////
                               VARIABLES
    //////////////////////////////////////////////////////////////*/

    uint256 private counter;

    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    //            __
    // .-.__      \ .-.  ___  __
    // |_|  '--.-.-(   \/\;;\_\.-._______.-.
    // (-)___     \ \ .-\ \;;\(   \       \ \
    //  Y    '---._\_((Q)) \;;\\ .-\     __(_)
    //  I           __'-' / .--.((Q))---'    \,
    //  I     ___.-:    \|  |   \'-'_          \
    //  A  .-'      \ .-.\   \   \ \ '--.__     '\
    //  |  |____.----((Q))\   \__|--\_      \     '
    //     ( )        '-'  \_  :  \-' '--.___\
    //      Y                \  \  \       \(_)
    //      I                 \  \  \         \,
    //      I                  \  \  \          \
    //      A                   \  \  \          '\
    //      |                    \  \__|           '
    //                            \_:.  \
    //                              \ \  \
    //                               \ \  \
    //                                \_\_|

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address[] memory, uint256) payable {}

    /*//////////////////////////////////////////////////////////////
                                EXTERNAL
    //////////////////////////////////////////////////////////////*/

    function addToWhitelist(address _userAddrs, uint256 _tier) external payable {
        // require(msg.sender == address(0x1234));
        // require(_tier < 255);
        // emit AddedToWhitelist(_userAddrs, _tier);
        assembly {
            if iszero(and(eq(caller(), __administrator4), lt(_tier, 0xff))) { revert(0, 0) }
            mstore(0x00, _userAddrs)
            mstore(0x20, _tier)

            log1(0x00, 0x40, __ADDED_TO_WHITE_LIST_EVENT)
        }
    }

    function administrators(uint256 _index) external payable returns (address) {
        assembly {
            if eq(_index, 0) {
                mstore(0x00, __administrator0)
                return(0x00, 0x20)
            }
            if eq(_index, 1) {
                mstore(0x00, __administrator1)
                return(0x00, 0x20)
            }
            if eq(_index, 2) {
                mstore(0x00, __administrator2)
                return(0x00, 0x20)
            }
            if eq(_index, 3) {
                mstore(0x00, __administrator3)
                return(0x00, 0x20)
            }
            mstore(0x00, __administrator4)
            return(0x00, 0x20)
        }
    }

    function balances(address) external payable returns (uint256) {
        // 4
        assembly {
            mstore(0x00, 4)
            return(0, 0x20)
        }
    }

    function balanceOf(address) external payable returns (uint256) {
        // 4
        assembly {
            mstore(0x00, 4)
            return(0x00, 0x20)
        }
    }

    function whitelist(address) external payable returns (uint256) {
        // 4
        assembly {
            mstore(0x00, 4)
            return(0x00, 0x20)
        }
    }

    function transfer(address, uint256, string calldata) external payable {}

    function whiteTransfer(address _recipient, uint256) external payable {
        // emit WhiteListTransferEvent
        assembly {
            log2(0x00, 0x00, __WHITE_LIST_TRANSFER_EVENT, _recipient)
        }
    }

    function getPaymentStatus(address) external payable returns (bool, uint256) {
        // 1,4
        assembly {
            mstore(0x00, true)
            mstore(0x20, 4)
            return(0x00, 0x40)
        }
    }

    /*//////////////////////////////////////////////////////////////
                                 PUBLIC
    //////////////////////////////////////////////////////////////*/

    //                              .-----.
    //                             /7  .  (
    //                            /   .-.  \
    //                           /   /   \  \
    //                          / `  )   (   )
    //                         / `   )   ).  \
    //                       .'  _.   \_/  . |
    //      .--.           .' _.' )`.        |
    //     (    `---...._.'   `---.'_)    ..  \
    //      \            `----....___    `. \  |
    //       `.           _ ----- _   `._  )/  |
    //         `.       /"  \   /"  \`.  `._   |
    //           `.    ((O)` ) ((O)` ) `.   `._\
    //             `-- '`---'   `---' )  `.    `-.
    //                /                  ` \      `-.
    //              .'                      `.       `.
    //             /                     `  ` `.       `-.
    //      .--.   \ ===._____.======. `    `   `. .___.--`     .''''.
    //     ' .` `-. `.                )`. `   ` ` \          .' . '  8)
    //    (8  .  ` `-.`.               ( .  ` `  .`\      .'  '    ' /
    //     \  `. `    `-.               ) ` .   ` ` \  .'   ' .  '  /
    //      \ ` `.  ` . \`.    .--.     |  ` ) `   .``/   '  // .  /
    //       `.  ``. .   \ \   .-- `.  (  ` /_   ` . / ' .  '/   .'
    //         `. ` \  `  \ \  '-.   `-'  .'  `-.  `   .  .'/  .'
    //           \ `.`.  ` \ \    ) /`._.`       `.  ` .  .'  /
    //           |  `.`. . \ \  (.'               `.   .'  .'
    //         __/  .. \ \ ` ) \                     \.' .. \__
    //  .-._.-'     '"  ) .-'   `.                   (  '"     `-._.--.
    // (_________.-====' / .' /\_)`--..__________..-- `====-. _________)
    //                  (.'(.'

    /*//////////////////////////////////////////////////////////////
                                INTERNAL
    //////////////////////////////////////////////////////////////*/

    //                .-"""-.
    //              _/-=-.   \
    //             (_|a a/   |_
    //              / "  \   ,_)
    //         _    \`=' /__/
    //        / \_  .;--'  `-.
    //        \___)//      ,  \
    //         \ \/;        \  \
    //          \_.|         | |
    //           .-\ '     _/_/
    //         .'  _;.    (_  \
    //        /  .'   `\   \\_/
    //       |_ /       |  |\\
    //      /  _)       /  / ||
    //     /  /       _/  /  //
    //     \_/       ( `-/  ||
    //               /  /   \\ .-.
    //               \_/     \'-'/
    //                        `"`

    /*//////////////////////////////////////////////////////////////
                                PRIVATE
    //////////////////////////////////////////////////////////////*/

    //  ___.-''''-.
    // /___  @    |
    // ',,,,.     |         _.'''''''._
    //      '     |        /           \
    //      |     \    _.-'             \
    //      |      '.-'                  '-.
    //      |                               ',
    //      |                                '',
    //       ',,-,                           ':;
    //            ',,| ;,,                 ,' ;;
    //               ! ; !'',,,',',,,,'!  ;   ;:
    //              : ;  ! !       ! ! ;  ;   :;
    //              ; ;   ! !      ! !  ; ;   ;,
    //             ; ;    ! !     ! !   ; ;
    //             ; ;    ! !    ! !     ; ;
    //            ;,,      !,!   !,!     ;,;
    //            /_I      L_I   L_I     /_I
}
