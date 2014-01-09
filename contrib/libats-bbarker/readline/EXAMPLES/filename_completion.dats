//
// A simple example to perform filename completion, then exit.
//

staload "libats-bbarker/readline/SATS/readline.sats"

(* ****** ****** *)

implement
main0 () = {
  val () = println! ("Starting readline ...")
  // c code:   printf( "%s\n", readline( "test> " ) );
  val () = println! (readline( "test> "))
} // end of [main0]

(* ****** ****** *)

(* end of [filename_completion.dats] *)
