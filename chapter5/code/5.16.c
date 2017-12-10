/*
 * 5.16.c 求内积6x1a循环展开
 */
/* Inner product. Accumulate in temporary */
void inner4_6_1a(vec_ptr u, vec_ptr v, data_t *dest){
    long i;
    long length = vec_length(u);
    long limit = length-5;// i<length-5, i+5<length
    data_t *udata = get_vec_start(u);
    data_t *vdata = get_vec_start(v);
    data_t sum = (data_t) 0;

    for(i = 0; i < limit; i+=6){
        sum = sum + 
            (
             udata[i] * vdata[i] +
             udata[i+1] * vdata[i+1] +
             udata[i+2] * vdata[i+2] +
             udata[i+3] * vdata[i+3] +
             udata[i+4] * vdata[i+4] +
             udata[i+5] * vdata[i+5]
            );
    }

    // 多出来的部分
    for(; i < length; i++){
        sum = sum + udata[i] * vdata[i];
    }
    *dest = sum;
}
