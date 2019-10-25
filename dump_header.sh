
images=16

xxd -s $((4*4)) -l $((784*$images)) -i t10k-images-idx3-ubyte > mnist_data.h
xxd -s $((4*2)) -l $(($images)) -i t10k-labels-idx1-ubyte >> mnist_data.h
echo "#define test_images t10k_images_idx3_ubyte" >> mnist_data.h
echo "#define test_images_size t10k_images_idx3_ubyte_len" >> mnist_data.h
echo "#define test_labels t10k_labels_idx1_ubyte" >> mnist_data.h
echo "#define test_labels_size t10k_labels_idx1_ubyte_len" >> mnist_data.h
