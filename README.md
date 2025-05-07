## STAT448 Assignment 3

This is a structure that will allow us to work together. 

The 2 questions are seperated as 'child' files:

**Q1.rmd**, and
**Q2.rmd** 

they are called by STAT448-Assignment3.RMD

each will operate independently, meaning you can knit either one. 


Note:




but is **Due – 11.59 pm 1ʼsᵗ June 2025**, submitted directly through LEARN. You can work in pairs if you choose. Please show **all** your work.

------------------------------------------------------------------------

### Q1. (A) (5 marks)

The following matrices describing a neural network were uncovered by scientists.

The weights for the hidden layer are given in the matrix:

```         
W[1] =
[ 1  0 ]
[ 2  6 ]
```

The bias for the hidden layer is given in the vector:

```         
b[1] =
[ -1 ]
[  3 ]
```

The weights for the output layer are given in the vector:

```         
W[2] = [ -1  7 ]
```

The bias for the output layer is:

```         
b[2] = [ 5 ]
```

The input, X, is given in the vector:

```         
X =
[  5 ]
[ -7 ]
```

The activation function for all the units in the hidden and output layers is ReLU:

```         
g(z) = max(0, z)
```

**Draw the diagram of this network and calculate the output.**

------------------------------------------------------------------------

### Q1. (B) (5 marks)

The input of a convolutional neural network is a tiny image, **I**. Its size is 5 × 5 pixels. The pixel values are given below:

```         
I =
[ 1  0  0  0  1 ]
[ 0  1  0  1  0 ]
[ 0  0  1  0  0 ]
[ 0  1  1  1  0 ]
[ 1  0  1  0  1 ]
```

The network engineers decided to use **three filters** of size 3 × 3 with stride 1 and no padding. The trained filter values are as follows:

```         
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
```

Unfortunately, the power went down. Help the engineers by applying the filters F1, F2 and F3 to the image **I**, above. Then apply the activation function (ReLU). Write down the resulting three feature maps. Draw a diagram showing the link between the input and the bottom right pixel of the output feature map through this convolution.

------------------------------------------------------------------------

### Q2. (20 marks)

There are datasets that are a bit more challenging than MNIST, such as **Fashion-MNIST** or **CIFAR10**. They are available in Keras directly. See the documentation in Keras on how to load them; the function is similar to MNIST.

Using code from the recent labs (on training artificial neural networks in Keras), train several networks with different settings on this dataset. Overall, try to train up to **10 different configurations**. You might try **Optuna**.

Write a short report (up to **5 pages max.**) describing what effect different settings had on test accuracy and the training process overall. For example, try different learning rates, optimisers, batch sizes and/or architectures.

Please have captions for all figures and tables and make sure that if you include a figure or a table, it’s referred to somewhere in the text. Submit this report as a **single PDF file**. Please have a structure in the report with **headings for the sections**. All figures need to have a **legend and/or be clearly labelled**.

Any references should use **APA style** for both in-text citations and the reference list.
