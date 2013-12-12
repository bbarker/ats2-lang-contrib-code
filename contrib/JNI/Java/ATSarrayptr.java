/*
** arrayptr in ATS for use in Java
*/

/* ****** ****** */

public
class
ATSarrayptr
{
//
    long A = 0 ;
//
    ATSarrayptr (int asz) { A = _make_elt (asz, 0) ; }
    ATSarrayptr (int asz, long x0) { A = _make_elt (asz, x0) ; }
//
    void free () { _free (A) ; return ; }
//
    long get_at (int i) { return _get_at(A, i) ; }
//
    void set_at (int i, long x) { _set_at(A, i, x) ; return ; }
//
    private
    static
    native
    long
    _make_elt (long asz, long elt) ;
//
    private static native void _free (long Array) ;
//
    private
    static
    native
    long _get_at (long Array, int index) ;
//
    private
    static
    native
    void _set_at (long Array, int index, long elt) ;
//
} // end of [ATSarrayptr]

/* ****** ****** */

/* end of [ATSarrayptr.java] */
