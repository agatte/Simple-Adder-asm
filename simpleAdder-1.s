        # Add up five values and multiply by 2, display result
        # Written by Anthony Gatte

        .data
        .align  2
stuff:  .word   42, 666, 777, 31, 5

#--------------------------------------------------------
        .text
        .globl  main
main:   la      $s0, stuff
        lw      $s1, 0($s0)     # put first value in s1 (42)
        lw      $s2, 4($s0)     # put second value in s2 (666)
	add	$s1, $s1, $s2	# add the first two values into s1 (42+666=708)
        lw      $s2, 8($s0)     # put third value in s2 (777)
        lw	$s3, 12($s0)	# put fourth value in s3 (31)
        lw	$s4, 16($s0)	# put fifth value in s4 (5)

        add     $s1, $s1, $s2   # add in third value to sum (708+777=1485)
        add	$s1, $s1, $s3	# add in fourth value to sum (1485+31=1516)
        add	$s1, $s1, $s4	# add in fifth value to sum (1516+5=1521)
        
        mul	$s1, $s1, 2	# multiply sum by 2 and store in s1

	li	$v0, 1
	move	$a0, $s1
	syscall			# print out the total
		
        li      $v0, 10         
        syscall                 # TTFN
        
