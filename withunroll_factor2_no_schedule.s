# RISC-V Assembly code with loop unrolling for 5-stage pipeline

.data
array:  .word 1, 2, 3, 4, 5, 6, 7, 8
size:   .word 8
sum:    .word 0

.text
    # Load address of array into x1
    la x1, array
    
    # Load size of array into x4
    lw x4, size
    
    # Initialize sum to 0
    li x3, 0
    
    # Loop Unrolling
    loop:
               
        # Load array element and add to sum (unrolled iteration 1)
        # Load next array element and add to sum (unrolled iteration 2)
        
        lw x2, 0(x1)          # Load array element
        add x3, x3, x2        # Add to sum
        lw x12, 4(x1)          # Load array element
        add x3, x3, x12        # Add to sum
        
        addi x1, x1, 8        # Move to next element     
        #addi x1, x1, 4        # Move to next element
        
        # Decrement counter by 2
        addi x4, x4, -2       # Decrement counter
        bne x4,x0,loop        # loop condition
        
                
        # Store the final sum in memory
        sw x3,0(x1)          #sum
        nop
