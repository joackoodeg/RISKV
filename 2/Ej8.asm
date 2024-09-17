#a) a = b;
	add t0, t1, zero
#b) a = b + c;
	add t0, t1, t2
#c) a = a + 1;
	addi t0, t0, 1
#d) a = c + 2;
	addi t0, t1, 1
#e) a = b + c + d + e;
	add t0, t1, t2
	add t0, t0, t3
	add t0, t0, t4
#f) a = b - c;
	sub t0, t1 ,t2
#g) a = c + (b - d);
	sub t1, t2, t3
	add t0, t1, t4
#h) a = (b + c) - (d + e);
	add t1, t2, t3
	add t4, t5, t6
	sub t0, t1 ,t4
#i) a = b * c;
	mul t0, t1,t2
#j) a = b / c;
	div t0, t1, t2
#k) a = 3 * e;
	li t1, 3
	mul t0, t1, t2
#l) a = (b - c) * (d - e);
	sub t1, t2, t3
	sub t4, t5, t6
	mul t0, t1, t4
#m) a = b * c * d;
	mul t1, t2, t3
	mul t0, t1, t4
#n) a = (b + c) * (d / e);
	