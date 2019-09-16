# julia> @show V, findnz(copEV), findnz(copFE), findnz(copCF);
# V, copEV, copFE, copCF follow
V = [1.01181 0.215639 0.516927 0.449016 0.91979 0.123616 0.147315 0.160136 0.213681 0.156419 0.699248 0.157422 0.242039 0.325549 0.591671 0.621329 0.628539 1.02252 0.226347 0.930498 0.134324 0.195738 0.992501 0.183203 0.208451 0.513984 0.566886 0.531412 0.511538 0.41632 0.223159 0.218365 0.221725 0.225755 0.81974 0.678562 0.530265 0.508469 0.514549 0.520034 0.294128 0.440629 0.305963 0.921653 0.129033 0.129737 0.131923 0.12989 0.319954 0.159637 0.940964 0.155899 0.150091 0.159038 0.178925 0.132213 0.133682 0.209488 0.212755 0.21717 0.045831 -0.301827 0.348275 0.000617 0.165572 -0.101237 -0.178503 -0.189822 0.579367 0.23171 0.881811 0.534154 0.662595 0.59629 0.344782 0.433038 0.753477 0.716324 0.740326 0.501848 0.568661 0.459863 0.222618 0.592366 0.594961 0.207386 0.394164 0.265922 0.522271 0.530034 0.293353 -0.180789 -0.052178 0.627953 -0.190635 0.489496 0.229234 0.579478 -0.060886 0.289468 -0.079901 -0.023388 0.656742 0.126044 -0.161846 0.518285 0.526925 0.635513 0.127723 0.603362 0.496221 0.064319 0.180298 0.576293 0.525604 0.27652 -0.087513 0.52527 0.161237 0.509324 0.145291 0.758074 0.394041 0.526972 0.355908 0.399061 0.238536 0.338359 0.238295 0.27631 0.564484 0.005828 0.294002 1.01221 1.30039 0.741732 1.02991; 0.160033 0.06801 0.102833 0.094984 0.956278 0.864255 0.659194 0.548263 0.084949 0.580426 0.316997 0.583871 0.542193 0.461307 0.305687 0.514086 0.549482 0.160649 0.068627 0.956895 0.864872 0.87197 0.420396 0.441934 0.223478 0.153821 0.413502 0.239372 0.231569 0.424659 0.068443 0.068167 0.06836 0.068593 0.137692 0.121256 0.104236 0.101329 0.10214 0.102872 0.076463 0.093529 0.078046 0.956385 0.864567 0.864608 0.864734 0.864616 0.886478 0.867939 0.780928 0.585196 0.677336 0.56981 0.393343 0.835666 0.82232 0.189753 0.173182 0.121583 -0.200245 0.102199 0.417839 0.720283 0.576781 0.512131 0.056734 0.066943 -0.35354 -0.051096 0.264543 0.566987 0.45525 0.512932 0.179982 0.360343 0.259028 0.186057 0.26983 0.038311 0.374082 0.280072 0.656498 0.383734 0.4692 0.63114 0.510617 -0.094786 0.326884 0.32346 -0.106882 0.152914 0.682359 0.543901 0.059204 -0.079254 -0.026271 0.32573 0.192415 0.485962 0.144527 0.956374 0.817917 0.925953 0.333219 0.194762 0.233648 0.615857 0.837779 0.614035 -0.015242 0.10294 0.139662 0.381916 0.218367 -0.102028 0.146722 0.324834 0.573584 -0.16916 0.07959 0.257702 0.506452 0.415618 0.441015 0.337141 0.551294 0.48303 0.550965 0.452356 0.181874 1.15396 0.883481 0.816151 0.545669 1.51776 1.24728; 0.196256 0.206964 0.202911 0.203825 0.196872 0.20758 0.207421 0.207335 0.206977 0.20736 0.200311 0.207344 0.206246 0.205192 0.201757 0.2012 0.201077 0.997729 1.00844 0.998346 1.00905 1.00823 0.99793 1.00873 1.00856 1.00453 1.00362 1.00423 1.0045 1.00562 0.76985 0.411 0.662501 0.964109 0.380467 0.534691 0.38142 0.882367 0.742631 0.616551 1.0042 0.83035 0.727092 0.33635 0.612986 0.665684 0.829368 0.67719 0.811536 0.82674 0.264299 0.209682 0.56973 0.310866 0.273055 0.601118 0.595637 0.795843 0.89635 0.781236 0.067745 0.601282 -0.08555 0.447986 0.194836 0.499611 0.433829 0.451328 0.502301 1.03584 0.349005 0.882542 0.685427 0.787184 0.978526 0.933793 0.504626 0.524499 0.524582 0.735709 0.772125 0.87254 0.628801 0.258519 0.608237 0.496507 0.379068 0.151378 0.079386 0.086386 0.176108 0.651402 0.1593 0.18809 0.433316 0.462105 0.451088 0.284025 0.370218 0.228267 0.391654 0.797002 0.825792 0.803328 1.07102 1.09981 1.08271 0.355548 0.603653 0.335159 0.611076 0.661604 0.803721 0.629483 1.04042 0.1446 0.377404 0.077468 0.310272 0.580364 0.813168 0.513232 0.746036 0.661025 0.756327 0.717271 0.454961 0.390781 0.454935 0.403805 1.13971 0.7676 1.5035 0.249344 0.985248 0.613139 1.34904];

copEV = SparseArrays.sparse([1,5,39,3,6,40,1,2,11,45,2,3,16,46,4,5,61,4,10,63,9,10,20,82, 7,8,19,80,6,7,15,78,8,9,12,76,11,14,130,131,12,13,98,99,13,14,18,19,135,136,15,17,209,210,16,17,236,237,18,21,156,157,20,21,178,179,22,25,39,22,27,44,23,26,62,24,29,67,23,24,35,70,25,26,33,75,28,29,38,95,27,28,36,90,30,36,191,192,31,37,171,172,30,31,32,33,199,200,32,34,247,248,34,35,37,38,174,175,42,43,58,93,40,41,47,81,41,42,54,88,43,44,57,92,45,53,111,112,46,60,221,222,47,48,159,160,50,56,190,191,49,50,52,53,117,118,48,49,59,60,204,205,51,57,113,114,51,52,55,56,123,124,54,55,58,59,196,197,61,62,69,74,63,64,69,85,64,65,68,83,66,67,73,95,65,66,71,87,68,72,167,168,70,71,72,73,175,176,74,75,264,265,76,77,99,100,77,91,132,133,79,86,214,215,78,79,80,81,161,162,82,83,84,85,181,182,84,87,253,254,86,94,225,226,89,90,91,92,149,150,88,89,93,94,195,196,96,101,128,96,102,129,97,101,130,100,103,132,97,98,104,136,102,103,105,147,104,106,152,153,105,106,185,186,107,111,128,107,113,129,108,112,131,110,116,134,108,109,121,140,109,110,119,138,114,115,124,149,115,116,122,148,125,126,237,238,125,127,222,223,126,127,217,218,117,123,189,190,118,119,120,121,200,201,120,122,246,247,133,134,142,148,135,137,157,158,137,138,140,141,201,202,139,142,252,253,139,141,262,263,143,146,206,207,143,145,208,209,144,145,235,236,144,146,230,231,147,150,186,187,151,155,177,151,156,178,152,155,185,154,160,188,153,154,164,193,158,159,163,198,161,165,213,214,162,163,210,211,164,165,232,233,166,170,177,168,171,180,166,167,176,184,169,170,187,169,173,192,172,173,174,203,179,180,183,202,181,184,254,255,182,183,263,264,188,189,197,204,193,194,233,234,194,195,224,225,198,205,218,219,199,203,248,249,206,212,230,207,213,232,208,212,235,211,215,239,216,221,231,216,224,234,217,223,238,220,227,240,219,220,228,242,226,227,229,244,228,229,245,246,239,240,241,243,241,242,261,262,243,244,251,252,245,251,261,249,256,266,250,255,267,250,256,268,257,259,265,257,260,266,258,259,267,258,260,268],[1,1,1,2,2,2,3,3,3,3,4,4,4,4,5,5,5,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11,12,12,12,12,13,13,13,13,13,13,14,14,14,14,15,15,15,15,16,16,16,16,17,17,17,17,18,18,18,19,19,19,20,20,20,21,21,21,22,22,22,22,23,23,23,23,24,24,24,24,25,25,25,25,26,26,26,26,27,27,27,27,28,28,28,28,28,28,29,29,29,29,30,30,30,30,30,30,31,31,31,31,32,32,32,32,33,33,33,33,34,34,34,34,35,35,35,35,36,36,36,36,37,37,37,37,38,38,38,38,39,39,39,39,39,39,40,40,40,40,40,40,41,41,41,41,42,42,42,42,42,42,43,43,43,43,43,43,44,44,44,44,45,45,45,45,46,46,46,46,47,47,47,47,48,48,48,48,49,49,49,49,50,50,50,50,50,50,51,51,51,51,52,52,52,52,53,53,53,53,54,54,54,54,55,55,55,55,55,55,56,56,56,56,56,56,57,57,57,57,58,58,58,58,59,59,59,59,59,59,60,60,60,60,60,60,61,61,61,62,62,62,63,63,63,64,64,64,65,65,65,65,66,66,66,66,67,67,67,67,68,68,68,68,69,69,69,70,70,70,71,71,71,72,72,72,73,73,73,73,74,74,74,74,75,75,75,75,76,76,76,76,77,77,77,77,78,78,78,78,79,79,79,79,80,80,80,80,81,81,81,81,81,81,82,82,82,82,83,83,83,83,84,84,84,84,85,85,85,85,85,85,86,86,86,86,87,87,87,87,88,88,88,88,89,89,89,89,90,90,90,90,91,91,91,91,92,92,92,92,93,93,93,94,94,94,95,95,95,96,96,96,97,97,97,97,98,98,98,98,99,99,99,99,100,100,100,100,101,101,101,101,102,102,102,103,103,103,104,104,104,104,105,105,105,106,106,106,107,107,107,107,108,108,108,108,109,109,109,109,110,110,110,110,111,111,111,111,112,112,112,112,113,113,113,113,114,114,114,114,115,115,115,115,116,116,116,117,117,117,118,118,118,119,119,119,120,120,120,121,121,121,122,122,122,123,123,123,124,124,124,124,125,125,125,125,126,126,126,126,127,127,127,127,128,128,128,128,129,129,129,129,130,130,130,131,131,131,132,132,132,133,133,133,134,134,134,135,135,135,136,136,136,137,137,137],[-1,-1,-1,-1,-1,-1,1,-1,-1,-1,1,1,-1,-1,-1,1,-1,1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,-1,-1,-1,1,1,-1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,1,1,-1,-1,-1,1,-1,-1,1,1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,1,1,-1,1,-1,-1,1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,-1,-1,1,-1,-1,1,1,-1,1,-1,-1,1,1,1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,-1,-1,-1,1,-1,1,1,1,-1,-1,1,-1,-1,-1,1,1,1,1,1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,-1,-1,1,1,-1,1,-1,-1,1,1,-1,-1,1,-1,-1,-1,-1,1,1,1,-1,-1,1,1,1,1,-1,1,-1,-1,-1,1,-1,-1,-1,1,1,1,-1,1,1,1,-1,1,1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,-1,1,1,1,1,1,-1,1,1,-1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,1,1,1,1,-1,-1,-1,-1,1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,1,1,1,-1,1,1,-1,1,1,-1,1,1,1,-1,1,1,-1,1,-1,1,1,1,-1,1,-1,-1,1,-1,1,1,1,-1,-1,-1,-1,-1,-1,1,-1,-1,1,-1,1,-1,1,1,1,-1,-1,1,1,1,-1,-1,-1,-1,1,1,1,1,1,1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,-1,1,1,1,1,-1,1,1,-1,-1,-1,-1,1,1,1,-1,1,1,1,-1,-1,1,1,1,-1,1,1,1,1,-1,1,1,-1,1,1,1,1,-1,1,1,1,1,1,1,1,1,1,-1,1,-1,1,1,-1,1,1,1,1,-1,1,1,1,-1,1,-1,1,1,1,1,1,1,1,1,1,-1,-1,1,1,1,1,1,1,1,1,-1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,1,1,1,-1,-1,1,1,-1,1,1,1,-1,1,1,1,1,1,-1,-1,-1,1,-1,1,1,-1,-1,-1,1,1,-1,1,-1,1,1,1,1,1]);

copFE = SparseArrays.sparse([1,11,2,12,4,13,1,19,1,24,4,26,2,27,3,28,5,29,1,33,1,2, 57,58,3,5,39,40,3,5,51,54,1,2,50,56,2,4,105,106,2,4,126,128,2,4,120,122,1,5,65,66,2,3,68,69,1,5,76,79,1,5,91,92,6,11,9,20,8,23,6,24,9,25,6,32,10,29,8,34,6,10,97,98,7,9,100,101,7,10,144,147,6,9,146,148,7,10,139,140,8,9,136,138,6,10,85,87,7,9,74,75,8,10,71,73,11,24,13,26,15,35,17,31,16,36,11,32,11,12,57,58,12,13,126,128,13,15,67,70,13,15,94,99,12,18,93,102,11,14,96,98,11,16,41,46,14,18,44,47,11,12,41,42,15,17,82,86,16,18,83,88,11,14,84,85,11,16,60,64,16,17,108,115,15,18,109,114,12,13,108,110,19,24,20,25,19,33,20,30,21,37,22,29,23,34,20,21,77,78,19,20,153,156,20,23,136,138,21,22,137,139,20,21,72,74,22,23,71,73,24,25,153,156,24,25,146,148,28,29,39,40,28,29,51,55,26,27,105,106,28,35,104,107,27,28,68,69,26,35,67,70,29,33,76,79,30,37,77,78,29,37,154,155,30,33,153,156,28,35,130,131,29,37,137,139,31,35,82,86,28,36,81,83,29,32,85,87,28,29,61,63,32,36,60,64,31,36,108,115,28,35,109,113,29,34,71,73,38,49,38,50,40,54,39,51,40,55,38,57,38,60,40,61,38,40,65,69,38,40,89,90,38,40,80,81,41,49,42,56,45,53,43,52,41,57,42,58,41,60,46,64,44,63,43,62,41,47,96,102,42,44,93,98,43,45,95,101,43,44,143,144,42,45,145,146,43,44,135,139,41,47,84,88,44,46,83,85,42,48,127,128,42,48,120,123,42,48,110,111,49,57,49,60,50,57,56,58,55,61,51,63,52,62,51,56,66,68,50,54,65,69,51,56,92,93,52,53,95,101,51,52,152,155,53,56,145,146,51,52,143,149,51,52,135,139,57,59,103,105,57,59,125,126,57,59,119,122,57,59,116,117,60,61,89,90,62,63,135,139,63,64,83,85,60,61,81,87,65,76,65,80,69,81,67,86,65,89,65,91,66,92,68,93,70,94,67,99,67,69,105,107,68,70,104,106,68,70,120,121,67,69,117,118,67,69,129,130,71,76,72,78,74,77,71,87,71,89,74,101,75,100,71,97,71,75,136,140,73,74,138,139,71,72,136,137,76,89,76,91,79,92,77,101,76,78,154,156,77,79,153,155,77,79,146,149,76,78,136,137,80,89,81,90,87,89,86,99,88,102,84,96,85,98,87,97,81,86,117,118,81,86,130,132,81,86,108,113,82,83,109,115,86,88,108,114,93,94,120,121,97,100,147,148,98,101,144,146,93,95,143,145,92,101,146,149,97,100,136,140,99,102,108,114,93,94,109,110,103,116,105,117,103,119,105,122,106,120,104,121,103,125,105,129,107,130,104,131,108,117,111,123,110,120,109,121,112,124,108,126,110,128,111,127,108,132,113,130,109,131,112,133,109,112,142,143,109,112,134,135,116,125,117,126,117,129,118,130,117,132,119,125,122,126,120,128,123,127,121,131,124,133,121,124,151,152,121,124,142,143,131,133,151,152,131,133,134,135,134,142,135,143,139,144,140,147,136,148,136,150,134,151,135,152,139,155,137,154,136,156,136,157,141,148,141,150,141,156,141,157,142,151,143,152,149,155,146,153,148,156,148,157,150,156,150,157],[1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,11,11,12,12,12,12,13,13,13,13,14,14,14,14,15,15,15,15,16,16,16,16,17,17,17,17,18,18,18,18,19,19,19,19,20,20,20,20,21,21,21,21,22,22,23,23,24,24,25,25,26,26,27,27,28,28,29,29,30,30,30,30,31,31,31,31,32,32,32,32,33,33,33,33,34,34,34,34,35,35,35,35,36,36,36,36,37,37,37,37,38,38,38,38,39,39,40,40,41,41,42,42,43,43,44,44,45,45,45,45,46,46,46,46,47,47,47,47,48,48,48,48,49,49,49,49,50,50,50,50,51,51,51,51,52,52,52,52,53,53,53,53,54,54,54,54,55,55,55,55,56,56,56,56,57,57,57,57,58,58,58,58,59,59,59,59,60,60,60,60,61,61,62,62,63,63,64,64,65,65,66,66,67,67,68,68,68,68,69,69,69,69,70,70,70,70,71,71,71,71,72,72,72,72,73,73,73,73,74,74,74,74,75,75,75,75,76,76,76,76,77,77,77,77,78,78,78,78,79,79,79,79,80,80,80,80,81,81,81,81,82,82,82,82,83,83,83,83,84,84,84,84,85,85,85,85,86,86,86,86,87,87,87,87,88,88,88,88,89,89,89,89,90,90,90,90,91,91,91,91,92,92,92,92,93,93,93,93,94,94,94,94,95,95,95,95,96,96,97,97,98,98,99,99,100,100,101,101,102,102,103,103,104,104,104,104,105,105,105,105,106,106,106,106,107,107,108,108,109,109,110,110,111,111,112,112,113,113,114,114,115,115,116,116,117,117,117,117,118,118,118,118,119,119,119,119,120,120,120,120,121,121,121,121,122,122,122,122,123,123,123,123,124,124,124,124,125,125,125,125,126,126,126,126,127,127,127,127,128,128,129,129,130,130,131,131,132,132,133,133,134,134,135,135,135,135,136,136,136,136,137,137,137,137,138,138,138,138,139,139,139,139,140,140,140,140,141,141,141,141,142,142,142,142,143,143,143,143,144,144,144,144,145,145,145,145,146,146,146,146,147,147,147,147,148,148,148,148,149,149,149,149,150,150,150,150,151,151,152,152,153,153,154,154,155,155,156,156,157,157,158,158,159,159,160,160,161,161,161,161,162,162,162,162,163,163,163,163,164,164,164,164,165,165,165,165,166,166,167,167,168,168,169,169,170,170,171,171,172,172,173,173,174,174,174,174,175,175,175,175,176,176,176,176,177,177,178,178,179,179,180,180,181,181,181,181,182,182,182,182,183,183,183,183,184,184,184,184,185,185,186,186,187,187,188,188,189,189,190,190,191,191,192,192,193,193,193,193,194,194,194,194,195,195,195,195,196,196,196,196,197,197,197,197,198,198,198,198,199,199,199,199,200,200,200,200,201,201,201,201,202,202,202,202,203,203,203,203,204,204,204,204,205,205,205,205,206,206,207,207,208,208,209,209,210,210,211,211,212,212,213,213,214,214,215,215,216,216,217,217,218,218,219,219,220,220,221,221,222,222,223,223,224,224,225,225,226,226,227,227,228,228,228,228,229,229,229,229,230,230,231,231,232,232,233,233,234,234,235,235,236,236,237,237,238,238,239,239,240,240,241,241,241,241,242,242,242,242,243,243,243,243,244,244,244,244,245,245,246,246,247,247,248,248,249,249,250,250,251,251,252,252,253,253,254,254,255,255,256,256,257,257,258,258,259,259,260,260,261,261,262,262,263,263,264,264,265,265,266,266,267,267,268,268],[1,1,1,1,-1,-1,-1,1,-1,1,1,1,-1,-1,1,1,-1,-1,-1,-1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,1,-1,1,-1,1,-1,-1,-1,1,1,-1,-1,1,1,1,-1,-1,1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,-1,1,-1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,1,-1,1,1,1,1,1,1,-1,-1,-1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,1,1,-1,1,1,-1,-1,1,-1,1,-1,1,1,1,-1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,1,-1,1,-1,-1,-1,-1,-1,1,1,1,1,-1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,-1,1,-1,-1,1,1,-1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,1,1,1,-1,-1,1,1,-1,-1,1,-1,-1,1,1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,1,1,-1,1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,1,-1,-1,1,-1,1,1,1,-1,-1,-1,-1,-1,-1,1,1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,-1,-1,-1,1,1,1,-1,1,1,-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,-1,1,-1,1,1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,1,1,-1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,1,1,-1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,-1,1,1,-1,1,-1,1,-1,-1,1,-1,1,1,1,1,-1,-1,-1,-1,-1,1,-1,1,1,1,1,-1,-1,1,1,-1,-1,1,-1,-1,1,1,1]);

copCF = SparseArrays.sparse([1,19,2,11,3,10,4,14,5,8,1,19,6,16,1,20,7,21,5,8,1,19,2, 11,4,14,8,22,9,23,2,12,4,24,10,13,1,19,7,21,6,15,5,8,1,20,1,19,7,21,4,14,2,11,3,10,5,8,7,21,4,24,1,19,1,19,1,20,9,23,2,12,6,15,1,2,8,10,3,5,1,2,11,19,6,17,8,10,7,25,12,19,13,22,14,18,1,2,1,2,8,10,6,17,7,25,3,5,3,5,11,19,1,2,11,19,4,26,1,2,3,5,6,17,8,10,12,19,1,5,8,19,4,23,10,11,2,3,9,14,1,5,15,21,8,20,6,7,16,21,1,5,6,7,15,21,8,19,1,5,2,3,9,24,10,12,1,22,8,19,4,23,1,5,2,13,1,5,2,3,1,5,8,19,10,11,9,14,17,25,1,22,1,5,8,19,4,23,16,21,6,7,2,13,1,26,9,10,2,4,11,14,3,23,2,4,9,10,11,14,18,19,17,27,3,23,13,23,12,24,1,26,2,4,3,23,1,26,11,14,9,10,2,4,18,19,17,27,1,26,2,4,18,19,11,14,2,4,3,23,9,10,2,4,17,27,9,27,10,17,1,21,5,15,7,20,6,8,5,16,1,21,9,27,10,17,6,8,11,25,7,19,5,16,1,21,6,8,1,21,9,27,10,17,7,19,5,15,6,8,1,21,1,21],[1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20,20,21,21,22,22,23,23,24,24,25,25,26,26,27,27,28,28,29,29,30,30,31,31,32,32,33,33,34,34,35,35,36,36,37,37,38,38,39,39,40,40,41,41,42,42,43,43,44,44,45,45,46,46,47,47,48,48,49,49,50,50,51,51,52,52,53,53,54,54,55,55,56,56,57,57,58,58,59,59,60,60,61,61,62,62,63,63,64,64,65,65,66,66,67,67,68,68,69,69,70,70,71,71,72,72,73,73,74,74,75,75,76,76,77,77,78,78,79,79,80,80,81,81,82,82,83,83,84,84,85,85,86,86,87,87,88,88,89,89,90,90,91,91,92,92,93,93,94,94,95,95,96,96,97,97,98,98,99,99,100,100,101,101,102,102,103,103,104,104,105,105,106,106,107,107,108,108,109,109,110,110,111,111,112,112,113,113,114,114,115,115,116,116,117,117,118,118,119,119,120,120,121,121,122,122,123,123,124,124,125,125,126,126,127,127,128,128,129,129,130,130,131,131,132,132,133,133,134,134,135,135,136,136,137,137,138,138,139,139,140,140,141,141,142,142,143,143,144,144,145,145,146,146,147,147,148,148,149,149,150,150,151,151,152,152,153,153,154,154,155,155,156,156,157,157],[-1,1,-1,1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1,1,-1,-1,1,-1,1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,1,-1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,1,-1,1,1,-1,-1,1,-1,1,-1,1,-1,1,1,-1,1,-1,-1,1,1,-1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,1,-1,1,-1,-1,1,1,-1,1,-1,1,-1,-1,1,1,-1,-1,1,1,-1,1,-1,-1,1,-1,1,-1,1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1]);