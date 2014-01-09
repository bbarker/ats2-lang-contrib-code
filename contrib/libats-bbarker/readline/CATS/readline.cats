/***********************************************************************/
/*                                                                     */
/*                         Applied Type System                         */
/*                                                                     */
/***********************************************************************/

/* (*
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
*) */

/* ****** ****** */

/*
(* Author: Brandon Barker *)
(* Authoremail: brandonDOTbarkerATgmailDOTcom *)
(* Start time: January, 2014 *)
*/

/* ****** ****** */

#ifndef READLINE_CATS
#define READLINE_CATS
#endif

/* ****** ****** */

#include <readline/readline.h>

/* ****** ****** */

#define atscntrb_readline_version RL_READLINE_VERSION
#define atscntrb_readline_version_major RL_VERSION_MAJOR
#define atscntrb_readline_version_minor RL_VERSION_MINOR

/* ****** ****** */
//
// commonly used functions
//
#define atscntrb_readline_readline readline
