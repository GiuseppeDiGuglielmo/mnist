
images=512

xxd -s $((4*4)) -l $((784*$images)) -i t10k-images-idx3-ubyte > mnist_data.h
xxd -s $((4*2)) -l $(($images)) -i t10k-labels-idx1-ubyte >> mnist_data.h

echo "#define testset_input_data t10k_images_idx3_ubyte" >> mnist_data.h
echo "#define testset_input_labels t10k_labels_idx1_ubyte" >> mnist_data.h

echo "#define test_input_count t10k_images_idx3_ubyte_len" >> mnist_data.h
echo "#define test_label_count t10k_labels_idx1_ubyte_len" >> mnist_data.h

echo "unsigned input_nrows = 28;" >> mnist_data.h
echo "unsigned input_ncols = 28;" >> mnist_data.h
echo "unsigned input_size = input_nrows * input_ncols;" >> mnist_data.h
echo "unsigned label_size = 10;" >> mnist_data.h
echo "bool testset_data_is_normalized = false;" >> mnist_data.h
echo "unsigned testset_fxd_point_W = 16;" >> mnist_data.h
echo "unsigned testset_fxd_point_I_W18 = 8;" >> mnist_data.h
echo "unsigned testset_fxd_point_I_W32 = 24;" >> mnist_data.h
