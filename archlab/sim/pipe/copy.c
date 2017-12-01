long ncopy(long* src, long* dst, long len){
	long count = 0;
	long val;
	
	while(len > 0){
		val = *src++;
		*dst++ = val;
		if(val>0)
			count++;
		len--;
	}
	return count;
}