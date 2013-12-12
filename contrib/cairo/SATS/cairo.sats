(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Postiats - Unleashing the Potential of Types!
** Copyright (C) 2011-2012 Hongwei Xi, ATS Trustful Software, Inc.
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
** Start Time: May, 2012
** Author: Hongwei Xi (gmhwxi AT gmail DOT com)
*)

(* ****** ****** *)
//
// API for cairo in ATS // this one is based on cairo-1.12
//
(* ****** ****** *)

%{#
#include "cairo/CATS/cairo.cats"
%} // end of [%{#]

(* ****** ****** *)

#define ATS_PACKNAME "ATSCNTRB.cairo"
#define ATS_STALOADFLAG 0 // no static loading at run-time
#define ATS_EXTERN_PREFIX "atscntrb_" // prefix for external names

(* ****** ****** *)

#include "./mybasis.sats"

(* ****** ****** *)

fun cairo_version ((*void*)): int = "mac#%"
fun cairo_version_string ((*void*)): string = "mac#%"

(* ****** ****** *)

macdef CAIRO_VERSION_MAJOR = $extval (int, "CAIRO_VERSION_MAJOR")
macdef CAIRO_VERSION_MINOR = $extval (int, "CAIRO_VERSION_MINOR")
macdef CAIRO_VERSION_MICRO = $extval (int, "CAIRO_VERSION_MICRO")

(* ****** ****** *)

fun CAIRO_VERSION_ENCODE
  (major: int, minor: int, micro: int): int = "mac#CAIRO_VERSION_ENCODE"
// end of [CAIRO_VERSION_ENCODE]

(* ****** ****** *)

castfn
cairo_ref2ptr{l:addr}
  (cr: !cairo_ref(l)):<> ptr (l)
overload ptrcast with cairo_ref2ptr

castfn
cairo_surface_ref2ptr{l:addr}
  (cr: !cairo_surface_ref(l)):<> ptr (l)
overload ptrcast with cairo_surface_ref2ptr

(* ****** ****** *)

(*
Drawing
cairo_t — The cairo drawing context
Paths — Creating paths and manipulating path data
cairo_pattern_t — Sources for drawing
Regions — Representing a pixel-aligned area
Transformations — Manipulating the current transformation matrix
text — Rendering text and glyphs
Raster Sources — Supplying arbitrary image data 
*)
#include "./Drawing/cairo-cairo-t.sats"
#include "./Drawing/cairo-Paths.sats"
#include "./Drawing/cairo-cairo-pattern-t.sats"
#include "./Drawing/cairo-Regions.sats"
#include "./Drawing/cairo-Transformations.sats"
#include "./Drawing/cairo-text.sats"
#include "./Drawing/cairo-Raster-Sources.sats"

(* ****** ****** *)

(*
Fonts
cairo_font_face_t — Base class for font faces
cairo_scaled_font_t — Font face at particular size and options
cairo_font_options_t — How a font should be rendered
FreeType Fonts — Font support for FreeType
Win32 Fonts — Font support for Microsoft Windows
Quartz (CGFont) Fonts — Font support via CGFont on OS X
User Fonts — Font support with font data provided by the user 
*)
#include "./Fonts/cairo-cairo-font-face-t.sats"

(* ****** ****** *)

(*
Surfaces
cairo_device_t — interface to underlying rendering system
cairo_surface_t — Base class for surfaces
Image Surfaces — Rendering to memory buffers
PNG Support — Reading and writing PNG images
PDF Surfaces — Rendering PDF documents
PostScript Surfaces — Rendering PostScript documents
Recording Surfaces — Records all drawing operations
Win32 Surfaces — Microsoft Windows surface support
SVG Surfaces — Rendering SVG documents
Quartz Surfaces — Rendering to Quartz surfaces
XCB Surfaces — X Window System rendering using the XCB library
XLib Surfaces — X Window System rendering using XLib
XLib-XRender Backend — X Window System rendering using XLib and the X Render extension
Script Surfaces — Rendering to replayable scripts 
*)
#include "./Surfaces/cairo-cairo-device-t.sats"
#include "./Surfaces/cairo-cairo-surface-t.sats"
#include "./Surfaces/cairo-Image-Surfaces.sats"
#include "./Surfaces/cairo-PNG-Support.sats"
#include "./Surfaces/cairo-PDF-Surfaces.sats"
#include "./Surfaces/cairo-PostScript-Surfaces.sats"

(* ****** ****** *)

(*
Utilities
cairo_matrix_t — Generic matrix operations
Error handling — Decoding cairo's status
Types — Generic data types 
*)
#include "./Utilities/cairo-cairo-matrix-t.sats"
#include "./Utilities/cairo-Error-Handling.sats"
#include "./Utilities/cairo-Types.sats"

(* ****** ****** *)

(* end of [cairo.sats] *)
