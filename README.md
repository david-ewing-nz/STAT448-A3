F1 =
[ 0  0  0 ]
[ 0  1  0 ]
[ 0  0  0 ]

F2 =
[ 0  0  0 ]
[ 0  0  0 ]
[ 0  0  0 ]

F3 =
[  0  -1   0 ]
[ -1   4  -1 ]
[  0  -1   0 ]

Unfortunately, the power went down. Help the engineers by applying the filters F1, F2 and F3 to the image I, above. Then apply the activation function (ReLU). Write down the resulting three feature maps. Draw a diagram showing the link between the input and the bottom right pixel of the output feature map through this convolution.

---

### Q2. (20 marks)

There are datasets that are a bit more challenging than MNIST, such as Fashion-MNIST or CIFAR10. They are available in Keras directly. See the documentation in Keras on how to load them; the function is similar to MNIST.

Using code from the recent labs (on training artificial neural networks in Keras), train several networks with different settings on this dataset. Overall, try to train up to 10 different configurations. You might try Optuna. Write a short report (up to 5 pages max.) describing what effect different settings had on test accuracy and the training process overall. For example, try different learning rates, optimisers, batch sizes and/or architectures.

Please have captions for all figures and tables and make sure that if you include a figure or a table, it’s referred to somewhere in the text. Submit this report as a single PDF file. Please have a structure in the report with headings for the sections. All figures need to have a legend and/or be clearly labelled.

Any references should use APA style for both in-text citations and the reference list.
