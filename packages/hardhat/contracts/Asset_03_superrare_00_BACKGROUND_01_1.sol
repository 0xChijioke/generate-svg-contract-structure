//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_03_superrare_00_BACKGROUND_01_1 {

using ToColor for bytes4;

function renderFn5(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('-1.894 7.344-4.19 10.277-6.885 2.932-2.696 5.008-5.311 6.228-7.847h4.516v58.93Zm17.945-28.945c0-6.939.695-12.524 2.083-16.753 1.389-4.23 3.451-7.493 6.19-9.79 2.737-2.295 6.182-3.442 10.335-3.442 3.062 0 5.748.634 8.058 1.9 2.309 1.27 4.217 3.097 5.722 5.486 1.505 2.39 2.686 5.298 3.543 8.728.856 3.429 1.285 8.053 1.285 13.871 0 6.887-.689 12.445-2.064 16.675-1.376 4.23-3.432 7.5-6.17 9.808-2.738 2.309-6.196 3.463-10.374 3.463-5.502 0-9.823-2.028-12.963-6.085-3.764-4.884-5.645-12.838-5.645-23.86Zm7.202 0c0 9.636 1.097 16.048 3.29 19.237 2.193 3.19 4.898 4.785 8.116 4.785s5.923-1.602 8.116-4.805c2.193-3.203 3.29-9.608 3.29-19.217 0-9.66-1.097-16.08-3.29-19.256-2.193-3.176-4.924-4.764-8.194-4.764-3.218 0-5.788 1.402-7.708 4.203-2.414 3.577-3.62 10.183-3.62 19.817Zm19.191 113.618h-7.007V100.9','7c-1.686 1.655-3.899 3.31-6.637 4.964-2.738 1.655-5.197 2.897-7.376 3.724v-6.966c3.919-1.895 7.344-4.191 10.276-6.886 2.933-2.696 5.009-5.311 6.229-7.847h4.515v58.93Zm17.946-28.945c0-6.939.694-12.524 2.082-16.753 1.388-4.23 3.452-7.493 6.189-9.79 2.739-2.295 6.184-3.442 10.337-3.442 3.061 0 5.748.634 8.057 1.901 2.31 1.268 4.217 3.096 5.722 5.485 1.506 2.39 2.686 5.298 3.543 8.728.857 3.43 1.284 8.053 1.284 13.871 0 6.887-.687 12.445-2.062 16.675-1.376 4.23-3.433 7.5-6.171 9.808-2.738 2.309-6.196 3.463-10.373 3.463-5.502 0-9.824-2.028-12.963-6.085-3.764-4.883-5.645-12.838-5.645-23.861Zm7.202 0c0 9.636 1.096 16.048 3.289 19.237 2.193 3.19 4.899 4.785 8.117 4.785 3.217 0 5.923-1.602 8.116-4.805 2.193-3.203 3.289-9.608 3.289-19.217 0-9.661-1.096-16.079-3.289-19.256-2.193-3.176-4.924-4.764-8.1','95-4.764-3.218 0-5.787 1.402-7.707 4.203-2.414 3.577-3.62 10.183-3.62 19.817Zm-95.879 84.673c0-6.939.694-12.524 2.083-16.753 1.388-4.231 3.452-7.493 6.189-9.789 2.738-2.296 6.183-3.443 10.335-3.443 3.063 0 5.749.634 8.058 1.902 2.31 1.267 4.218 3.095 5.723 5.484 1.504 2.389 2.686 5.298 3.542 8.728.856 3.43 1.285 8.053 1.285 13.871 0 6.887-.688 12.445-2.064 16.675-1.375 4.231-3.432 7.5-6.169 9.809-2.738 2.308-6.196 3.462-10.375 3.462-5.502 0-9.822-2.028-12.963-6.085-3.762-4.883-5.644-12.838-5.644-23.861Zm7.202 0c0 9.636 1.096 16.048 3.289 19.237 2.193 3.19 4.898 4.785 8.116 4.785s5.924-1.602 8.116-4.805c2.193-3.203 3.29-9.608 3.29-19.217 0-9.661-1.097-16.079-3.29-19.256-2.192-3.176-4.924-4.764-8.193-4.764-3.218 0-5.788 1.402-7.708 4.203-2.413 3.577-3.62 10.183-3.62 19.817Zm-7.202 84.674c0-6','.94.694-12.524 2.083-16.754 1.388-4.231 3.452-7.493 6.189-9.789 2.738-2.296 6.183-3.443 10.335-3.443 3.063 0 5.749.634 8.058 1.902 2.31 1.267 4.218 3.096 5.723 5.484 1.504 2.389 2.686 5.298 3.542 8.728.856 3.43 1.285 8.053 1.285 13.872 0 6.886-.688 12.444-2.064 16.675-1.375 4.23-3.432 7.499-6.169 9.808-2.738 2.308-6.196 3.462-10.375 3.462-5.502 0-9.822-2.028-12.963-6.084-3.762-4.884-5.644-12.838-5.644-23.861Zm7.202 0c0 9.635 1.096 16.047 3.289 19.236 2.193 3.19 4.898 4.785 8.116 4.785s5.924-1.602 8.116-4.805c2.193-3.203 3.29-9.608 3.29-19.216 0-9.662-1.097-16.08-3.29-19.257-2.192-3.176-4.924-4.764-8.193-4.764-3.218 0-5.788 1.402-7.708 4.203-2.413 3.577-3.62 10.183-3.62 19.818Zm37.136 0c0-6.94.695-12.524 2.083-16.754 1.389-4.231 3.451-7.493 6.19-9.789 2.737-2.296 6.182-3.443 10.335-3.443 3.','062 0 5.748.634 8.058 1.902 2.309 1.267 4.217 3.096 5.722 5.484 1.505 2.389 2.686 5.298 3.543 8.728.856 3.43 1.285 8.053 1.285 13.872 0 6.886-.689 12.444-2.064 16.675-1.376 4.23-3.432 7.499-6.17 9.808-2.738 2.308-6.196 3.462-10.374 3.462-5.502 0-9.823-2.028-12.963-6.084-3.764-4.884-5.645-12.838-5.645-23.861Zm7.202 0c0 9.635 1.097 16.047 3.29 19.236 2.193 3.19 4.898 4.785 8.116 4.785s5.923-1.602 8.116-4.805c2.193-3.203 3.29-9.608 3.29-19.216 0-9.662-1.097-16.08-3.29-19.257-2.193-3.176-4.924-4.764-8.194-4.764-3.218 0-5.788 1.402-7.708 4.203-2.414 3.577-3.62 10.183-3.62 19.818Zm63.529 28.944h-7.006v-45.919c-1.687 1.655-3.899 3.31-6.638 4.964-2.737 1.655-5.196 2.897-7.377 3.724v-6.966c3.919-1.895 7.345-4.191 10.277-6.886 2.934-2.696 5.01-5.311 6.229-7.847h4.515v58.93Zm-88.676 84.673h-7.007v-45','.919c-1.687 1.655-3.899 3.31-6.637 4.965-2.739 1.654-5.198 2.896-7.377 3.723v-6.966c3.919-1.895 7.344-4.191 10.277-6.886 2.932-2.696 5.008-5.311 6.228-7.847h4.516v58.93Zm38.422 0h-7.008v-45.919c-1.686 1.655-3.899 3.31-6.636 4.965-2.739 1.654-5.198 2.896-7.377 3.723v-6.966c3.918-1.895 7.343-4.191 10.277-6.886 2.932-2.696 5.008-5.311 6.227-7.847h4.517v58.93Zm-64.815 55.729c0-6.94.694-12.524 2.083-16.754 1.388-4.231 3.452-7.493 6.189-9.789 2.738-2.295 6.183-3.443 10.335-3.443 3.063 0 5.749.634 8.058 1.902 2.31 1.267 4.218 3.096 5.723 5.485 1.504 2.388 2.686 5.297 3.542 8.727.856 3.43 1.285 8.053 1.285 13.872 0 6.886-.688 12.444-2.064 16.675-1.375 4.23-3.432 7.499-6.169 9.808-2.738 2.308-6.196 3.462-10.375 3.462-5.502 0-9.822-2.027-12.963-6.084-3.762-4.884-5.644-12.838-5.644-23.861Zm7.202 0c0 ','9.635 1.096 16.047 3.289 19.237 2.193 3.189 4.898 4.784 8.116 4.784s5.924-1.602 8.116-4.805c2.193-3.203 3.29-9.608 3.29-19.216 0-9.661-1.097-16.08-3.29-19.257-2.192-3.176-4.924-4.764-8.193-4.764-3.218 0-5.788 1.402-7.708 4.204-2.413 3.576-3.62 10.182-3.62 19.817Zm63.529 28.946h-7.007v-45.921c-1.686 1.655-3.899 3.31-6.637 4.965-2.738 1.654-5.197 2.896-7.376 3.723v-6.966c3.919-1.895 7.344-4.191 10.276-6.886 2.933-2.696 5.009-5.311 6.229-7.847h4.515v58.932Zm17.946-28.946c0-6.94.694-12.524 2.082-16.754 1.388-4.231 3.452-7.493 6.189-9.789 2.739-2.295 6.184-3.443 10.337-3.443 3.061 0 5.748.634 8.057 1.902 2.31 1.267 4.217 3.096 5.722 5.485 1.506 2.388 2.686 5.297 3.543 8.727.857 3.43 1.284 8.053 1.284 13.872 0 6.886-.687 12.444-2.062 16.675-1.376 4.23-3.433 7.499-6.171 9.808-2.738 2.308-6.196 3.','462-10.373 3.462-5.502 0-9.824-2.027-12.963-6.084-3.764-4.884-5.645-12.838-5.645-23.861Zm7.202 0c0 9.635 1.096 16.047 3.289 19.237 2.193 3.189 4.899 4.784 8.117 4.784 3.217 0 5.923-1.602 8.116-4.805 2.193-3.203 3.289-9.608 3.289-19.216 0-9.661-1.096-16.08-3.289-19.257-2.193-3.176-4.924-4.764-8.195-4.764-3.218 0-5.787 1.402-7.707 4.204-2.414 3.576-3.62 10.182-3.62 19.817Zm-77.31 54.687c5.527 0 9.848 2.029 12.963 6.086 3.71 4.803 5.566 12.77 5.566 23.9 0 11.104-1.869 19.083-5.606 23.941-3.088 4.004-7.396 6.004-12.923 6.004-5.554 0-10.031-2.194-13.431-6.584-3.399-4.392-5.099-12.218-5.099-23.481 0-11.049 1.869-19.003 5.605-23.861 3.089-4.003 7.397-6.005 12.925-6.005Zm0 9.328c-1.324 0-2.505.434-3.543 1.301-1.038.868-1.842 2.423-2.414 4.664-.752 2.909-1.128 7.808-1.128 14.693 0 6.886.337 11.617 '));
      
        return render;
      }

    function renderFn6(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('1.011 14.193.675 2.575 1.525 4.29 2.551 5.144 1.025.854 2.199 1.281 3.523 1.281 1.323 0 2.503-.434 3.542-1.302 1.038-.866 1.843-2.421 2.413-4.663.753-2.883 1.129-7.767 1.129-14.653 0-6.885-.338-11.616-1.012-14.192-.675-2.576-1.525-4.297-2.55-5.165-1.025-.867-2.199-1.301-3.522-1.301Zm9.497 134.277h-10.938v-42.397c-3.997 3.843-8.707 6.685-14.131 8.527v-10.208c2.855-.962 5.956-2.783 9.304-5.465 3.348-2.683 5.645-5.812 6.89-9.389h8.875v58.932Zm34.841-58.932c5.527 0 9.848 2.029 12.962 6.086 3.712 4.803 5.568 12.77 5.568 23.9 0 11.104-1.869 19.083-5.606 23.941-3.088 4.004-7.397 6.006-12.924 6.006-5.554 0-10.03-2.196-13.43-6.586-3.399-4.391-5.099-12.218-5.099-23.481 0-11.049 1.867-19.003 5.605-23.861 3.089-4.003 7.396-6.005 12.924-6.005Zm0 9.328c-1.324 0-2.504.434-3.542 1.301-1.039.868-1.843 2.42','3-2.414 4.664-.753 2.909-1.128 7.808-1.128 14.693 0 6.886.336 11.617 1.011 14.193.675 2.575 1.525 4.29 2.55 5.144 1.025.854 2.199 1.281 3.523 1.281 1.324 0 2.504-.434 3.543-1.301 1.037-.867 1.841-2.422 2.413-4.664.753-2.883 1.129-7.767 1.129-14.653 0-6.885-.338-11.616-1.012-14.192-.675-2.576-1.525-4.297-2.55-5.165-1.025-.867-2.199-1.301-3.523-1.301Zm44.338-9.328c5.528 0 9.849 2.029 12.963 6.086 3.711 4.803 5.567 12.77 5.567 23.9 0 11.104-1.869 19.083-5.606 23.941-3.088 4.004-7.396 6.006-12.924 6.006-5.554 0-10.03-2.196-13.43-6.586-3.4-4.391-5.099-12.218-5.099-23.481 0-11.049 1.868-19.003 5.606-23.861 3.087-4.003 7.395-6.005 12.923-6.005Zm0 9.328c-1.323 0-2.504.434-3.542 1.301-1.038.868-1.843 2.423-2.413 4.664-.753 2.909-1.13 7.808-1.13 14.693 0 6.886.338 11.617 1.013 14.193.674 2.575 1.524',' 4.29 2.549 5.144 1.025.854 2.2 1.281 3.523 1.281s2.505-.434 3.542-1.301c1.039-.867 1.843-2.422 2.414-4.664.752-2.883 1.129-7.767 1.129-14.653 0-6.885-.337-11.616-1.012-14.192-.674-2.576-1.524-4.297-2.549-5.165-1.025-.867-2.201-1.301-3.524-1.301Zm-79.179 134.277h-10.938v-42.397c-3.997 3.843-8.707 6.686-14.131 8.527v-10.208c2.855-.962 5.956-2.783 9.304-5.465s5.645-5.812 6.89-9.388h8.875v58.931Zm0 84.673h-10.938v-42.397c-3.997 3.843-8.707 6.686-14.131 8.527v-10.208c2.855-.962 5.956-2.783 9.304-5.465s5.645-5.812 6.89-9.388h8.875v58.931Zm34.841-58.931c5.527 0 9.848 2.028 12.962 6.085 3.712 4.803 5.568 12.77 5.568 23.901 0 11.103-1.869 19.082-5.606 23.94-3.088 4.004-7.397 6.006-12.924 6.006-5.554 0-10.03-2.196-13.43-6.586-3.399-4.39-5.099-12.218-5.099-23.48 0-11.05 1.867-19.004 5.605-23.861 3.0','89-4.004 7.396-6.005 12.924-6.005Zm0 9.327c-1.324 0-2.504.434-3.542 1.302-1.039.867-1.843 2.422-2.414 4.663-.753 2.91-1.128 7.808-1.128 14.694 0 6.885.336 11.616 1.011 14.192.675 2.575 1.525 4.29 2.55 5.144 1.025.854 2.199 1.281 3.523 1.281 1.324 0 2.504-.434 3.543-1.301 1.037-.867 1.841-2.422 2.413-4.664.753-2.883 1.129-7.767 1.129-14.652 0-6.886-.338-11.617-1.012-14.193-.675-2.576-1.525-4.297-2.55-5.164-1.025-.868-2.199-1.302-3.523-1.302Zm53.837 49.604h-10.939v-42.397c-3.997 3.843-8.706 6.686-14.131 8.527v-10.208c2.855-.962 5.956-2.783 9.304-5.465 3.347-2.682 5.644-5.812 6.89-9.388h8.876v58.931Zm-88.678 84.673h-10.938v-42.397c-3.997 3.843-8.707 6.686-14.131 8.527V864.87c2.855-.962 5.956-2.783 9.304-5.465s5.645-5.812 6.89-9.388h8.875v58.931Zm34.841-58.931c5.527 0 9.848 2.028 12.962 6.085 ','3.712 4.804 5.568 12.77 5.568 23.901 0 11.103-1.869 19.082-5.606 23.94-3.088 4.004-7.397 6.006-12.924 6.006-5.554 0-10.03-2.196-13.43-6.586-3.399-4.39-5.099-12.218-5.099-23.48 0-11.05 1.867-19.004 5.605-23.861 3.089-4.004 7.396-6.005 12.924-6.005Zm0 9.327c-1.324 0-2.504.435-3.542 1.302-1.039.867-1.843 2.422-2.414 4.664-.753 2.909-1.128 7.807-1.128 14.693 0 6.885.336 11.616 1.011 14.192.675 2.576 1.525 4.29 2.55 5.144 1.025.854 2.199 1.281 3.523 1.281 1.324 0 2.504-.434 3.543-1.301 1.037-.867 1.841-2.422 2.413-4.664.753-2.883 1.129-7.767 1.129-14.652 0-6.886-.338-11.617-1.012-14.193-.675-2.576-1.525-4.297-2.55-5.164s-2.199-1.302-3.523-1.302Zm75.986 49.604h-10.938v-42.397c-3.997 3.843-8.707 6.686-14.131 8.527V864.87c2.854-.962 5.955-2.783 9.304-5.465 3.347-2.682 5.645-5.812 6.89-9.388h8.875v','58.931ZM147.692 934.69c5.527 0 9.848 2.028 12.963 6.085 3.71 4.805 5.566 12.771 5.566 23.901 0 11.103-1.869 19.082-5.606 23.94-3.088 4.004-7.396 6.006-12.923 6.006-5.554 0-10.031-2.196-13.431-6.586-3.399-4.39-5.099-12.218-5.099-23.48 0-11.05 1.869-19.003 5.605-23.861 3.089-4.003 7.397-6.005 12.925-6.005Zm0 9.327c-1.324 0-2.505.435-3.543 1.302-1.038.867-1.842 2.422-2.414 4.664-.752 2.909-1.128 7.807-1.128 14.693 0 6.885.337 11.616 1.011 14.192.675 2.576 1.525 4.29 2.551 5.144 1.025.854 2.199 1.281 3.523 1.281 1.323 0 2.503-.434 3.542-1.3 1.038-.868 1.843-2.423 2.413-4.665.753-2.883 1.129-7.767 1.129-14.652 0-6.886-.338-11.617-1.012-14.193-.675-2.575-1.525-4.297-2.55-5.164s-2.199-1.302-3.522-1.302Zm44.338-9.327c5.527 0 9.848 2.028 12.962 6.085 3.712 4.805 5.568 12.771 5.568 23.901 0 11.103-1','.869 19.082-5.606 23.94-3.088 4.004-7.397 6.006-12.924 6.006-5.554 0-10.03-2.196-13.43-6.586-3.399-4.39-5.099-12.218-5.099-23.48 0-11.05 1.867-19.003 5.605-23.861 3.089-4.003 7.396-6.005 12.924-6.005Zm0 9.327c-1.324 0-2.504.435-3.542 1.302-1.039.867-1.843 2.422-2.414 4.664-.753 2.909-1.128 7.807-1.128 14.693 0 6.885.336 11.616 1.011 14.192.675 2.576 1.525 4.29 2.55 5.144 1.025.854 2.199 1.281 3.523 1.281 1.324 0 2.504-.434 3.543-1.3 1.037-.868 1.841-2.423 2.413-4.665.753-2.883 1.129-7.767 1.129-14.652 0-6.886-.338-11.617-1.012-14.193-.675-2.575-1.525-4.297-2.55-5.164s-2.199-1.302-3.523-1.302Zm-44.338 75.343c5.527 0 9.848 2.03 12.963 6.09 3.71 4.8 5.566 12.77 5.566 23.9 0 11.1-1.869 19.08-5.606 23.94-3.088 4-7.396 6-12.923 6-5.554 0-10.031-2.19-13.431-6.58-3.399-4.39-5.099-12.22-5.099-23.48',' 0-11.05 1.869-19 5.605-23.86 3.089-4.01 7.397-6.01 12.925-6.01Zm0 9.33c-1.324 0-2.505.43-3.543 1.3-1.038.87-1.842 2.42-2.414 4.67-.752 2.9-1.128 7.8-1.128 14.69s.337 11.61 1.011 14.19c.675 2.58 1.525 4.29 2.551 5.14 1.025.86 2.199 1.29 3.523 1.29 1.323 0 2.503-.44 3.542-1.3 1.038-.87 1.843-2.43 2.413-4.67.753-2.88 1.129-7.76 1.129-14.65 0-6.89-.338-11.62-1.012-14.19-.675-2.58-1.525-4.3-2.55-5.17-1.025-.87-2.199-1.3-3.522-1.3Zm53.836 49.6h-10.939v-42.39c-3.996 3.84-8.706 6.68-14.13 8.52v-10.2c2.854-.97 5.956-2.79 9.303-5.47 3.348-2.68 5.645-5.81 6.891-9.39h8.875v58.93Zm-53.836 25.74c5.527 0 9.848 2.04 12.963 6.1 3.71 4.8 5.566 12.76 5.566 23.89 0 11.11-1.869 19.08-5.606 23.95-3.088 3.99-7.396 6-12.923 6-5.554 0-10.031-2.2-13.431-6.59-3.399-4.39-5.099-12.21-5.099-23.48 0-11.05 1.869-19 5.60'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn5(colors),renderFn6(colors)));
      
        return render;
      }
}