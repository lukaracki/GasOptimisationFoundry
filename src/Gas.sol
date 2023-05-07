// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract GasContract {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event AddedToWhitelist(address userAddress, uint256 tier);
    event WhiteListTransfer(address indexed);

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
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

    mapping(address => uint256) public balances;
    mapping(address => uint256) public whitelist;

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

    uint256 private whiteListStruct;

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

    constructor(address[] memory, uint256) payable {
        balances[msg.sender] = 1_000_000_000;
    }

    /*//////////////////////////////////////////////////////////////
                                EXTERNAL
    //////////////////////////////////////////////////////////////*/

    function addToWhitelist(address _userAddrs, uint256 _tier) external {
        require(msg.sender == address(0x1234));
        require(_tier < 255);

        emit AddedToWhitelist(_userAddrs, _tier);
    }

    function administrators(uint256 index) external pure returns (address _administrator) {
        _administrator = index == 0
            ? 0x3243Ed9fdCDE2345890DDEAf6b083CA4cF0F68f2
            : index == 1
                ? 0x2b263f55Bf2125159Ce8Ec2Bb575C649f822ab46
                : index == 2
                    ? 0x0eD94Bc8435F3189966a49Ca1358a55d871FC3Bf
                    : index == 3 ? 0xeadb3d065f8d15cc05e92594523516aD36d1c834 : address(0x1234);
    }

    function balanceOf(address) external view returns (uint256) {
        return 1_000_000_000;
    }

    function transfer(address _recipient, uint256 _amount, string calldata) external returns (bool) {
        unchecked {
            balances[msg.sender] -= _amount;
            balances[_recipient] += _amount;
        }

        return true;
    }

    function whiteTransfer(address _recipient, uint256 _amount) external {
        unchecked {
            whiteListStruct = _amount;
            uint256 whiteListSender = whitelist[msg.sender];
            balances[msg.sender] = balances[msg.sender] + whiteListSender - _amount;
            balances[_recipient] = balances[_recipient] + _amount - whiteListSender;
        }

        emit WhiteListTransfer(_recipient);
    }

    function getPaymentStatus(address) external view returns (bool, uint256) {
        return (true, whiteListStruct);
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
