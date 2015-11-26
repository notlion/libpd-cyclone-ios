LOCAL_PATH := $(call my-dir)/..

include $(CLEAR_VARS)

CYC_DIR := $(LOCAL_PATH)/deps/cyclone-0.1-alpha55
PD_DIR := $(LOCAL_PATH)/deps/libpd/pure-data

LOCAL_MODULE := cyclone
LOCAL_CFLAGS := \
	-fsigned-char \
	-Wno-pointer-sign \
	-Wno-format-security \
	-Wno-parentheses \
	-Wno-implicit-function-declaration

LOCAL_DISABLE_FORMAT_STRING_CHECKS := true

LOCAL_C_INCLUDES := \
	$(CYC_DIR)/shared \
  $(PD_DIR)/src

LOCAL_SRC_FILES := \
	$(CYC_DIR)/cyclone/hammer/accum.c \
	$(CYC_DIR)/cyclone/hammer/acos.c \
	$(CYC_DIR)/cyclone/hammer/active.c \
	$(CYC_DIR)/cyclone/hammer/allhammers.c \
	$(CYC_DIR)/cyclone/hammer/anal.c \
	$(CYC_DIR)/cyclone/hammer/Append.c \
	$(CYC_DIR)/cyclone/hammer/asin.c \
	$(CYC_DIR)/cyclone/hammer/bangbang.c \
	$(CYC_DIR)/cyclone/hammer/bondo.c \
	$(CYC_DIR)/cyclone/hammer/Borax.c \
	$(CYC_DIR)/cyclone/hammer/Bucket.c \
	$(CYC_DIR)/cyclone/hammer/buddy.c \
	$(CYC_DIR)/cyclone/hammer/capture.c \
	$(CYC_DIR)/cyclone/hammer/cartopol.c \
	$(CYC_DIR)/cyclone/hammer/Clip.c \
	$(CYC_DIR)/cyclone/hammer/coll.c \
	$(CYC_DIR)/cyclone/hammer/comment.c \
	$(CYC_DIR)/cyclone/hammer/cosh.c \
	$(CYC_DIR)/cyclone/hammer/counter.c \
	$(CYC_DIR)/cyclone/hammer/cycle.c \
	$(CYC_DIR)/cyclone/hammer/decide.c \
	$(CYC_DIR)/cyclone/hammer/Decode.c \
	$(CYC_DIR)/cyclone/hammer/drunk.c \
	$(CYC_DIR)/cyclone/hammer/flush.c \
	$(CYC_DIR)/cyclone/hammer/forward.c \
	$(CYC_DIR)/cyclone/hammer/fromsymbol.c \
	$(CYC_DIR)/cyclone/hammer/funbuff.c \
	$(CYC_DIR)/cyclone/hammer/funnel.c \
	$(CYC_DIR)/cyclone/hammer/gate.c \
	$(CYC_DIR)/cyclone/hammer/grab.c \
	$(CYC_DIR)/cyclone/hammer/hammer.c \
	$(CYC_DIR)/cyclone/hammer/Histo.c \
	$(CYC_DIR)/cyclone/hammer/iter.c \
	$(CYC_DIR)/cyclone/hammer/match.c \
	$(CYC_DIR)/cyclone/hammer/maximum.c \
	$(CYC_DIR)/cyclone/hammer/mean.c \
	$(CYC_DIR)/cyclone/hammer/midiflush.c \
	$(CYC_DIR)/cyclone/hammer/midiformat.c \
	$(CYC_DIR)/cyclone/hammer/midiparse.c \
	$(CYC_DIR)/cyclone/hammer/minimum.c \
	$(CYC_DIR)/cyclone/hammer/mousefilter.c \
	$(CYC_DIR)/cyclone/hammer/MouseState.c \
	$(CYC_DIR)/cyclone/hammer/mtr.c \
	$(CYC_DIR)/cyclone/hammer/next.c \
	$(CYC_DIR)/cyclone/hammer/offer.c \
	$(CYC_DIR)/cyclone/hammer/onebang.c \
	$(CYC_DIR)/cyclone/hammer/past.c \
	$(CYC_DIR)/cyclone/hammer/Peak.c \
	$(CYC_DIR)/cyclone/hammer/poltocar.c \
	$(CYC_DIR)/cyclone/hammer/prepend.c \
	$(CYC_DIR)/cyclone/hammer/prob.c \
	$(CYC_DIR)/cyclone/hammer/pv.c \
	$(CYC_DIR)/cyclone/hammer/seq.c \
	$(CYC_DIR)/cyclone/hammer/sinh.c \
	$(CYC_DIR)/cyclone/hammer/speedlim.c \
	$(CYC_DIR)/cyclone/hammer/spell.c \
	$(CYC_DIR)/cyclone/hammer/split.c \
	$(CYC_DIR)/cyclone/hammer/spray.c \
	$(CYC_DIR)/cyclone/hammer/sprintf.c \
	$(CYC_DIR)/cyclone/hammer/substitute.c \
	$(CYC_DIR)/cyclone/hammer/sustain.c \
	$(CYC_DIR)/cyclone/hammer/switch.c \
	$(CYC_DIR)/cyclone/hammer/Table.c \
	$(CYC_DIR)/cyclone/hammer/tanh.c \
	$(CYC_DIR)/cyclone/hammer/testmess.c \
	$(CYC_DIR)/cyclone/hammer/thresh.c \
	$(CYC_DIR)/cyclone/hammer/TogEdge.c \
	$(CYC_DIR)/cyclone/hammer/tosymbol.c \
	$(CYC_DIR)/cyclone/hammer/Trough.c \
	$(CYC_DIR)/cyclone/hammer/universal.c \
	$(CYC_DIR)/cyclone/hammer/urn.c \
	$(CYC_DIR)/cyclone/hammer/Uzi.c \
	$(CYC_DIR)/cyclone/hammer/xbendin.c \
	$(CYC_DIR)/cyclone/hammer/xbendin2.c \
	$(CYC_DIR)/cyclone/hammer/xbendout.c \
	$(CYC_DIR)/cyclone/hammer/xbendout2.c \
	$(CYC_DIR)/cyclone/hammer/xnotein.c \
	$(CYC_DIR)/cyclone/hammer/xnoteout.c \
	$(CYC_DIR)/cyclone/hammer/zl.c \
	$(CYC_DIR)/cyclone/shadow/cyclone.c \
	$(CYC_DIR)/cyclone/shadow/dummies.c \
	$(CYC_DIR)/cyclone/shadow/maxmode.c \
	$(CYC_DIR)/cyclone/shadow/nettles.c \
	$(CYC_DIR)/cyclone/sickle/abs.c \
	$(CYC_DIR)/cyclone/sickle/acos.c \
	$(CYC_DIR)/cyclone/sickle/acosh.c \
	$(CYC_DIR)/cyclone/sickle/allpass.c \
	$(CYC_DIR)/cyclone/sickle/allsickles.c \
	$(CYC_DIR)/cyclone/sickle/asin.c \
	$(CYC_DIR)/cyclone/sickle/asinh.c \
	$(CYC_DIR)/cyclone/sickle/atan.c \
	$(CYC_DIR)/cyclone/sickle/atan2.c \
	$(CYC_DIR)/cyclone/sickle/atanh.c \
	$(CYC_DIR)/cyclone/sickle/average.c \
	$(CYC_DIR)/cyclone/sickle/avg.c \
	$(CYC_DIR)/cyclone/sickle/bitand.c \
	$(CYC_DIR)/cyclone/sickle/bitnot.c \
	$(CYC_DIR)/cyclone/sickle/bitor.c \
	$(CYC_DIR)/cyclone/sickle/bitshift.c \
	$(CYC_DIR)/cyclone/sickle/bitxor.c \
	$(CYC_DIR)/cyclone/sickle/buffir.c \
	$(CYC_DIR)/cyclone/sickle/capture.c \
	$(CYC_DIR)/cyclone/sickle/cartopol.c \
	$(CYC_DIR)/cyclone/sickle/change.c \
	$(CYC_DIR)/cyclone/sickle/click.c \
	$(CYC_DIR)/cyclone/sickle/Clip.c \
	$(CYC_DIR)/cyclone/sickle/comb.c \
	$(CYC_DIR)/cyclone/sickle/cosh.c \
	$(CYC_DIR)/cyclone/sickle/cosx.c \
	$(CYC_DIR)/cyclone/sickle/count.c \
	$(CYC_DIR)/cyclone/sickle/curve.c \
	$(CYC_DIR)/cyclone/sickle/cycle.c \
	$(CYC_DIR)/cyclone/sickle/delay.c \
	$(CYC_DIR)/cyclone/sickle/delta.c \
	$(CYC_DIR)/cyclone/sickle/deltaclip.c \
	$(CYC_DIR)/cyclone/sickle/edge.c \
	$(CYC_DIR)/cyclone/sickle/frameaccum.c \
	$(CYC_DIR)/cyclone/sickle/framedelta.c \
	$(CYC_DIR)/cyclone/sickle/index.c \
	$(CYC_DIR)/cyclone/sickle/kink.c \
	$(CYC_DIR)/cyclone/sickle/Line.c \
	$(CYC_DIR)/cyclone/sickle/linedrive.c \
	$(CYC_DIR)/cyclone/sickle/log.c \
	$(CYC_DIR)/cyclone/sickle/lookup.c \
	$(CYC_DIR)/cyclone/sickle/lores.c \
	$(CYC_DIR)/cyclone/sickle/matrix.c \
	$(CYC_DIR)/cyclone/sickle/maximum.c \
	$(CYC_DIR)/cyclone/sickle/minimum.c \
	$(CYC_DIR)/cyclone/sickle/minmax.c \
	$(CYC_DIR)/cyclone/sickle/mstosamps.c \
	$(CYC_DIR)/cyclone/sickle/onepole.c \
	$(CYC_DIR)/cyclone/sickle/overdrive.c \
	$(CYC_DIR)/cyclone/sickle/peakamp.c \
	$(CYC_DIR)/cyclone/sickle/peek.c \
	$(CYC_DIR)/cyclone/sickle/phasewrap.c \
	$(CYC_DIR)/cyclone/sickle/pink.c \
	$(CYC_DIR)/cyclone/sickle/play.c \
	$(CYC_DIR)/cyclone/sickle/poke.c \
	$(CYC_DIR)/cyclone/sickle/poltocar.c \
	$(CYC_DIR)/cyclone/sickle/pong.c \
	$(CYC_DIR)/cyclone/sickle/pow.c \
	$(CYC_DIR)/cyclone/sickle/rampsmooth.c \
	$(CYC_DIR)/cyclone/sickle/rand.c \
	$(CYC_DIR)/cyclone/sickle/record.c \
	$(CYC_DIR)/cyclone/sickle/reson.c \
	$(CYC_DIR)/cyclone/sickle/sah.c \
	$(CYC_DIR)/cyclone/sickle/sampstoms.c \
	$(CYC_DIR)/cyclone/sickle/Scope.c \
	$(CYC_DIR)/cyclone/sickle/sickle.c \
	$(CYC_DIR)/cyclone/sickle/sinh.c \
	$(CYC_DIR)/cyclone/sickle/sinx.c \
	$(CYC_DIR)/cyclone/sickle/slide.c \
	$(CYC_DIR)/cyclone/sickle/Snapshot.c \
	$(CYC_DIR)/cyclone/sickle/spike.c \
	$(CYC_DIR)/cyclone/sickle/svf.c \
	$(CYC_DIR)/cyclone/sickle/tanh.c \
	$(CYC_DIR)/cyclone/sickle/tanx.c \
	$(CYC_DIR)/cyclone/sickle/train.c \
	$(CYC_DIR)/cyclone/sickle/trapezoid.c \
	$(CYC_DIR)/cyclone/sickle/triangle.c \
	$(CYC_DIR)/cyclone/sickle/vectral.c \
	$(CYC_DIR)/cyclone/sickle/wave.c \
	$(CYC_DIR)/cyclone/sickle/zerox.c \
	$(CYC_DIR)/shared/common/binport.c \
	$(CYC_DIR)/shared/common/clc.c \
	$(CYC_DIR)/shared/common/dict.c \
	$(CYC_DIR)/shared/common/fitter.c \
	$(CYC_DIR)/shared/common/grow.c \
	$(CYC_DIR)/shared/common/lex.c \
	$(CYC_DIR)/shared/common/loud.c \
	$(CYC_DIR)/shared/common/messtree.c \
	$(CYC_DIR)/shared/common/mifi.c \
	$(CYC_DIR)/shared/common/os.c \
	$(CYC_DIR)/shared/common/patchvalue.c \
	$(CYC_DIR)/shared/common/port.c \
	$(CYC_DIR)/shared/common/props.c \
	$(CYC_DIR)/shared/common/qtree.c \
	$(CYC_DIR)/shared/common/rand.c \
	$(CYC_DIR)/shared/common/vefl.c \
	$(CYC_DIR)/shared/hammer/file.c \
	$(CYC_DIR)/shared/hammer/gui.c \
	$(CYC_DIR)/shared/hammer/tree.c \
	$(CYC_DIR)/shared/shared.c \
	$(CYC_DIR)/shared/sickle/arsic.c \
	$(CYC_DIR)/shared/sickle/sic.c \
	$(CYC_DIR)/shared/toxy/plusbob.c \
	$(CYC_DIR)/shared/toxy/scriptlet.c \
	$(CYC_DIR)/shared/unstable/forky.c \
	$(CYC_DIR)/shared/unstable/fragile.c \
	$(CYC_DIR)/shared/unstable/fringe.c

	# $(CYC_DIR)/pddp/pddplink.c \
	# $(CYC_DIR)/riddle/rdremote.c \
	# $(CYC_DIR)/riddle/riddle.c \

	# $(CYC_DIR)/shared/unstable/loader.c \
	# $(CYC_DIR)/shared/unstable/standalone.c \

	# $(CYC_DIR)/toxy/plustot.ar.c \
	# $(CYC_DIR)/toxy/plustot.c \
	# $(CYC_DIR)/toxy/plustot.env.c \
	# $(CYC_DIR)/toxy/plustot.in.c \
	# $(CYC_DIR)/toxy/plustot.out.c \
	# $(CYC_DIR)/toxy/plustot.print.c \
	# $(CYC_DIR)/toxy/plustot.qlist.c \
	# $(CYC_DIR)/toxy/plustot.var.c \
	# $(CYC_DIR)/toxy/pluswidget.c \
	# $(CYC_DIR)/toxy/tot.c \
	# $(CYC_DIR)/toxy/tow.c \
	# $(CYC_DIR)/toxy/widget.c \
	# $(CYC_DIR)/toxy/widgethandlers.c \
	# $(CYC_DIR)/toxy/widgettype.c"

TARGET_OUT := lib/android/$(TARGET_ARCH_ABI)

include $(BUILD_STATIC_LIBRARY)
