//
// A simple example to perform filename completion, then exit.
//
// Compile with:
//  patscc.exe -DATS_MEMALLOC_LIBC -IIATS ~/ats2-lang-contrib-code/contrib \
//  filename_completion.dats -lreadline
//

#include "share/atspre_staload.hats"

staload "libats-bbarker/readline/SATS/readline.sats"

(* ****** ****** *)

implement
main0 () = {
  val () = println! ("Starting readline ...")
  // c code:   printf( "%s\n", readline( "test> " ) );
  val () = println! (readline_string("test>"))
  val prmpt = "test2> "
  val prmpt2 = string0_copy (prmpt)  
  //val () = println! (readline_strptr( prmpt2 ))
  val () = println! (readline_string_n("test3> "))
  val () = println! (readline( "test4> "))    
  //Apparently, readline does not play nice with this free (test2):
  val () = strptr_free(prmpt2)
  
} // end of [main0]

(* ****** ****** *)

(* end of [filename_completion.dats] *)
