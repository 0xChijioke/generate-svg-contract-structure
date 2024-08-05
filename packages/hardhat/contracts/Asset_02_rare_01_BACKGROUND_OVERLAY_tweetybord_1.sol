//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_1 {

using ToColor for bytes4;

function renderFn5(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('-1.159-1.5-1.224-2.74-.7-3.74.365-.69 1.087-1.31 2.076-1.84-.451-.4-.679-.83-.735-1.24-.066-.47.062-.98.443-1.5.486-.66 1.486-1.39 2.951-2.15-1.064-.55-1.833-1.03-2.28-1.47-.583-.56-.742-1.12-.634-1.62.088-.42.386-.86 1.022-1.26.547-.34 1.41-.68 2.617-1.05-1.789-1.61-2.363-2.95-2.32-3.94.044-1.04.686-1.84 1.637-2.35a4.5 4.5 0 0 1 .65-.29 6.135 6.135 0 0 1-1.054-.75c-.647-.61-.846-1.22-.768-1.8.069-.51.384-1.04.987-1.54 1.02-.84 3.015-1.68 5.584-2.56-4.273-.34-6.912-.69-7.833-1.09-.496-.21-.704-.52-.771-.75-.098-.34.007-.93.854-1.32.957-.45 3.365-1.01 7.295-1.7-3.043-.94-5.267-1.77-6.736-2.48-1.351-.64-2.111-1.24-2.379-1.69-.191-.32-.224-.61-.164-.88.087-.38.425-.79 1.166-1.01 1.354-.42 4.587-.41 9.413.18-3.617-3.17-5.863-5.58-6.932-7.29-1.123-1.79-.982-3-.198-3.63.891-.72 2.337-.69 4.395.5','4 1.775 1.06 4.109 3.02 7.087 6 5.153 5.17 8.125 9.28 9.641 13.16 1.405 3.61 1.575 7.02 1.044 10.92-.326 2.39-2.124 4.38-4.114 6.26-1.829 1.72-3.816 3.33-4.684 5.17-.661 1.4-.589 2.93.795 4.74.715-.33 1.453-.45 2.214-.32.735.12 1.502.47 2.293 1.1.063-1.18.356-1.88.724-2.2.49-.43 1.169-.45 1.939.04 1.111.69 2.533 2.55 3.689 4.79.711-1.38 1.34-2.27 1.879-2.75.516-.45.998-.57 1.415-.49.515.1 1.016.58 1.382 1.49.512 1.28.858 3.51 1.065 6.43a.34.34 0 0 1 .002.05l-.147 7.04 64.407-10.33c-.861-1.21-2.023-2.36-2.739-3.58-.915-1.57-1.177-3.24.513-5.23 1.741-2.05 5.713-4.48 13.599-7.53.174-.07 5.121-2.16 10.448-4.26 2.32-.92 4.713-1.83 6.815-2.58a.413.413 0 0 1 .274-.18l.42-.07a90.52 90.52 0 0 1 2.181-.73 45.47 45.47 0 0 1 1.502-.44.284.284 0 0 1 .129-.01c7.538.54 11.562 2.32 13.285 4.98 1.597 2.46 ','1.272 5.7-.154 9.5-.473 1.57-1.155 3.28-2.054 5.12-1.064 2.19-2.433 4.56-4.12 7.13l-1.084 1.96a.386.386 0 0 1-.404.19.387.387 0 0 1-.318-.31c-.493-2.86-1.286-5.59-2.369-7.87-.854-1.79-1.884-3.3-3.093-4.35-.741-.5-1.555-.92-2.442-1.27-.825-.33-1.715-.6-2.677-.8-5.799-.85-12.698 1.34-17.692 1.83-1.316.13-2.505.14-3.519-.03.292.34.633.66 1.015.96.904.72 2.035 1.33 3.296 1.89 1.964.53 3.766 1.08 5.405 1.65 1.991.69 3.743 1.4 5.25 2.14 4.283 1.64 7.65 3.73 7.773 7.2.083 2.37-1.349 5.44-5.184 9.53a.462.462 0 0 1-.369.14.462.462 0 0 1-.332-.22 36.67 36.67 0 0 0-2.196-3.27 21.87 21.87 0 0 0-2.616-2.86s-3.607-2.52-3.61-2.52c-1.774-.93-3.854-1.64-6.341-2.06-1.971-.34-4.197-.49-6.726-.42l-65.414 10.9.734 3.02c1.325 1.21 2.714 1.62 4.101 1.63 2.393.02 4.774-1.09 6.849-1.52 1.929-.4 3.612-.25 4.896 1.4','2a.87.87 0 0 1 .055.09c4.112 7.91 7.668 15.02 8.806 18.66.392 1.25.475 2.15.316 2.62-.169.49-.511.73-1.035.71-.3-.01-.721-.15-1.251-.49-.496-.32-1.13-.83-1.911-1.56.577 5.08.692 8.57.263 9.98-.315 1.04-.926 1.3-1.588 1.08-.434-.14-1.038-.69-1.727-1.76-.826-1.28-1.88-3.38-3.184-6.4-2.825 4.42-5.266 7.82-6.706 8.8-.558.37-1.047.45-1.411.34-.347-.11-.659-.37-.842-.88-.133-.38-.204-.94-.174-1.72.068-1.82.675-5.01 1.972-9.91-1.36 2.18-2.499 3.83-3.301 4.69-.448.48-.843.74-1.124.82a.98.98 0 0 1-.833-.1c-.263-.17-.551-.6-.539-1.42.017-1.24.614-3.91 1.992-8.39l-.09-1.09c-3.874 5.05-6.497 8.11-7.598 8.86-.592.4-1.057.31-1.295.16a.888.888 0 0 1-.416-.6c-.044-.2-.039-.53.08-.98.337-1.29 1.68-4.16 4.165-8.78-.4.17-.751.31-1.052.39-.488.14-.88.17-1.171.12a1.227 1.227 0 0 1-.801-.43c-.26-.31-.403-.82-.1','95-1.56.034-.13.08-.26.136-.41-.509.25-.946.43-1.314.55-.6.18-1.067.19-1.401.1-.672-.17-1.068-.67-1.032-1.56.024-.6.316-1.5.879-2.66-.919.07-1.671-.01-2.24-.2-.801-.27-1.305-.77-1.534-1.43-.124-.35-.165-.77-.099-1.25l-.048.03c-.507.37-.928.56-1.255.62-.359.06-.661-.01-.922-.17-.021-.02-.042-.03-.063-.04-.779 1-1.436 1.66-1.974 2.03-.49.34-.926.48-1.292.49-.499.01-.956-.21-1.313-.67-.964 1.21-1.843 1.82-2.622 2.05-1.138.33-2.16-.05-3.112-.79-2.984-.18-5.691-.5-8.053-1-2.05-.43-3.842-.99-5.337-1.7l-2.619-.64a.795.795 0 0 1-.544-1.07l.127-.31-.153-.15a6.085 6.085 0 0 1-.33-.35l-24.457-3.09-38.336 20.12-2.491 4.22a.635.635 0 0 1-.331.28l-8.702 3.54a.658.658 0 0 1-.835-.29.663.663 0 0 1 .186-.86l3.62-2.66-7.632 1.25a.628.628 0 0 1-.718-.47.623.623 0 0 1 .407-.75l7.009-2.42-7.381-1.29a.589.589 0',' 0 1-.494-.61c.016-.3.253-.55.554-.57l14.33-.95 40.228-21.07a.44.44 0 0 1 .249-.06l23.465 2.13a7.947 7.947 0 0 1-.095-1.97c.042-.59.143-1.21.308-1.86-1.742.12-2.96.09-3.719-.07-.664-.15-1.033-.42-1.187-.71-.158-.3-.148-.66.098-1.08.21-.35.627-.78 1.231-1.25-2.86-.23-4.373-.63-4.947-1.09-.268-.22-.391-.46-.422-.69-.05-.39.189-.87.767-1.32.332-.27.781-.54 1.317-.83-2.684-1.24-4.19-2.08-4.809-2.68-.411-.41-.509-.78-.45-1.09.045-.24.195-.48.478-.69.565-.42 1.859-.8 3.584-1.34-3.954-1.58-6.257-2.77-7.172-3.61-.498-.45-.649-.88-.611-1.21.044-.38.347-.76 1.023-.99 1.036-.34 3.193-.44 6.245-.3-2.711-2.94-4.394-4.98-5.124-6.18-.357-.59-.498-1.04-.496-1.31.002-.34.149-.57.376-.71.02-.01.042-.02.067-.03l-1.486-2.09-4.217 20.42.101 2.12Zm153.435-30.31a.427.427 0 0 1-.156.1c-2.149.76-4.622 1.71-7.019 2','.66-5.412 2.14-10.429 4.27-10.429 4.27h-.011c-7.68 2.99-11.568 5.33-13.259 7.32-1.374 1.62-1.169 2.98-.421 4.26.824 1.4 2.235 2.7 3.1 4.1.076.12.086.27.026.4a.45.45 0 0 1-.322.25l-65.648 10.7a.494.494 0 0 1-.418-.12.505.505 0 0 1-.177-.39l.137-7.64c-.205-2.76-.519-4.87-1.007-6.08-.188-.46-.342-.79-.605-.84-.076-.02-.155.02-.244.07-.177.1-.362.27-.564.5-.522.62-1.11 1.63-1.785 3.09a.543.543 0 0 1-.986-.01c-1.016-2.21-2.345-4.19-3.459-5.09a2.934 2.934 0 0 0-.551-.35c-.128-.06-.241-.1-.339-.05-.135.06-.199.22-.267.46-.14.49-.177 1.21-.103 2.21a.573.573 0 0 1-.335.56.56.56 0 0 1-.633-.14c-.753-.8-1.468-1.32-2.164-1.56-.828-.29-1.614-.16-2.367.3a.576.576 0 0 1-.727-.12c-2.057-2.44-2.122-4.47-1.256-6.32.916-1.95 2.986-3.71 4.922-5.54 1.776-1.68 3.45-3.42 3.736-5.56.49-3.68.334-6.91-1.003-10.31-1','.48-3.76-4.392-7.72-9.401-12.71-2.325-2.31-4.242-4-5.8-5.1-1.012-.71-1.859-1.18-2.563-1.39-.599-.19-1.06-.19-1.389.07-.236.19-.173.51-.008.95.311.82 1.076 1.89 2.312 3.26 1.502 1.65 3.686 3.69 6.623 6.15.232.19.307.52.184.8a.666.666 0 0 1-.718.39c-4.634-.65-8.031-.86-9.984-.69-.402.04-.818.14-1.086.22.309.23.889.64 1.55.95 1.872.89 5 1.99 9.514 3.25.324.09.542.39.523.73a.72.72 0 0 1-.601.67c-4.368.73-7.347 1.3-8.994 1.78-.024.01-.048.01-.072.02 1.765.34 5.196.62 10.201.94.362.02.656.3.698.66a.76.76 0 0 1-.527.81c-4.066 1.25-7.384 2.34-8.768 3.49-.237.2-.418.36-.445.57-.021.16.113.3.298.47.554.51 1.596 1.03 3.201 1.6.375.13.586.53.488.91a.76.76 0 0 1-.868.57c-.836-.13-1.931.01-2.725.44-.444.24-.803.57-.822 1.06-.013.32.113.69.374 1.11.446.72 1.256 1.54 2.531 2.48a.79.79 0 0 1 .301.78c-.058.'));
      
        return render;
      }

    function renderFn6(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('3-.28.54-.572.61-1.477.38-2.558.73-3.272 1.07a4.08 4.08 0 0 0-.531.31c-.045.04-.095.09-.128.12.013.03.029.05.043.07.102.12.248.24.43.38.642.47 1.669 1 3.029 1.62.283.13.464.41.463.73a.801.801 0 0 1-.472.72c-1.946.87-3.279 1.63-3.818 2.37-.088.12-.162.22-.146.33.015.12.115.2.241.31.224.18.539.35.943.52.304.12.5.42.495.75a.81.81 0 0 1-.519.74c-1.277.48-2.276.99-2.661 1.73-.35.66-.01 1.43.96 2.48.292.31.285.8-.017 1.11l-2.36 2.41a.81.81 0 0 1-1.374-.44c-.199-1.19-.456-1.95-.828-2.37-.213-.24-.477-.25-.766-.15-.266.1-.545.26-.837.48a.797.797 0 0 1-.717.11.792.792 0 0 1-.522-.5c-1.483-4.21-2.87-7.82-4.031-9.96-.336-.62-.646-1.11-.936-1.43-.052-.06-.113-.14-.165-.2-.052.14-.104.36-.156.54-.23.81-.383 2.07-.46 3.86a.811.811 0 0 1-1.272.63l-2.948-1.98a.838.838 0 0 1-.237-.23l-6.805-10.3-5.613 25.9','9a.76.76 0 0 1-.516.57c-.64.2-1.237.37-1.803.52.042.04.08.08.113.12.187.26.187.6.001.85-1.361 1.84-2.647 2.71-4.173 3.11-.063.02-.126.03-.193.05h.051c1.381.04 2.603-.34 3.971-1.58.21-.19.515-.23.765-.09.25.13.39.4.35.68-.239 1.68-.941 2.63-2.023 3.34-.606.39-1.349.7-2.222 1.03a9.524 9.524 0 0 0 3.925-1.34c2.046-1.25 3.499-3.23 2.955-5.51a.708.708 0 0 1-.017-.12l-.098-2.27a.586.586 0 0 1 .013-.15l4.597-21.75a.575.575 0 0 1 .441-.44c.222-.05.45.04.581.23l2.892 4.1a.555.555 0 0 1-.648.84c-.046-.01-.094-.03-.141-.04.14.29.374.66.699 1.12.977 1.37 2.748 3.44 5.364 6.26a.53.53 0 0 1-.422.89c-3.556-.23-6.051-.22-7.171.15-.122.04-.253.12-.312.15.011.03.026.05.039.07.055.08.131.16.227.25.966.89 3.569 2.17 8.117 3.95.193.08.317.27.312.47a.48.48 0 0 1-.337.45c-2.237.73-3.964 1.11-4.626 1.6-.05.04-.11','4.04-.112.09.006.12.144.22.339.38.755.63 2.413 1.48 5.239 2.79a.457.457 0 0 1 .005.83c-1.034.49-1.861.94-2.27 1.37-.134.14-.225.25-.087.36.592.48 2.305.8 5.645 1a.443.443 0 0 1 .217.81c-.838.55-1.456 1.04-1.805 1.45-.099.12-.175.23-.218.33-.023.06-.047.1-.026.14.073.14.288.2.608.27.793.18 2.119.19 4.064.03a.44.44 0 0 1 .359.15c.086.11.115.26.075.39-.245.8-.394 1.56-.447 2.26a6.87 6.87 0 0 0 .183 2.26c.035.12.004.26-.081.36a.385.385 0 0 1-.346.14l-23.893-2.07-40.114 21.27a.442.442 0 0 1-.223.06l-9.508.68 4.87.83c.277.05.486.28.509.56a.613.613 0 0 1-.413.63l-2.185.76 2.936-.49a.65.65 0 0 1 .709.39c.118.28.03.6-.214.78l-1.478 1.09 3.502-1.44 2.459-4.2c.066-.11.161-.2.275-.26l38.658-20.45a.79.79 0 0 1 .453-.08l25.005 3.12a.75.75 0 0 1 .513.28c.135.16.279.32.433.48.152.15.314.3.483.44.257.22.35','.57.234.88l1.812.44.154.06c1.409.68 3.108 1.2 5.05 1.61 2.361.5 5.077.81 8.074.99.17.01.333.07.463.18.577.49 1.164.85 1.86.65.767-.22 1.574-1.01 2.569-2.56a.8.8 0 0 1 .805-.35c.314.06.564.3.63.61.051.24.111.45.188.62.049.11.086.2.162.25.012 0 .025-.01.043-.02.066-.02.136-.05.212-.09.622-.35 1.413-1.23 2.466-2.72.18-.25.493-.37.798-.31.305.06.544.3.611.6.011.05.028.11.046.16.217-.13.642-.39.995-.69.235-.2.492-.42.775-.68.496-.44 1.066-.98 1.722-1.58a.776.776 0 0 1 1.062 0c.299.27.335.73.082 1.05-.834 1.06-1.364 1.95-1.594 2.68-.118.38-.159.7-.07.95.113.33.454.48.921.56.665.11 1.546.06 2.623-.16a.77.77 0 0 1 .78.31c.179.24.197.57.048.83-.719 1.27-1.186 2.27-1.352 2.97-.026.11-.038.25-.043.35.183-.03.532-.1.841-.22.74-.3 1.71-.83 2.929-1.61.304-.2.703-.15.957.1.254.26.295.66.097.96-.747 1.14-','1.205 1.95-1.319 2.49.163-.03.39-.07.59-.14.671-.24 1.553-.67 2.646-1.3a.753.753 0 0 1 .907.12c.242.24.296.61.132.9-2.481 4.5-4.059 7.6-4.813 9.43a.206.206 0 0 1-.02.05c1.494-1.53 3.997-4.64 7.385-9.09a.74.74 0 0 1 .786-.26c.29.09.497.34.522.65l.25 3.11a.674.674 0 0 1-.03.27c-1.252 4.03-1.875 6.53-1.978 7.83.095-.1.192-.2.278-.3 1.271-1.49 3.232-4.63 5.524-8.53a.689.689 0 0 1 .876-.29c.323.14.492.49.394.83-2.058 7.04-3.079 11.48-3.3 13.96-.064.71-.063 1.25.01 1.62.011.05.031.11.049.16.066-.03.156-.07.227-.12 1.486-1 4.036-4.73 7.017-9.44.13-.2.365-.32.609-.3.243.02.455.18.549.4 1.781 4.26 3.1 6.88 4.043 8.07.147.18.338.35.455.45.022-.05.045-.1.06-.15.459-1.5.217-5.44-.488-11.21a.636.636 0 0 1 .348-.64.638.638 0 0 1 .717.13c1.245 1.27 2.191 2.11 2.88 2.57.187.13.394.23.535.29-.005-.2-.024-.','53-.093-.83-.171-.75-.512-1.75-.988-2.94-1.557-3.89-4.536-9.84-7.893-16.34-.966-1.23-2.254-1.25-3.701-.96-2.145.44-4.616 1.55-7.09 1.53-1.69-.01-3.384-.53-4.99-2.06a.579.579 0 0 1-.159-.28l-.905-3.77a.561.561 0 0 1 .077-.44.537.537 0 0 1 .375-.24l66.067-10.84h.065c2.612-.07 4.908.09 6.94.44 2.607.45 4.783 1.21 6.638 2.19l.048.03 3.647 2.56c.015.01.03.03.043.04a21.98 21.98 0 0 1 2.742 3c.7.92 1.339 1.87 1.943 2.86 3.315-3.62 4.638-6.33 4.566-8.47-.107-3.17-3.31-4.94-7.221-6.44-.012 0-.024-.01-.036-.01-1.489-.74-3.214-1.45-5.175-2.13a78.977 78.977 0 0 0-5.376-1.65.138.138 0 0 1-.06-.02c-1.343-.59-2.542-1.25-3.501-2.02-.783-.62-1.407-1.31-1.829-2.09a.403.403 0 0 1 .052-.46.408.408 0 0 1 .454-.11c1.11.43 2.572.45 4.258.28 5.055-.49 12.043-2.67 17.908-1.8h.026c1.003.22 1.937.5 2.804.85.95.38 1.','819.83 2.61 1.36l.039.03c1.286 1.12 2.391 2.72 3.299 4.63.973 2.05 1.722 4.45 2.232 7l.569-1.03.015-.03c1.672-2.54 3.028-4.89 4.081-7.04.88-1.81 1.549-3.48 2.011-5.01l.008-.03c1.328-3.54 1.717-6.55.234-8.83-1.637-2.52-5.49-4.1-12.625-4.62-.42.12-.891.26-1.405.42-.667.21-1.404.46-2.191.74-.023.01-.048.01-.073.02l-.195.03Zm-138.386 10.28c-.052-.06-.094-.09-.108-.04-.013.04.046.05.108.04Zm.016 0c.071-.01.139-.04.111-.08-.037-.05-.074-.01-.111.08Z" clip-rule="evenodd"/><path fill="',colors[13].toColor()));
      
        return render;
      }

    function renderFn7(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" fill-rule="evenodd" stroke="',colors[2].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width=".46" d="M341.952 824.294c.552-4.694 28.858-10.649 27.952-7.509-4.697 1.623-8.878 3.291-12.792 5.055-1.201 1.118-2.459 2.173-4.097 3.02-1.456.754-3.24 1.457-5.177 2.168 3.782.519 4.799 3.354 4.815 6.692-3.465-3.281-6.072-.794-9.76.59-1.785.67-3.838 1.787-6.337.52.201.918 7.063 2.864 5.563 1.158-2.165 4.498-9.438 11.841-13.05 13.212-1.528.812-3.48 1.32-5.566 1.504-1.801.273-14.234-2.952-14.086-4.524l.001-.098c-1 .555-1.823.954-2.475 1.207-2.993 1.447-6.787.293-7.435-.265-.606-.19-14.012 4.67-12.694 3.002-.498-.917 7.771-4.221 8.107-4.581-10.927 3.631-46.801 9.542-2.27-3.548-23.179 2.37-21.417-2.894 8.097-2.446-7.856-6.58 8.958-2.171 10.766-2.706.903-.267-1.159-1.44-1.4-2.296-.27-.952-.22-2.559-.215-3.418.0','04-.583.29-1.157.245-1.738-.077-1.018.075-3.105-.709-4.373-1.192-1.929-19.311-11.08-6.445-7.2.704-.072 1.715.022 2.988.28-21.666-13.828-14.698-12.373.661-6.44-19.327-16.404-23.83-21.877 5.753-2.216-7.434-14.51-5.76-13.485 1.356-3.179 1.598 2.307 3.587 5.267 5.946 8.836-1.685-11.156-1.589-15.129 3.23-.059l-.611 7.38c2.054-3.304 4.543-7.943 4.634-7.295.189 1.349-4.226 12.446-3.981 13.864.352 2.04 1.621 4.324 1.523 6.026-.088 1.535-2.112 4.186-2.112 4.186 2.973.474 6.59 1.395 6.142-1.843-.095-1.478-.53-3.472.241-4.675.596-.93 8.462-7.289 13.192-8.291ZM1636 425.46l2.77 4.835c-3.47 5.272-1.45 6.08 2.87 5.008-3.83 7.896-2.54 9.044 5.52 1.263-1.78 9.711-.1 10.576 5.55 1.27-.65 16.422.28 23.296 5.97 1.367 3.24 22.498 6.47 21.339 9.69 2.22 3.96-4.768-11.25-18.838-20.92-25.413-5.41-3.673 4.4-2.238 3','.87-3.673-.98-2.7-3.99-5.643-8.09-5.612-1.71-.23-14.26.963-21.6 3.257-.03.01-14.89 4.462-14.87 4.493-1.14-.172-2.05-.26-2.75-.27-3.31-.315-6.46 2.088-6.87 2.837-.5.389-14.76.499-12.95 1.604-.15 1.033 8.76 1.252 9.2 1.472-11.51.399-47.2 7.346-.9 4.117-22.55 5.847-19.07 10.168 8.45-.525-5.08 8.902 9.15-1.084 11.03-1.212.94-.063-.58 1.754-.51 2.64.08.987.68 2.475.99 3.279.2.546.67.984.83 1.544.28.982 1.15 2.885.86 4.347-.45 2.223-14.25 17.109-3.54 8.993.69-.178 1.6-.617 2.71-1.303-15.5 20.505-9.48 16.716 2.86 5.807-12.41 22.106-14.73 28.805 6.16.075-1.92 16.19-.7 14.647 2.38 2.509.69-2.719 1.53-6.187 2.5-10.354 2.3 11.045 3.77 14.736 3.05-1.069l-3.15-6.705c3.08 2.382 7.03 5.864 6.89 5.225-.29-1.33-8.3-10.196-8.56-11.61-.38-2.036 10.56-.416 10.56-.416Zm312.58 1503.46 2.96 4.72c-3.27 5.41-1.22 ','6.14 3.06 4.9-3.52 8.04-2.19 9.13 5.56 1.04-1.39 9.78.32 10.58 5.59 1.06 0 16.43 1.19 23.26 6.02 1.13 4.12 22.36 7.3 21.07 9.78 1.84 3.77-4.92-11.98-18.38-21.9-24.58-5.54-3.46 4.31-2.41 3.73-3.82-1.09-2.66-4.21-5.48-8.3-5.29-1.73-.16-14.21 1.52-21.46 4.09-.03.01-14.71 5.04-14.69 5.07-1.14-.13-2.05-.18-2.75-.16-3.32-.19-6.38 2.34-6.76 3.1-.49.41-14.73 1.08-12.88 2.11-.1 1.04 8.8.91 9.25 1.11-11.48.85-46.87 9.18-.73 4.15-22.31 6.72-18.66 10.9 8.41-.85-4.72 9.09 9.11-1.44 10.98-1.64.94-.1-.51 1.77-.41 2.65.12.99.78 2.45 1.12 3.24.22.54.71.96.89 1.51.32.97 1.26 2.84 1.03 4.31-.36 2.24-13.57 17.65-3.19 9.13.68-.21 1.58-.68 2.65-1.41-14.68 21.09-8.81 17.07 3.09 5.69-11.54 22.57-13.59 29.36 6.16-.16-1.28 16.25-.13 14.66 2.48 2.41.59-2.74 1.28-6.24 2.09-10.44 2.73 10.94 4.35 14.58 3-1.19l-3.4-6.58','c3.17 2.26 7.25 5.59 7.09 4.96-.35-1.32-8.69-9.87-9.01-11.27-.46-2.02 10.54-.83 10.54-.83Z" clip-rule="evenodd"/><path fill="',colors[13].toColor()));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn5(colors),renderFn6(colors),renderFn7(colors)));
      
        return render;
      }
}