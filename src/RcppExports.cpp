// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// cpp_unclassFactor
IntegerVector cpp_unclassFactor(NumericVector x);
RcppExport SEXP _fplot_cpp_unclassFactor(SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(cpp_unclassFactor(x));
    return rcpp_result_gen;
END_RCPP
}
// cpp_unik
IntegerVector cpp_unik(NumericVector x_sorted, int k_max);
RcppExport SEXP _fplot_cpp_unik(SEXP x_sortedSEXP, SEXP k_maxSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type x_sorted(x_sortedSEXP);
    Rcpp::traits::input_parameter< int >::type k_max(k_maxSEXP);
    rcpp_result_gen = Rcpp::wrap(cpp_unik(x_sorted, k_max));
    return rcpp_result_gen;
END_RCPP
}
// cpp_string_shorten
std::string cpp_string_shorten(std::string x, int max_size);
RcppExport SEXP _fplot_cpp_string_shorten(SEXP xSEXP, SEXP max_sizeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< std::string >::type x(xSEXP);
    Rcpp::traits::input_parameter< int >::type max_size(max_sizeSEXP);
    rcpp_result_gen = Rcpp::wrap(cpp_string_shorten(x, max_size));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_fplot_cpp_unclassFactor", (DL_FUNC) &_fplot_cpp_unclassFactor, 1},
    {"_fplot_cpp_unik", (DL_FUNC) &_fplot_cpp_unik, 2},
    {"_fplot_cpp_string_shorten", (DL_FUNC) &_fplot_cpp_string_shorten, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_fplot(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
