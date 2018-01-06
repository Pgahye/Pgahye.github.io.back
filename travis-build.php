




<?php
// Use in the "Post-Receive URLs" section of your GitHub repo.
if ( $_SERVER['HTTP_X_GITHUB_EVENT'] == 'push' ) {
  shell_exec( 'PWD=$(pwd)' );
  shell_exec( '"$PWD"/travis-build.sh' );
}
?>hi
