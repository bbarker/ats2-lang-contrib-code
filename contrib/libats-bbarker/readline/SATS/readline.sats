(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** Copyright (C) 2014 Brandon Barker.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of the GNU LESSER GENERAL PUBLIC LICENSE as published by the
** Free Software Foundation; either version 2.1, or (at your option)  any
** later version.
**
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
**
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)

(*
(* Author: Brandon Barker *)
(* Authoremail: brandonDOTbarkerATgmailDOTcom *)
(* Start time: January, 2014 *)
*)

(* ****** ****** *)

#define ATS_PACKNAME "ATSCNTRB.readline"
#define ATS_STALOADFLAG 0 // no static loading at run-time
#define ATS_EXTERN_PREFIX "atscntrb_readline_" // prefix for external names

(* ****** ****** *)

%{#
#include "libats-bbarker/readline/CATS/readline.cats"
%} // end of [%{#]


(* ****** ****** *)

symintr readline

fun readline_string
  (prompt: string): string = "mac#readline"
overload readline with readline_string of 0

fun readline_string_n
  (prompt: string): string = "mac#readline"
overload readline with readline_string_n of 10

fun readline_strptr
  (prompt: strptr): string = "mac#readline"
overload readline with readline_strptr of 100

fun readline_strptr_l
  {l:addr} (prompt: !strptr): string = "mac#readline"
overload readline with readline_strptr_l of 1000
