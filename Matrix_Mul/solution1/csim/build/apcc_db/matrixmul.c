/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC_Input_Matrix_Mul l_struct_OC_Input_Matrix_Mul;

/* Structure contents */
struct l_struct_OC_Input_Matrix_Mul {
   char field0[32][32];
   char field1[32][32];
};


/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void matrixmul(signed int llvm_cbe_lm, signed int llvm_cbe_ln, signed int llvm_cbe_lp, l_struct_OC_Input_Matrix_Mul llvm_cbe_input, signed int (*llvm_cbe_AB)[32]);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void matrixmul(signed int llvm_cbe_lm, signed int llvm_cbe_ln, signed int llvm_cbe_lp, l_struct_OC_Input_Matrix_Mul llvm_cbe_input, signed int (*llvm_cbe_AB)[32]) {
  static  unsigned long long aesl_llvm_cbe_A_count = 0;
   char llvm_cbe_A[32][32];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_B_count = 0;
   char llvm_cbe_B[32][32];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge24_count = 0;
  unsigned int llvm_cbe_storemerge24;
  unsigned int llvm_cbe_storemerge24__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  unsigned long long llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge823_count = 0;
  unsigned int llvm_cbe_storemerge823;
  unsigned int llvm_cbe_storemerge823__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned long long llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
   char *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  unsigned char llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
   char *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge121_count = 0;
  unsigned int llvm_cbe_storemerge121;
  unsigned int llvm_cbe_storemerge121__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge719_count = 0;
  unsigned int llvm_cbe_storemerge719;
  unsigned int llvm_cbe_storemerge719__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned long long llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
   char *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  unsigned char llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
   char *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge217_count = 0;
  unsigned int llvm_cbe_storemerge217;
  unsigned int llvm_cbe_storemerge217__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  unsigned long long llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge615_count = 0;
  unsigned int llvm_cbe_storemerge615;
  unsigned int llvm_cbe_storemerge615__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  unsigned long long llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  signed int *llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  unsigned int llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge313_count = 0;
  unsigned int llvm_cbe_storemerge313;
  unsigned int llvm_cbe_storemerge313__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  unsigned long long llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge411_count = 0;
  unsigned int llvm_cbe_storemerge411;
  unsigned int llvm_cbe_storemerge411__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  unsigned long long llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  signed int *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe__2e_promoted_count = 0;
  unsigned int llvm_cbe__2e_promoted;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  unsigned int llvm_cbe_tmp__26;
  unsigned int llvm_cbe_tmp__26__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge59_count = 0;
  unsigned int llvm_cbe_storemerge59;
  unsigned int llvm_cbe_storemerge59__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  unsigned long long llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
   char *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  unsigned char llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
   char *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  unsigned char llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  unsigned int llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @matrixmul\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = shl i32 1, %%lm, !dbg !6 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_9_count);
  llvm_cbe_tmp__1 = (unsigned int )1u << llvm_cbe_lm;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = shl i32 1, %%ln, !dbg !6 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__2 = (unsigned int )1u << llvm_cbe_ln;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = shl i32 1, %%lp, !dbg !7 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__3 = (unsigned int )1u << llvm_cbe_lp;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
  llvm_cbe_storemerge24__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader22;

  do {     /* Syntactic loop '.preheader22' to make GCC happy */
llvm_cbe__2e_preheader22:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge24 = phi i32 [ 0, %%0 ], [ %%13, %%12  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge24_count);
  llvm_cbe_storemerge24 = (unsigned int )llvm_cbe_storemerge24__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge24 = 0x%X",llvm_cbe_storemerge24);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = zext i32 %%storemerge24 to i64, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__4 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge24&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__4);
  llvm_cbe_storemerge823__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__39;

llvm_cbe_tmp__40:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add i32 %%storemerge24, 1, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_storemerge24&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__10&4294967295U) < ((unsigned int )llvm_cbe_tmp__2&4294967295U))) {
    llvm_cbe_storemerge24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__10;   /* for PHI node */
    goto llvm_cbe__2e_preheader22;
  } else {
    llvm_cbe_storemerge121__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader18;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge823 = phi i32 [ 0, %%.preheader22 ], [ %%10, %%5  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge823_count);
  llvm_cbe_storemerge823 = (unsigned int )llvm_cbe_storemerge823__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge823 = 0x%X",llvm_cbe_storemerge823);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__9);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = zext i32 %%storemerge823 to i64, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__5 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge823&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds %%struct.Input_Matrix_Mul* %%input, i64 0, i32 0, i64 %%4, i64 %%6, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__6 = ( char *)(&llvm_cbe_input.field0[(((signed long long )llvm_cbe_tmp__4))][(((signed long long )llvm_cbe_tmp__5))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__5));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i8* %%7, align 1, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__7 = (unsigned char )*llvm_cbe_tmp__6;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [32 x [32 x i8]]* %%A, i64 0, i64 %%4, i64 %%6, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__8 = ( char *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__4))
#ifdef AESL_BC_SIM
 % 32
#endif
][(((signed long long )llvm_cbe_tmp__5))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__5));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__4) < 32 && "Write access out of array 'A' bound?");
  assert(((signed long long )llvm_cbe_tmp__5) < 32 && "Write access out of array 'A' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%8, i8* %%9, align 1, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_66_count);
  *llvm_cbe_tmp__8 = llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = add i32 %%storemerge823, 1, !dbg !9 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_storemerge823&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__9&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__9&4294967295U) < ((unsigned int )llvm_cbe_tmp__1&4294967295U))) {
    llvm_cbe_storemerge823__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__9;   /* for PHI node */
    goto llvm_cbe_tmp__39;
  } else {
    goto llvm_cbe_tmp__40;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader22' */
  do {     /* Syntactic loop '.preheader18' to make GCC happy */
llvm_cbe__2e_preheader18:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge121 = phi i32 [ %%24, %%23 ], [ 0, %%12  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge121_count);
  llvm_cbe_storemerge121 = (unsigned int )llvm_cbe_storemerge121__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge121 = 0x%X",llvm_cbe_storemerge121);
printf("\n = 0x%X",llvm_cbe_tmp__17);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = zext i32 %%storemerge121 to i64, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__11 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge121&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
  llvm_cbe_storemerge719__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__42:
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add i32 %%storemerge121, 1, !dbg !9 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_storemerge121&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__17&4294967295U) < ((unsigned int )llvm_cbe_tmp__1&4294967295U))) {
    llvm_cbe_storemerge121__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__17;   /* for PHI node */
    goto llvm_cbe__2e_preheader18;
  } else {
    llvm_cbe_storemerge217__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader14;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__41:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge719 = phi i32 [ 0, %%.preheader18 ], [ %%21, %%16  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge719_count);
  llvm_cbe_storemerge719 = (unsigned int )llvm_cbe_storemerge719__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge719 = 0x%X",llvm_cbe_storemerge719);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__16);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = zext i32 %%storemerge719 to i64, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__12 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge719&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds %%struct.Input_Matrix_Mul* %%input, i64 0, i32 1, i64 %%15, i64 %%17, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__13 = ( char *)(&llvm_cbe_input.field1[(((signed long long )llvm_cbe_tmp__11))][(((signed long long )llvm_cbe_tmp__12))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__12));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load i8* %%18, align 1, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_124_count);
  llvm_cbe_tmp__14 = (unsigned char )*llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [32 x [32 x i8]]* %%B, i64 0, i64 %%15, i64 %%17, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__15 = ( char *)(&llvm_cbe_B[(((signed long long )llvm_cbe_tmp__11))
#ifdef AESL_BC_SIM
 % 32
#endif
][(((signed long long )llvm_cbe_tmp__12))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__12));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__11) < 32 && "Write access out of array 'B' bound?");
  assert(((signed long long )llvm_cbe_tmp__12) < 32 && "Write access out of array 'B' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%19, i8* %%20, align 1, !dbg !8 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_126_count);
  *llvm_cbe_tmp__15 = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add i32 %%storemerge719, 1, !dbg !9 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_127_count);
  llvm_cbe_tmp__16 = (unsigned int )((unsigned int )(llvm_cbe_storemerge719&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__16&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__16&4294967295U) < ((unsigned int )llvm_cbe_tmp__3&4294967295U))) {
    llvm_cbe_storemerge719__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__16;   /* for PHI node */
    goto llvm_cbe_tmp__41;
  } else {
    goto llvm_cbe_tmp__42;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader18' */
  do {     /* Syntactic loop '.preheader14' to make GCC happy */
llvm_cbe__2e_preheader14:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge217 = phi i32 [ %%33, %%32 ], [ 0, %%23  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge217_count);
  llvm_cbe_storemerge217 = (unsigned int )llvm_cbe_storemerge217__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge217 = 0x%X",llvm_cbe_storemerge217);
printf("\n = 0x%X",llvm_cbe_tmp__22);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = zext i32 %%storemerge217 to i64, !dbg !4 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_180_count);
  llvm_cbe_tmp__18 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge217&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__18);
  llvm_cbe_storemerge615__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__43;

llvm_cbe_tmp__44:
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = add i32 %%storemerge217, 1, !dbg !9 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_204_count);
  llvm_cbe_tmp__22 = (unsigned int )((unsigned int )(llvm_cbe_storemerge217&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__22&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__22&4294967295U) < ((unsigned int )llvm_cbe_tmp__2&4294967295U))) {
    llvm_cbe_storemerge217__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__22;   /* for PHI node */
    goto llvm_cbe__2e_preheader14;
  } else {
    llvm_cbe_storemerge313__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader10;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__43:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge615 = phi i32 [ 0, %%.preheader14 ], [ %%30, %%27  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge615_count);
  llvm_cbe_storemerge615 = (unsigned int )llvm_cbe_storemerge615__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge615 = 0x%X",llvm_cbe_storemerge615);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__21);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = zext i32 %%storemerge615 to i64, !dbg !4 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__19 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge615&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds [32 x i32]* %%AB, i64 %%26, i64 %%28, !dbg !4 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_183_count);
  llvm_cbe_tmp__20 = (signed int *)(&llvm_cbe_AB[(((signed long long )llvm_cbe_tmp__18))
#ifdef AESL_BC_SIM
 % 32
#endif
][(((signed long long )llvm_cbe_tmp__19))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__19));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__19) < 32 && "Write access out of array 'AB' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%29, align 4, !dbg !4 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_184_count);
  *llvm_cbe_tmp__20 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = add i32 %%storemerge615, 1, !dbg !9 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__21 = (unsigned int )((unsigned int )(llvm_cbe_storemerge615&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__21&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__21&4294967295U) < ((unsigned int )llvm_cbe_tmp__3&4294967295U))) {
    llvm_cbe_storemerge615__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__21;   /* for PHI node */
    goto llvm_cbe_tmp__43;
  } else {
    goto llvm_cbe_tmp__44;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader14' */
  do {     /* Syntactic loop '.preheader10' to make GCC happy */
llvm_cbe__2e_preheader10:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge313 = phi i32 [ %%55, %%54 ], [ 0, %%32  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge313_count);
  llvm_cbe_storemerge313 = (unsigned int )llvm_cbe_storemerge313__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge313 = 0x%X",llvm_cbe_storemerge313);
printf("\n = 0x%X",llvm_cbe_tmp__38);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = zext i32 %%storemerge313 to i64, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_238_count);
  llvm_cbe_tmp__23 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge313&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__23);
  llvm_cbe_storemerge411__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe_tmp__45:
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = add i32 %%storemerge313, 1, !dbg !9 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_285_count);
  llvm_cbe_tmp__38 = (unsigned int )((unsigned int )(llvm_cbe_storemerge313&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__38&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__38&4294967295U) < ((unsigned int )llvm_cbe_tmp__2&4294967295U))) {
    llvm_cbe_storemerge313__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__38;   /* for PHI node */
    goto llvm_cbe__2e_preheader10;
  } else {
    goto llvm_cbe_tmp__46;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge411 = phi i32 [ 0, %%.preheader10 ], [ %%52, %%51  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge411_count);
  llvm_cbe_storemerge411 = (unsigned int )llvm_cbe_storemerge411__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge411 = 0x%X",llvm_cbe_storemerge411);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__37);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = zext i32 %%storemerge411 to i64, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_244_count);
  llvm_cbe_tmp__24 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge411&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds [32 x i32]* %%AB, i64 %%35, i64 %%36, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_245_count);
  llvm_cbe_tmp__25 = (signed int *)(&llvm_cbe_AB[(((signed long long )llvm_cbe_tmp__23))
#ifdef AESL_BC_SIM
 % 32
#endif
][(((signed long long )llvm_cbe_tmp__24))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__23));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__24));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__24) < 32)) fprintf(stderr, "%s:%d: warning: Read access out of array 'AB' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%.promoted = load i32* %%37, align 4, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe__2e_promoted_count);
  llvm_cbe__2e_promoted = (unsigned int )*llvm_cbe_tmp__25;
if (AESL_DEBUG_TRACE)
printf("\n.promoted = 0x%X\n", llvm_cbe__2e_promoted);
  llvm_cbe_tmp__26__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_promoted;   /* for PHI node */
  llvm_cbe_storemerge59__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__47;

llvm_cbe_tmp__48:

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__24) < 32 && "Write access out of array 'AB' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%48, i32* %%37, align 4, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_265_count);
  *llvm_cbe_tmp__25 = llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = add i32 %%storemerge411, 1, !dbg !9 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_266_count);
  llvm_cbe_tmp__37 = (unsigned int )((unsigned int )(llvm_cbe_storemerge411&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__37&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__37&4294967295U) < ((unsigned int )llvm_cbe_tmp__3&4294967295U))) {
    llvm_cbe_storemerge411__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__37;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe_tmp__45;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__47:
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = phi i32 [ %%.promoted, %%.preheader ], [ %%48, %%38 ], !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__26 = (unsigned int )llvm_cbe_tmp__26__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__26);
printf("\n.promoted = 0x%X",llvm_cbe__2e_promoted);
printf("\n = 0x%X",llvm_cbe_tmp__35);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge59 = phi i32 [ 0, %%.preheader ], [ %%49, %%38  for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_storemerge59_count);
  llvm_cbe_storemerge59 = (unsigned int )llvm_cbe_storemerge59__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge59 = 0x%X",llvm_cbe_storemerge59);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__36);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = zext i32 %%storemerge59 to i64, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_248_count);
  llvm_cbe_tmp__27 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge59&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds [32 x [32 x i8]]* %%A, i64 0, i64 %%35, i64 %%40, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_249_count);
  llvm_cbe_tmp__28 = ( char *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__23))
#ifdef AESL_BC_SIM
 % 32
#endif
][(((signed long long )llvm_cbe_tmp__27))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__23));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__27));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__23) < 32)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__27) < 32)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i8* %%41, align 1, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_250_count);
  llvm_cbe_tmp__29 = (unsigned char )*llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = zext i8 %%42 to i32, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_251_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__29&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds [32 x [32 x i8]]* %%B, i64 0, i64 %%40, i64 %%36, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_252_count);
  llvm_cbe_tmp__31 = ( char *)(&llvm_cbe_B[(((signed long long )llvm_cbe_tmp__27))
#ifdef AESL_BC_SIM
 % 32
#endif
][(((signed long long )llvm_cbe_tmp__24))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__27));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__24));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__27) < 32)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__24) < 32)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load i8* %%44, align 1, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_253_count);
  llvm_cbe_tmp__32 = (unsigned char )*llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = zext i8 %%45 to i32, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_254_count);
  llvm_cbe_tmp__33 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__32&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = mul nsw i32 %%46, %%43, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_255_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(llvm_cbe_tmp__33&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__30&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__34&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add i32 %%47, %%39, !dbg !5 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_256_count);
  llvm_cbe_tmp__35 = (unsigned int )((unsigned int )(llvm_cbe_tmp__34&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__26&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__35&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add i32 %%storemerge59, 1, !dbg !10 for 0x%I64xth hint within @matrixmul  --> \n", ++aesl_llvm_cbe_257_count);
  llvm_cbe_tmp__36 = (unsigned int )((unsigned int )(llvm_cbe_storemerge59&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__36&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__36&4294967295U) < ((unsigned int )llvm_cbe_tmp__1&4294967295U))) {
    llvm_cbe_tmp__26__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__35;   /* for PHI node */
    llvm_cbe_storemerge59__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__36;   /* for PHI node */
    goto llvm_cbe_tmp__47;
  } else {
    goto llvm_cbe_tmp__48;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '.preheader10' */
llvm_cbe_tmp__46:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @matrixmul}\n");
  return;
}

