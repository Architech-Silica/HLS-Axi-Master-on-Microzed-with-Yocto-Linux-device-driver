
 add_fsm_encoding \
       {axis_dwidth_converter_v1_1_axisc_upsizer.state} \
       { }  \
       {{000 00001} {001 00010} {010 10000} {011 01000} {101 00100} }

 add_fsm_encoding \
       {example_a_write.state} \
       { }  \
       {{0000 000} {0001 001} {0010 010} {0011 011} {0100 100} }

 add_fsm_encoding \
       {example_a_read.state} \
       { }  \
       {{0000 00} {0001 01} {0010 10} {0011 11} }
