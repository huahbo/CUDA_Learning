heat:heat.o
	nvcc -o heat heat.o
heat.o:heat.cu
	nvcc -arch=sm_30 -I /Developer/NVIDIA/CUDA-5.5/include -c heat.cu
rand:rand.o
	nvcc -o rand rand.o
rand.o:rand.cu
	nvcc -arch=sm_30 -I /Developer/NVIDIA/CUDA-5.5/include -c rand.cu
clean:
	rm *.o rand
