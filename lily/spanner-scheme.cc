/* 
  spanner-scheme.cc -- implement Spanner bindings.
  
  source file of the GNU LilyPond music typesetter
  
  (c) 2007 Han-Wen Nienhuys <hanwen@lilypond.org>
  
*/

#include "spanner.hh"
#include "item.hh"

LY_DEFINE (ly_spanner_bound, "ly:spanner-bound",
	   2, 0, 0, (SCM slur, SCM dir),
	   "Get one of the bounds of @var{spanner}. @var{dir} is @code{-1} "
	   "for left, and @code{1} for right.")
{
  Spanner *sl = dynamic_cast<Spanner *> (unsmob_grob (slur));
  SCM_ASSERT_TYPE (sl, slur, SCM_ARG1, __FUNCTION__, "spanner grob");
  SCM_ASSERT_TYPE (is_direction (dir), slur, SCM_ARG2, __FUNCTION__, "dir");
  return sl->get_bound (to_dir (dir))->self_scm ();
}

/* TODO: maybe we should return a vector -- random access is more
   logical for this list? */
LY_DEFINE (ly_spanner_broken_into, "ly:spanner-broken-into",
	   1, 0, 0, (SCM spanner),
	   "Return broken-into list for @var{spanner}.")
{
  Spanner *me = dynamic_cast<Spanner *> (unsmob_grob (spanner));
  SCM_ASSERT_TYPE (me, spanner, SCM_ARG1, __FUNCTION__, "spanner");

  SCM s = SCM_EOL;
  for (vsize i = me->broken_intos_.size (); i--;)
    s = scm_cons (me->broken_intos_[i]->self_scm (), s);
  return s;
}

LY_DEFINE (ly_spanner_p, "ly:spanner?",
	   1, 0, 0, (SCM g),
	   "Is  @var{g} a spanner object?")
{
  Grob *me = unsmob_grob (g);
  bool b = dynamic_cast<Spanner *> (me);

  return ly_bool2scm (b);
}
