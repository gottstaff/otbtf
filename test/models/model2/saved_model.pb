└ш

Ж(█'
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ы
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Р
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"train*	1.6.0-rc02v1.5.0-2207-g8aa14cdч№	
Щ
x1Placeholder*
dtype0*A
_output_shapes/
-:+                           *6
shape-:+                           
Щ
x2Placeholder*6
shape-:+                           *
dtype0*A
_output_shapes/
-:+                           
Ш
yPlaceholder*
dtype0*A
_output_shapes/
-:+                           *6
shape-:+                           
J
ConstConst*
valueB
 *╖Q9*
dtype0*
_output_shapes
: 
U
lrPlaceholderWithDefaultConst*
dtype0*
_output_shapes
: *
shape: 
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *▀Xр╜* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *▀Xр=* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
│
conv2d/kernel
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
Ч
-conv2d/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
И
#conv2d/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╨
conv2d/bias/Initializer/zerosFill-conv2d/bias/Initializer/zeros/shape_as_tensor#conv2d/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2d/bias*
_output_shapes
:
Ч
conv2d/bias
VariableV2*
_class
loc:@conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ъ
conv2d/Conv2DConv2Dx1conv2d/kernel/read*
paddingVALID*A
_output_shapes/
-:+                           *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Э
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           
o
conv2d/ReluReluconv2d/BiasAdd*
T0*A
_output_shapes/
-:+                           
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *я[ё╜*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
╖
conv2d_1/kernel
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *"
_class
loc:@conv2d_1/kernel*
	container 
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
Ы
/conv2d_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
М
%conv2d_1/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
╪
conv2d_1/bias/Initializer/zerosFill/conv2d_1/bias/Initializer/zeros/shape_as_tensor%conv2d_1/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
Ы
conv2d_1/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ў
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/kernel/read*A
_output_shapes/
-:+                            *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
г
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                            
s
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*A
_output_shapes/
-:+                            
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *   ╛*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
: @*

seed 
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
╖
conv2d_2/kernel
VariableV2*"
_class
loc:@conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
█
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ж
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Ы
/conv2d_2/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:
М
%conv2d_2/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
╪
conv2d_2/bias/Initializer/zerosFill/conv2d_2/bias/Initializer/zeros/shape_as_tensor%conv2d_2/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
Ы
conv2d_2/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@
╛
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
∙
conv2d_2/Conv2DConv2Dconv2d_1/Reluconv2d_2/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           @*
	dilations

г
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           @
s
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*A
_output_shapes/
-:+                           @
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *▓Vє╜*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *▓Vє=*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 *
dtype0*&
_output_shapes
:
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Ї
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
╖
conv2d_3/kernel
VariableV2*"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
█
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
Ж
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
Ы
/conv2d_3/bias/Initializer/zeros/shape_as_tensorConst*
valueB:* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:
М
%conv2d_3/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
╪
conv2d_3/bias/Initializer/zerosFill/conv2d_3/bias/Initializer/zeros/shape_as_tensor%conv2d_3/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
Ы
conv2d_3/bias
VariableV2* 
_class
loc:@conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
╛
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
t
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ю
conv2d_3/Conv2DConv2Dx2conv2d_3/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           *
	dilations

г
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           
s
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*A
_output_shapes/
-:+                           
╬
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*A
_output_shapes/
-:+                           
н
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *├╨Р╜*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *├╨Р=*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 *
dtype0*&
_output_shapes
: 
┌
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
Ї
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
ц
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
╖
conv2d_4/kernel
VariableV2*"
_class
loc:@conv2d_4/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
█
conv2d_4/kernel/AssignAssignconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
Ж
conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
Ы
/conv2d_4/bias/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:
М
%conv2d_4/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
╪
conv2d_4/bias/Initializer/zerosFill/conv2d_4/bias/Initializer/zeros/shape_as_tensor%conv2d_4/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
Ы
conv2d_4/bias
VariableV2* 
_class
loc:@conv2d_4/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
╛
conv2d_4/bias/AssignAssignconv2d_4/biasconv2d_4/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: *
use_locking(
t
conv2d_4/bias/readIdentityconv2d_4/bias*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Б
conv2d_4/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_4/kernel/read*A
_output_shapes/
-:+                            *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
г
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                            
s
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*A
_output_shapes/
-:+                            
╨
max_pooling2d_1/MaxPoolMaxPoolconv2d_4/Relu*A
_output_shapes/
-:+                            *
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID
н
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк=*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_5/kernel*
seed2 *
dtype0*&
_output_shapes
: @
┌
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
Ї
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
ц
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
╖
conv2d_5/kernel
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container 
█
conv2d_5/kernel/AssignAssignconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ж
conv2d_5/kernel/readIdentityconv2d_5/kernel*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
Ы
/conv2d_5/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
М
%conv2d_5/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: 
╪
conv2d_5/bias/Initializer/zerosFill/conv2d_5/bias/Initializer/zeros/shape_as_tensor%conv2d_5/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
Ы
conv2d_5/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_5/bias*
	container 
╛
conv2d_5/bias/AssignAssignconv2d_5/biasconv2d_5/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
t
conv2d_5/bias/readIdentityconv2d_5/bias*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Г
conv2d_5/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_5/kernel/read*A
_output_shapes/
-:+                           @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
г
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           @
s
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*A
_output_shapes/
-:+                           @
н
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   @   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╜*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═У=*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_6/kernel*
seed2 *
dtype0*&
_output_shapes
:@@
┌
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
Ї
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
ц
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
╖
conv2d_6/kernel
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *"
_class
loc:@conv2d_6/kernel*
	container 
█
conv2d_6/kernel/AssignAssignconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Ж
conv2d_6/kernel/readIdentityconv2d_6/kernel*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
Ы
/conv2d_6/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
М
%conv2d_6/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
╪
conv2d_6/bias/Initializer/zerosFill/conv2d_6/bias/Initializer/zeros/shape_as_tensor%conv2d_6/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
Ы
conv2d_6/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_6/bias*
	container *
shape:@
╛
conv2d_6/bias/AssignAssignconv2d_6/biasconv2d_6/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
conv2d_6/bias/readIdentityconv2d_6/bias*
T0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
g
conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
∙
conv2d_6/Conv2DConv2Dconv2d_5/Reluconv2d_6/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           @
г
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           @
s
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*A
_output_shapes/
-:+                           @
Р
stackPackconv2d_2/Reluconv2d_6/Relu*
T0*

axis*
N*E
_output_shapes3
1:/                           @
_
features/shapeConst*
valueB"    А   *
dtype0*
_output_shapes
:
k
featuresReshapestackfeatures/shape*
T0*
Tshape0*(
_output_shapes
:         А
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"А      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *AW╛*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *AW>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ц
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
с
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
╙
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
г
dense/kernel
VariableV2*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А
╚
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
Х
,dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Ж
"dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
╠
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
Х

dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container 
▓
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
k
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes
:
Л
dense/MatMulMatMulfeaturesdense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
А
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
V
prediction/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Ж

predictionArgMaxdense/BiasAddprediction/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
^
Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
d
ReshapeReshapeyReshape/shape*
T0*
Tshape0*'
_output_shapes
:         
`
Reshape_1/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
t
	Reshape_1Reshapedense/BiasAddReshape_1/shape*
T0*
Tshape0*'
_output_shapes
:         
и
Fsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/SqueezeSqueezeReshape*
squeeze_dims

         *
T0*#
_output_shapes
:         
l
'sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╢
0sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeFsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Squeeze*
T0*
out_type0*
_output_shapes
:
¤
3sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogits	Reshape_1Fsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Squeeze*
T0*6
_output_shapes$
":         :         *
Tlabels0
З
Dsparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Е
Csparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
╢
Csparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:
Д
Bsparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Z
Rsparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
Н
%sparse_softmax_cross_entropy_loss/MulMul3sparse_softmax_cross_entropy_loss/xentropy/xentropy'sparse_softmax_cross_entropy_loss/ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:         
╚
)sparse_softmax_cross_entropy_loss/Const_1ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
╝
%sparse_softmax_cross_entropy_loss/SumSum%sparse_softmax_cross_entropy_loss/Mul)sparse_softmax_cross_entropy_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
╧
5sparse_softmax_cross_entropy_loss/num_present/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
╜
3sparse_softmax_cross_entropy_loss/num_present/EqualEqual'sparse_softmax_cross_entropy_loss/Const5sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
р
Hsparse_softmax_cross_entropy_loss/num_present/zeros_like/shape_as_tensorConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╪
>sparse_softmax_cross_entropy_loss/num_present/zeros_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
8sparse_softmax_cross_entropy_loss/num_present/zeros_likeFillHsparse_softmax_cross_entropy_loss/num_present/zeros_like/shape_as_tensor>sparse_softmax_cross_entropy_loss/num_present/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
╒
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╫
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ё
7sparse_softmax_cross_entropy_loss/num_present/ones_likeFill=sparse_softmax_cross_entropy_loss/num_present/ones_like/Shape=sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
З
4sparse_softmax_cross_entropy_loss/num_present/SelectSelect3sparse_softmax_cross_entropy_loss/num_present/Equal8sparse_softmax_cross_entropy_loss/num_present/zeros_like7sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
·
bsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
°
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
й
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ў
`sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
═
psparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
К
Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
▄
Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
│
Isparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:         
ї
?sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMul4sparse_softmax_cross_entropy_loss/num_present/SelectIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
╥
3sparse_softmax_cross_entropy_loss/num_present/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ш
-sparse_softmax_cross_entropy_loss/num_presentSum?sparse_softmax_cross_entropy_loss/num_present/broadcast_weights3sparse_softmax_cross_entropy_loss/num_present/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
┴
)sparse_softmax_cross_entropy_loss/Const_2ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╛
'sparse_softmax_cross_entropy_loss/Sum_1Sum%sparse_softmax_cross_entropy_loss/Sum)sparse_softmax_cross_entropy_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
┼
+sparse_softmax_cross_entropy_loss/Greater/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
▒
)sparse_softmax_cross_entropy_loss/GreaterGreater-sparse_softmax_cross_entropy_loss/num_present+sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
├
)sparse_softmax_cross_entropy_loss/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
л
'sparse_softmax_cross_entropy_loss/EqualEqual-sparse_softmax_cross_entropy_loss/num_present)sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
╔
1sparse_softmax_cross_entropy_loss/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╦
1sparse_softmax_cross_entropy_loss/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╠
+sparse_softmax_cross_entropy_loss/ones_likeFill1sparse_softmax_cross_entropy_loss/ones_like/Shape1sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
╪
(sparse_softmax_cross_entropy_loss/SelectSelect'sparse_softmax_cross_entropy_loss/Equal+sparse_softmax_cross_entropy_loss/ones_like-sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
д
%sparse_softmax_cross_entropy_loss/divRealDiv'sparse_softmax_cross_entropy_loss/Sum_1(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╘
<sparse_softmax_cross_entropy_loss/zeros_like/shape_as_tensorConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╠
2sparse_softmax_cross_entropy_loss/zeros_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
,sparse_softmax_cross_entropy_loss/zeros_likeFill<sparse_softmax_cross_entropy_loss/zeros_like/shape_as_tensor2sparse_softmax_cross_entropy_loss/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
╥
'sparse_softmax_cross_entropy_loss/valueSelect)sparse_softmax_cross_entropy_loss/Greater%sparse_softmax_cross_entropy_loss/div,sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Ф
Qgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/shape_as_tensorConst*
valueB *
dtype0*
_output_shapes
: 
М
Ggradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш
Agradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeFillQgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/shape_as_tensorGgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
ц
=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect)sparse_softmax_cross_entropy_loss/Greatergradients/FillAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
ш
?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select)sparse_softmax_cross_entropy_loss/GreaterAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likegradients/Fill*
T0*
_output_shapes
: 
╤
Ggradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp>^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select@^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1
╫
Ogradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectH^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
▌
Qgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1H^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 
}
:gradients/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ъ
Jgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
у
<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Й
8gradients/sparse_softmax_cross_entropy_loss/div_grad/SumSum<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivJgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ь
<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Й
8gradients/sparse_softmax_cross_entropy_loss/div_grad/NegNeg'sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
╬
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv8gradients/sparse_softmax_cross_entropy_loss/div_grad/Neg(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╘
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ё
8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulMulOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
Й
:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Sum8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulLgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Є
>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
═
Egradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
╤
Mgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
╫
Ogradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
З
Dgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Н
>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeMgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyDgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
И
Egradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
¤
;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeEgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*
_output_shapes
: *

Tmultiples0
Х
Rgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/shape_as_tensorConst*
valueB *
dtype0*
_output_shapes
: 
Н
Hgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
Bgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeFillRgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/shape_as_tensorHgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
з
>gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect'sparse_softmax_cross_entropy_loss/EqualOgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Bgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
й
@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select'sparse_softmax_cross_entropy_loss/EqualBgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeOgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
╘
Hgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp?^gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectA^gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
█
Pgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity>gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectI^gradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
с
Rgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1I^gradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
М
Bgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
√
<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshape;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileBgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Я
:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape%sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
√
9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/TileTile<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*#
_output_shapes
:         *

Tmultiples0
н
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ъ
Jgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╤
8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mulMul9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile'sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:         
Е
8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/SumSum8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mulJgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
∙
<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
▀
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1Mul3sparse_softmax_cross_entropy_loss/xentropy/xentropy9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
Л
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1Lgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Є
>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
═
Egradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
▐
Mgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:         
╫
Ogradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
Ф
Jgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
в
Dgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeRgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Jgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
┴
Bgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShape?sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
У
Agradients/sparse_softmax_cross_entropy_loss/num_present_grad/TileTileDgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeBgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*#
_output_shapes
:         *

Tmultiples0
Ч
Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
▀
Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1ShapeIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
ш
dgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeVgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Х
Rgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMulAgradients/sparse_softmax_cross_entropy_loss/num_present_grad/TileIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
╙
Rgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumRgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/muldgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
║
Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeRgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
В
Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1Mul4sparse_softmax_cross_entropy_loss/num_present/SelectAgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:         
┘
Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1SumTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1fgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
═
Xgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1ReshapeTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
Ы
_gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpW^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeY^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
╣
ggradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityVgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape`^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*i
_class_
][loc:@gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
╠
igradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1IdentityXgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1`^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:         
и
^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ь
\gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumigradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
К
gradients/zeros_like	ZerosLike5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:         
Е
Rgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradient5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*┤
messageиеCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:         
Ь
Qgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
╗
Mgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsMgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyQgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
в
Fgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulMgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsRgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:         
k
gradients/Reshape_1_grad/ShapeShapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
╙
 gradients/Reshape_1_grad/ReshapeReshapeFgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulgradients/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Х
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
Г
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp!^gradients/Reshape_1_grad/Reshape)^gradients/dense/BiasAdd_grad/BiasAddGrad
·
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity gradients/Reshape_1_grad/Reshape.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Reshape_1_grad/Reshape*'
_output_shapes
:         
 
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
╧
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b(
┐
$gradients/dense/MatMul_grad/MatMul_1MatMulfeatures5gradients/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	А*
transpose_a(*
transpose_b( 
А
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
¤
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*(
_output_shapes
:         А
·
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	А
b
gradients/features_grad/ShapeShapestack*
T0*
out_type0*
_output_shapes
:
▌
gradients/features_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/features_grad/Shape*
T0*
Tshape0*E
_output_shapes3
1:/                           @
╫
gradients/stack_grad/unstackUnpackgradients/features_grad/Reshape*
T0*	
num*

axis*n
_output_shapes\
Z:+                           @:+                           @
L
%gradients/stack_grad/tuple/group_depsNoOp^gradients/stack_grad/unstack
№
-gradients/stack_grad/tuple/control_dependencyIdentitygradients/stack_grad/unstack&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack*A
_output_shapes/
-:+                           @
А
/gradients/stack_grad/tuple/control_dependency_1Identitygradients/stack_grad/unstack:1&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack*A
_output_shapes/
-:+                           @
╗
%gradients/conv2d_2/Relu_grad/ReluGradReluGrad-gradients/stack_grad/tuple/control_dependencyconv2d_2/Relu*
T0*A
_output_shapes/
-:+                           @
╜
%gradients/conv2d_6/Relu_grad/ReluGradReluGrad/gradients/stack_grad/tuple/control_dependency_1conv2d_6/Relu*
T0*A
_output_shapes/
-:+                           @
Э
+gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
О
0gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_2/Relu_grad/ReluGrad,^gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_2/Relu_grad/ReluGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_2/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           @
Л
:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Э
+gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_6/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
О
0gradients/conv2d_6/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_6/Relu_grad/ReluGrad,^gradients/conv2d_6/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_6/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_6/Relu_grad/ReluGrad1^gradients/conv2d_6/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_6/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           @
Л
:gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_6/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_6/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Ш
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNconv2d_1/Reluconv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/read8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations

┌
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_1/Relu$gradients/conv2d_2/Conv2D_grad/Const8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
в
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                            
е
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
Ш
%gradients/conv2d_6/Conv2D_grad/ShapeNShapeNconv2d_5/Reluconv2d_6/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_6/Conv2D_grad/ConstConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/kernel/read8gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
┌
3gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_5/Relu$gradients/conv2d_6/Conv2D_grad/Const8gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:@@*
	dilations

в
/gradients/conv2d_6/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_6/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           @
е
9gradients/conv2d_6/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@@
┼
%gradients/conv2d_1/Relu_grad/ReluGradReluGrad7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyconv2d_1/Relu*
T0*A
_output_shapes/
-:+                            
┼
%gradients/conv2d_5/Relu_grad/ReluGradReluGrad7gradients/conv2d_6/Conv2D_grad/tuple/control_dependencyconv2d_5/Relu*
T0*A
_output_shapes/
-:+                           @
Э
+gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
О
0gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_1/Relu_grad/ReluGrad,^gradients/conv2d_1/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_1/Relu_grad/ReluGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_1/Relu_grad/ReluGrad*A
_output_shapes/
-:+                            
Л
:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Э
+gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
О
0gradients/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_5/Relu_grad/ReluGrad,^gradients/conv2d_5/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_5/Relu_grad/ReluGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_5/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           @
Л
:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_5/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Ц
%gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/read8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
╪
3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu$gradients/conv2d_1/Conv2D_grad/Const8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
: 
в
/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
е
9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
в
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_5/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_5/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/kernel/read8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations

ф
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool$gradients/conv2d_5/Conv2D_grad/Const8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
в
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                            
е
9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
┴
#gradients/conv2d/Relu_grad/ReluGradReluGrad7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyconv2d/Relu*
T0*A
_output_shapes/
-:+                           
┴
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_1/MaxPool7gradients/conv2d_5/Conv2D_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*A
_output_shapes/
-:+                            
Щ
)gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
И
.gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp$^gradients/conv2d/Relu_grad/ReluGrad*^gradients/conv2d/BiasAdd_grad/BiasAddGrad
Ь
6gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity#gradients/conv2d/Relu_grad/ReluGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/conv2d/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           
Г
8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/conv2d/BiasAdd_grad/BiasAddGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
└
%gradients/conv2d_4/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*A
_output_shapes/
-:+                            
Й
#gradients/conv2d/Conv2D_grad/ShapeNShapeNx1conv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
{
"gradients/conv2d/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:
№
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/read6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
╔
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterx1"gradients/conv2d/Conv2D_grad/Const6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ь
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
┤
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
Э
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Э
+gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
О
0gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_4/Relu_grad/ReluGrad,^gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_4/Relu_grad/ReluGrad1^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_4/Relu_grad/ReluGrad*A
_output_shapes/
-:+                            
Л
:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_4/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
а
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_4/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_4/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/kernel/read8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
т
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool$gradients/conv2d_4/Conv2D_grad/Const8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
: *
	dilations

в
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
е
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
╜
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPool7gradients/conv2d_4/Conv2D_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*A
_output_shapes/
-:+                           
╛
%gradients/conv2d_3/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*A
_output_shapes/
-:+                           
Э
+gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
О
0gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_3/Relu_grad/ReluGrad,^gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_3/Relu_grad/ReluGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_3/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           
Л
:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_3/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Н
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNx2conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_3/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/kernel/read8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations

╧
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterx2$gradients/conv2d_3/Conv2D_grad/Const8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
в
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
е
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
~
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
П
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
о
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
j
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
~
beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
П
beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container 
о
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
j
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
┤
9conv2d/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
Ц
/conv2d/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
В
)conv2d/kernel/optimizer/Initializer/zerosFill9conv2d/kernel/optimizer/Initializer/zeros/shape_as_tensor/conv2d/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
╜
conv2d/kernel/optimizer
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name * 
_class
loc:@conv2d/kernel*
	container 
ш
conv2d/kernel/optimizer/AssignAssignconv2d/kernel/optimizer)conv2d/kernel/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Ф
conv2d/kernel/optimizer/readIdentityconv2d/kernel/optimizer*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
╢
;conv2d/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
Ш
1conv2d/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
И
+conv2d/kernel/optimizer_1/Initializer/zerosFill;conv2d/kernel/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
┐
conv2d/kernel/optimizer_1
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
ю
 conv2d/kernel/optimizer_1/AssignAssignconv2d/kernel/optimizer_1+conv2d/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
Ш
conv2d/kernel/optimizer_1/readIdentityconv2d/kernel/optimizer_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
б
7conv2d/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
Т
-conv2d/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
ю
'conv2d/bias/optimizer/Initializer/zerosFill7conv2d/bias/optimizer/Initializer/zeros/shape_as_tensor-conv2d/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2d/bias*
_output_shapes
:
б
conv2d/bias/optimizer
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@conv2d/bias*
	container 
╘
conv2d/bias/optimizer/AssignAssignconv2d/bias/optimizer'conv2d/bias/optimizer/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
В
conv2d/bias/optimizer/readIdentityconv2d/bias/optimizer*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
г
9conv2d/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
Ф
/conv2d/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Ї
)conv2d/bias/optimizer_1/Initializer/zerosFill9conv2d/bias/optimizer_1/Initializer/zeros/shape_as_tensor/conv2d/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2d/bias*
_output_shapes
:
г
conv2d/bias/optimizer_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@conv2d/bias*
	container 
┌
conv2d/bias/optimizer_1/AssignAssignconv2d/bias/optimizer_1)conv2d/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
Ж
conv2d/bias/optimizer_1/readIdentityconv2d/bias/optimizer_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
╕
;conv2d_1/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_1/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_1/kernel/optimizer/Initializer/zerosFill;conv2d_1/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_1/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
┴
conv2d_1/kernel/optimizer
VariableV2*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
Ё
 conv2d_1/kernel/optimizer/AssignAssignconv2d_1/kernel/optimizer+conv2d_1/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ъ
conv2d_1/kernel/optimizer/readIdentityconv2d_1/kernel/optimizer*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
║
=conv2d_1/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_1/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_1/kernel/optimizer_1/Initializer/zerosFill=conv2d_1/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_1/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
├
conv2d_1/kernel/optimizer_1
VariableV2*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
Ў
"conv2d_1/kernel/optimizer_1/AssignAssignconv2d_1/kernel/optimizer_1-conv2d_1/kernel/optimizer_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ю
 conv2d_1/kernel/optimizer_1/readIdentityconv2d_1/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
е
9conv2d_1/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_1/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_1/bias/optimizer/Initializer/zerosFill9conv2d_1/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_1/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
е
conv2d_1/bias/optimizer
VariableV2* 
_class
loc:@conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
▄
conv2d_1/bias/optimizer/AssignAssignconv2d_1/bias/optimizer)conv2d_1/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
И
conv2d_1/bias/optimizer/readIdentityconv2d_1/bias/optimizer*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
з
;conv2d_1/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_1/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
№
+conv2d_1/bias/optimizer_1/Initializer/zerosFill;conv2d_1/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_1/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
з
conv2d_1/bias/optimizer_1
VariableV2*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
т
 conv2d_1/bias/optimizer_1/AssignAssignconv2d_1/bias/optimizer_1+conv2d_1/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
М
conv2d_1/bias/optimizer_1/readIdentityconv2d_1/bias/optimizer_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
╕
;conv2d_2/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_2/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_2/kernel/optimizer/Initializer/zerosFill;conv2d_2/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_2/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
┴
conv2d_2/kernel/optimizer
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container 
Ё
 conv2d_2/kernel/optimizer/AssignAssignconv2d_2/kernel/optimizer+conv2d_2/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Ъ
conv2d_2/kernel/optimizer/readIdentityconv2d_2/kernel/optimizer*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
║
=conv2d_2/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_2/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_2/kernel/optimizer_1/Initializer/zerosFill=conv2d_2/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_2/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
├
conv2d_2/kernel/optimizer_1
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape: @
Ў
"conv2d_2/kernel/optimizer_1/AssignAssignconv2d_2/kernel/optimizer_1-conv2d_2/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Ю
 conv2d_2/kernel/optimizer_1/readIdentityconv2d_2/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
е
9conv2d_2/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_2/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_2/bias/optimizer/Initializer/zerosFill9conv2d_2/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_2/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
е
conv2d_2/bias/optimizer
VariableV2*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
▄
conv2d_2/bias/optimizer/AssignAssignconv2d_2/bias/optimizer)conv2d_2/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
И
conv2d_2/bias/optimizer/readIdentityconv2d_2/bias/optimizer*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
з
;conv2d_2/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_2/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
№
+conv2d_2/bias/optimizer_1/Initializer/zerosFill;conv2d_2/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_2/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
з
conv2d_2/bias/optimizer_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@
т
 conv2d_2/bias/optimizer_1/AssignAssignconv2d_2/bias/optimizer_1+conv2d_2/bias/optimizer_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
М
conv2d_2/bias/optimizer_1/readIdentityconv2d_2/bias/optimizer_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
╕
;conv2d_3/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_3/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_3/kernel/optimizer/Initializer/zerosFill;conv2d_3/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_3/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
┴
conv2d_3/kernel/optimizer
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:
Ё
 conv2d_3/kernel/optimizer/AssignAssignconv2d_3/kernel/optimizer+conv2d_3/kernel/optimizer/Initializer/zeros*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Ъ
conv2d_3/kernel/optimizer/readIdentityconv2d_3/kernel/optimizer*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
║
=conv2d_3/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_3/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_3/kernel/optimizer_1/Initializer/zerosFill=conv2d_3/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_3/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
├
conv2d_3/kernel/optimizer_1
VariableV2*"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
Ў
"conv2d_3/kernel/optimizer_1/AssignAssignconv2d_3/kernel/optimizer_1-conv2d_3/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
Ю
 conv2d_3/kernel/optimizer_1/readIdentityconv2d_3/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
е
9conv2d_3/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_3/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_3/bias/optimizer/Initializer/zerosFill9conv2d_3/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_3/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
е
conv2d_3/bias/optimizer
VariableV2* 
_class
loc:@conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
▄
conv2d_3/bias/optimizer/AssignAssignconv2d_3/bias/optimizer)conv2d_3/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
И
conv2d_3/bias/optimizer/readIdentityconv2d_3/bias/optimizer*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
з
;conv2d_3/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_3/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
№
+conv2d_3/bias/optimizer_1/Initializer/zerosFill;conv2d_3/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_3/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
з
conv2d_3/bias/optimizer_1
VariableV2* 
_class
loc:@conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
т
 conv2d_3/bias/optimizer_1/AssignAssignconv2d_3/bias/optimizer_1+conv2d_3/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
М
conv2d_3/bias/optimizer_1/readIdentityconv2d_3/bias/optimizer_1*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
╕
;conv2d_4/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_4/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_4/kernel/optimizer/Initializer/zerosFill;conv2d_4/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_4/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
┴
conv2d_4/kernel/optimizer
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape: 
Ё
 conv2d_4/kernel/optimizer/AssignAssignconv2d_4/kernel/optimizer+conv2d_4/kernel/optimizer/Initializer/zeros*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ъ
conv2d_4/kernel/optimizer/readIdentityconv2d_4/kernel/optimizer*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
║
=conv2d_4/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_4/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_4/kernel/optimizer_1/Initializer/zerosFill=conv2d_4/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_4/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
├
conv2d_4/kernel/optimizer_1
VariableV2*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
Ў
"conv2d_4/kernel/optimizer_1/AssignAssignconv2d_4/kernel/optimizer_1-conv2d_4/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
Ю
 conv2d_4/kernel/optimizer_1/readIdentityconv2d_4/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
е
9conv2d_4/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_4/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_4/bias/optimizer/Initializer/zerosFill9conv2d_4/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_4/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
е
conv2d_4/bias/optimizer
VariableV2* 
_class
loc:@conv2d_4/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
▄
conv2d_4/bias/optimizer/AssignAssignconv2d_4/bias/optimizer)conv2d_4/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
И
conv2d_4/bias/optimizer/readIdentityconv2d_4/bias/optimizer*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
з
;conv2d_4/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_4/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
№
+conv2d_4/bias/optimizer_1/Initializer/zerosFill;conv2d_4/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_4/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
з
conv2d_4/bias/optimizer_1
VariableV2*
shared_name * 
_class
loc:@conv2d_4/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
т
 conv2d_4/bias/optimizer_1/AssignAssignconv2d_4/bias/optimizer_1+conv2d_4/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
М
conv2d_4/bias/optimizer_1/readIdentityconv2d_4/bias/optimizer_1*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
╕
;conv2d_5/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_5/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_5/kernel/optimizer/Initializer/zerosFill;conv2d_5/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_5/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
┴
conv2d_5/kernel/optimizer
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container 
Ё
 conv2d_5/kernel/optimizer/AssignAssignconv2d_5/kernel/optimizer+conv2d_5/kernel/optimizer/Initializer/zeros*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ъ
conv2d_5/kernel/optimizer/readIdentityconv2d_5/kernel/optimizer*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
║
=conv2d_5/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_5/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_5/kernel/optimizer_1/Initializer/zerosFill=conv2d_5/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_5/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
├
conv2d_5/kernel/optimizer_1
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container 
Ў
"conv2d_5/kernel/optimizer_1/AssignAssignconv2d_5/kernel/optimizer_1-conv2d_5/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
Ю
 conv2d_5/kernel/optimizer_1/readIdentityconv2d_5/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
е
9conv2d_5/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_5/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_5/bias/optimizer/Initializer/zerosFill9conv2d_5/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_5/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
е
conv2d_5/bias/optimizer
VariableV2* 
_class
loc:@conv2d_5/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
▄
conv2d_5/bias/optimizer/AssignAssignconv2d_5/bias/optimizer)conv2d_5/bias/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
И
conv2d_5/bias/optimizer/readIdentityconv2d_5/bias/optimizer*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
з
;conv2d_5/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_5/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: 
№
+conv2d_5/bias/optimizer_1/Initializer/zerosFill;conv2d_5/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_5/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
з
conv2d_5/bias/optimizer_1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_5/bias*
	container 
т
 conv2d_5/bias/optimizer_1/AssignAssignconv2d_5/bias/optimizer_1+conv2d_5/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
М
conv2d_5/bias/optimizer_1/readIdentityconv2d_5/bias/optimizer_1*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
╕
;conv2d_6/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   @   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_6/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_6/kernel/optimizer/Initializer/zerosFill;conv2d_6/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_6/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
┴
conv2d_6/kernel/optimizer
VariableV2*
shared_name *"
_class
loc:@conv2d_6/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
Ё
 conv2d_6/kernel/optimizer/AssignAssignconv2d_6/kernel/optimizer+conv2d_6/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
Ъ
conv2d_6/kernel/optimizer/readIdentityconv2d_6/kernel/optimizer*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
║
=conv2d_6/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   @   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_6/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_6/kernel/optimizer_1/Initializer/zerosFill=conv2d_6/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_6/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
├
conv2d_6/kernel/optimizer_1
VariableV2*"
_class
loc:@conv2d_6/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name 
Ў
"conv2d_6/kernel/optimizer_1/AssignAssignconv2d_6/kernel/optimizer_1-conv2d_6/kernel/optimizer_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Ю
 conv2d_6/kernel/optimizer_1/readIdentityconv2d_6/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
е
9conv2d_6/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_6/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_6/bias/optimizer/Initializer/zerosFill9conv2d_6/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_6/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
е
conv2d_6/bias/optimizer
VariableV2*
shared_name * 
_class
loc:@conv2d_6/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
▄
conv2d_6/bias/optimizer/AssignAssignconv2d_6/bias/optimizer)conv2d_6/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
И
conv2d_6/bias/optimizer/readIdentityconv2d_6/bias/optimizer*
T0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
з
;conv2d_6/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_6/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
№
+conv2d_6/bias/optimizer_1/Initializer/zerosFill;conv2d_6/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_6/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
з
conv2d_6/bias/optimizer_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_6/bias*
	container *
shape:@
т
 conv2d_6/bias/optimizer_1/AssignAssignconv2d_6/bias/optimizer_1+conv2d_6/bias/optimizer_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
М
conv2d_6/bias/optimizer_1/readIdentityconv2d_6/bias/optimizer_1*
T0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
к
8dense/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"А      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
Ф
.dense/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ў
(dense/kernel/optimizer/Initializer/zerosFill8dense/kernel/optimizer/Initializer/zeros/shape_as_tensor.dense/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	А
н
dense/kernel/optimizer
VariableV2*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А
▌
dense/kernel/optimizer/AssignAssigndense/kernel/optimizer(dense/kernel/optimizer/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
К
dense/kernel/optimizer/readIdentitydense/kernel/optimizer*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
м
:dense/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"А      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
Ц
0dense/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
¤
*dense/kernel/optimizer_1/Initializer/zerosFill:dense/kernel/optimizer_1/Initializer/zeros/shape_as_tensor0dense/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	А
п
dense/kernel/optimizer_1
VariableV2*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А
у
dense/kernel/optimizer_1/AssignAssigndense/kernel/optimizer_1*dense/kernel/optimizer_1/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
О
dense/kernel/optimizer_1/readIdentitydense/kernel/optimizer_1*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
Я
6dense/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Р
,dense/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
ъ
&dense/bias/optimizer/Initializer/zerosFill6dense/bias/optimizer/Initializer/zeros/shape_as_tensor,dense/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
Я
dense/bias/optimizer
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container *
shape:
╨
dense/bias/optimizer/AssignAssigndense/bias/optimizer&dense/bias/optimizer/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(

dense/bias/optimizer/readIdentitydense/bias/optimizer*
T0*
_class
loc:@dense/bias*
_output_shapes
:
б
8dense/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Т
.dense/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
Ё
(dense/bias/optimizer_1/Initializer/zerosFill8dense/bias/optimizer_1/Initializer/zeros/shape_as_tensor.dense/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
б
dense/bias/optimizer_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container 
╓
dense/bias/optimizer_1/AssignAssigndense/bias/optimizer_1(dense/bias/optimizer_1/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Г
dense/bias/optimizer_1/readIdentitydense/bias/optimizer_1*
T0*
_class
loc:@dense/bias*
_output_shapes
:
T
optimizer/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
T
optimizer/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
V
optimizer/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
И
(optimizer/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelconv2d/kernel/optimizerconv2d/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d/kernel*
use_nesterov( *&
_output_shapes
:*
use_locking( 
є
&optimizer/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasconv2d/bias/optimizerconv2d/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv2d/bias*
use_nesterov( *
_output_shapes
:
Ф
*optimizer/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernelconv2d_1/kernel/optimizerconv2d_1/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
 
(optimizer/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasconv2d_1/bias/optimizerconv2d_1/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( 
Ф
*optimizer/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernelconv2d_2/kernel/optimizerconv2d_2/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_2/kernel*
use_nesterov( *&
_output_shapes
: @*
use_locking( 
 
(optimizer/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasconv2d_2/bias/optimizerconv2d_2/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_2/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( 
Ф
*optimizer/update_conv2d_3/kernel/ApplyAdam	ApplyAdamconv2d_3/kernelconv2d_3/kernel/optimizerconv2d_3/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_3/kernel*
use_nesterov( *&
_output_shapes
:*
use_locking( 
 
(optimizer/update_conv2d_3/bias/ApplyAdam	ApplyAdamconv2d_3/biasconv2d_3/bias/optimizerconv2d_3/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_3/bias*
use_nesterov( *
_output_shapes
:
Ф
*optimizer/update_conv2d_4/kernel/ApplyAdam	ApplyAdamconv2d_4/kernelconv2d_4/kernel/optimizerconv2d_4/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_4/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
 
(optimizer/update_conv2d_4/bias/ApplyAdam	ApplyAdamconv2d_4/biasconv2d_4/bias/optimizerconv2d_4/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_4/bias*
use_nesterov( *
_output_shapes
: *
use_locking( 
Ф
*optimizer/update_conv2d_5/kernel/ApplyAdam	ApplyAdamconv2d_5/kernelconv2d_5/kernel/optimizerconv2d_5/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_5/kernel*
use_nesterov( *&
_output_shapes
: @
 
(optimizer/update_conv2d_5/bias/ApplyAdam	ApplyAdamconv2d_5/biasconv2d_5/bias/optimizerconv2d_5/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_5/bias*
use_nesterov( *
_output_shapes
:@
Ф
*optimizer/update_conv2d_6/kernel/ApplyAdam	ApplyAdamconv2d_6/kernelconv2d_6/kernel/optimizerconv2d_6/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_6/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_6/kernel*
use_nesterov( *&
_output_shapes
:@@*
use_locking( 
 
(optimizer/update_conv2d_6/bias/ApplyAdam	ApplyAdamconv2d_6/biasconv2d_6/bias/optimizerconv2d_6/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_6/bias*
use_nesterov( *
_output_shapes
:@
√
'optimizer/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/optimizerdense/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/kernel*
use_nesterov( *
_output_shapes
:	А*
use_locking( 
э
%optimizer/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/optimizerdense/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes
:
о
optimizer/mulMulbeta1_power/readoptimizer/beta1)^optimizer/update_conv2d/kernel/ApplyAdam'^optimizer/update_conv2d/bias/ApplyAdam+^optimizer/update_conv2d_1/kernel/ApplyAdam)^optimizer/update_conv2d_1/bias/ApplyAdam+^optimizer/update_conv2d_2/kernel/ApplyAdam)^optimizer/update_conv2d_2/bias/ApplyAdam+^optimizer/update_conv2d_3/kernel/ApplyAdam)^optimizer/update_conv2d_3/bias/ApplyAdam+^optimizer/update_conv2d_4/kernel/ApplyAdam)^optimizer/update_conv2d_4/bias/ApplyAdam+^optimizer/update_conv2d_5/kernel/ApplyAdam)^optimizer/update_conv2d_5/bias/ApplyAdam+^optimizer/update_conv2d_6/kernel/ApplyAdam)^optimizer/update_conv2d_6/bias/ApplyAdam(^optimizer/update_dense/kernel/ApplyAdam&^optimizer/update_dense/bias/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
а
optimizer/AssignAssignbeta1_poweroptimizer/mul*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
░
optimizer/mul_1Mulbeta2_power/readoptimizer/beta2)^optimizer/update_conv2d/kernel/ApplyAdam'^optimizer/update_conv2d/bias/ApplyAdam+^optimizer/update_conv2d_1/kernel/ApplyAdam)^optimizer/update_conv2d_1/bias/ApplyAdam+^optimizer/update_conv2d_2/kernel/ApplyAdam)^optimizer/update_conv2d_2/bias/ApplyAdam+^optimizer/update_conv2d_3/kernel/ApplyAdam)^optimizer/update_conv2d_3/bias/ApplyAdam+^optimizer/update_conv2d_4/kernel/ApplyAdam)^optimizer/update_conv2d_4/bias/ApplyAdam+^optimizer/update_conv2d_5/kernel/ApplyAdam)^optimizer/update_conv2d_5/bias/ApplyAdam+^optimizer/update_conv2d_6/kernel/ApplyAdam)^optimizer/update_conv2d_6/bias/ApplyAdam(^optimizer/update_dense/kernel/ApplyAdam&^optimizer/update_dense/bias/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
д
optimizer/Assign_1Assignbeta2_poweroptimizer/mul_1*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
я
	optimizerNoOp)^optimizer/update_conv2d/kernel/ApplyAdam'^optimizer/update_conv2d/bias/ApplyAdam+^optimizer/update_conv2d_1/kernel/ApplyAdam)^optimizer/update_conv2d_1/bias/ApplyAdam+^optimizer/update_conv2d_2/kernel/ApplyAdam)^optimizer/update_conv2d_2/bias/ApplyAdam+^optimizer/update_conv2d_3/kernel/ApplyAdam)^optimizer/update_conv2d_3/bias/ApplyAdam+^optimizer/update_conv2d_4/kernel/ApplyAdam)^optimizer/update_conv2d_4/bias/ApplyAdam+^optimizer/update_conv2d_5/kernel/ApplyAdam)^optimizer/update_conv2d_5/bias/ApplyAdam+^optimizer/update_conv2d_6/kernel/ApplyAdam)^optimizer/update_conv2d_6/bias/ApplyAdam(^optimizer/update_dense/kernel/ApplyAdam&^optimizer/update_dense/bias/ApplyAdam^optimizer/Assign^optimizer/Assign_1
°
initNoOp^conv2d/kernel/Assign^conv2d/bias/Assign^conv2d_1/kernel/Assign^conv2d_1/bias/Assign^conv2d_2/kernel/Assign^conv2d_2/bias/Assign^conv2d_3/kernel/Assign^conv2d_3/bias/Assign^conv2d_4/kernel/Assign^conv2d_4/bias/Assign^conv2d_5/kernel/Assign^conv2d_5/bias/Assign^conv2d_6/kernel/Assign^conv2d_6/bias/Assign^dense/kernel/Assign^dense/bias/Assign^beta1_power/Assign^beta2_power/Assign^conv2d/kernel/optimizer/Assign!^conv2d/kernel/optimizer_1/Assign^conv2d/bias/optimizer/Assign^conv2d/bias/optimizer_1/Assign!^conv2d_1/kernel/optimizer/Assign#^conv2d_1/kernel/optimizer_1/Assign^conv2d_1/bias/optimizer/Assign!^conv2d_1/bias/optimizer_1/Assign!^conv2d_2/kernel/optimizer/Assign#^conv2d_2/kernel/optimizer_1/Assign^conv2d_2/bias/optimizer/Assign!^conv2d_2/bias/optimizer_1/Assign!^conv2d_3/kernel/optimizer/Assign#^conv2d_3/kernel/optimizer_1/Assign^conv2d_3/bias/optimizer/Assign!^conv2d_3/bias/optimizer_1/Assign!^conv2d_4/kernel/optimizer/Assign#^conv2d_4/kernel/optimizer_1/Assign^conv2d_4/bias/optimizer/Assign!^conv2d_4/bias/optimizer_1/Assign!^conv2d_5/kernel/optimizer/Assign#^conv2d_5/kernel/optimizer_1/Assign^conv2d_5/bias/optimizer/Assign!^conv2d_5/bias/optimizer_1/Assign!^conv2d_6/kernel/optimizer/Assign#^conv2d_6/kernel/optimizer_1/Assign^conv2d_6/bias/optimizer/Assign!^conv2d_6/bias/optimizer_1/Assign^dense/kernel/optimizer/Assign ^dense/kernel/optimizer_1/Assign^dense/bias/optimizer/Assign^dense/bias/optimizer_1/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
╛	
save/SaveV2/tensor_namesConst*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
╟
save/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
ў	
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv2d/biasconv2d/bias/optimizerconv2d/bias/optimizer_1conv2d/kernelconv2d/kernel/optimizerconv2d/kernel/optimizer_1conv2d_1/biasconv2d_1/bias/optimizerconv2d_1/bias/optimizer_1conv2d_1/kernelconv2d_1/kernel/optimizerconv2d_1/kernel/optimizer_1conv2d_2/biasconv2d_2/bias/optimizerconv2d_2/bias/optimizer_1conv2d_2/kernelconv2d_2/kernel/optimizerconv2d_2/kernel/optimizer_1conv2d_3/biasconv2d_3/bias/optimizerconv2d_3/bias/optimizer_1conv2d_3/kernelconv2d_3/kernel/optimizerconv2d_3/kernel/optimizer_1conv2d_4/biasconv2d_4/bias/optimizerconv2d_4/bias/optimizer_1conv2d_4/kernelconv2d_4/kernel/optimizerconv2d_4/kernel/optimizer_1conv2d_5/biasconv2d_5/bias/optimizerconv2d_5/bias/optimizer_1conv2d_5/kernelconv2d_5/kernel/optimizerconv2d_5/kernel/optimizer_1conv2d_6/biasconv2d_6/bias/optimizerconv2d_6/bias/optimizer_1conv2d_6/kernelconv2d_6/kernel/optimizerconv2d_6/kernel/optimizer_1
dense/biasdense/bias/optimizerdense/bias/optimizer_1dense/kerneldense/kernel/optimizerdense/kernel/optimizer_1*@
dtypes6
422
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
╨	
save/RestoreV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
┘
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Ч
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*@
dtypes6
422*▐
_output_shapes╦
╚::::::::::::::::::::::::::::::::::::::::::::::::::
Ь
save/AssignAssignbeta1_powersave/RestoreV2*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
а
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
д
save/Assign_2Assignconv2d/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
о
save/Assign_3Assignconv2d/bias/optimizersave/RestoreV2:3*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
░
save/Assign_4Assignconv2d/bias/optimizer_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
┤
save/Assign_5Assignconv2d/kernelsave/RestoreV2:5*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
╛
save/Assign_6Assignconv2d/kernel/optimizersave/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
└
save/Assign_7Assignconv2d/kernel/optimizer_1save/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
и
save/Assign_8Assignconv2d_1/biassave/RestoreV2:8*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
▓
save/Assign_9Assignconv2d_1/bias/optimizersave/RestoreV2:9*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╢
save/Assign_10Assignconv2d_1/bias/optimizer_1save/RestoreV2:10*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
║
save/Assign_11Assignconv2d_1/kernelsave/RestoreV2:11*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
─
save/Assign_12Assignconv2d_1/kernel/optimizersave/RestoreV2:12*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╞
save/Assign_13Assignconv2d_1/kernel/optimizer_1save/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
к
save/Assign_14Assignconv2d_2/biassave/RestoreV2:14*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
┤
save/Assign_15Assignconv2d_2/bias/optimizersave/RestoreV2:15*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╢
save/Assign_16Assignconv2d_2/bias/optimizer_1save/RestoreV2:16*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
║
save/Assign_17Assignconv2d_2/kernelsave/RestoreV2:17*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
─
save/Assign_18Assignconv2d_2/kernel/optimizersave/RestoreV2:18*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╞
save/Assign_19Assignconv2d_2/kernel/optimizer_1save/RestoreV2:19*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
к
save/Assign_20Assignconv2d_3/biassave/RestoreV2:20*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
┤
save/Assign_21Assignconv2d_3/bias/optimizersave/RestoreV2:21*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
╢
save/Assign_22Assignconv2d_3/bias/optimizer_1save/RestoreV2:22*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
║
save/Assign_23Assignconv2d_3/kernelsave/RestoreV2:23*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
─
save/Assign_24Assignconv2d_3/kernel/optimizersave/RestoreV2:24*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
╞
save/Assign_25Assignconv2d_3/kernel/optimizer_1save/RestoreV2:25*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
к
save/Assign_26Assignconv2d_4/biassave/RestoreV2:26*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: *
use_locking(
┤
save/Assign_27Assignconv2d_4/bias/optimizersave/RestoreV2:27*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
╢
save/Assign_28Assignconv2d_4/bias/optimizer_1save/RestoreV2:28*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
║
save/Assign_29Assignconv2d_4/kernelsave/RestoreV2:29*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
─
save/Assign_30Assignconv2d_4/kernel/optimizersave/RestoreV2:30*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╞
save/Assign_31Assignconv2d_4/kernel/optimizer_1save/RestoreV2:31*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
к
save/Assign_32Assignconv2d_5/biassave/RestoreV2:32*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
┤
save/Assign_33Assignconv2d_5/bias/optimizersave/RestoreV2:33*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
╢
save/Assign_34Assignconv2d_5/bias/optimizer_1save/RestoreV2:34*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
║
save/Assign_35Assignconv2d_5/kernelsave/RestoreV2:35*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
─
save/Assign_36Assignconv2d_5/kernel/optimizersave/RestoreV2:36*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╞
save/Assign_37Assignconv2d_5/kernel/optimizer_1save/RestoreV2:37*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
к
save/Assign_38Assignconv2d_6/biassave/RestoreV2:38*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
┤
save/Assign_39Assignconv2d_6/bias/optimizersave/RestoreV2:39*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╢
save/Assign_40Assignconv2d_6/bias/optimizer_1save/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
║
save/Assign_41Assignconv2d_6/kernelsave/RestoreV2:41*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
─
save/Assign_42Assignconv2d_6/kernel/optimizersave/RestoreV2:42*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
╞
save/Assign_43Assignconv2d_6/kernel/optimizer_1save/RestoreV2:43*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
д
save/Assign_44Assign
dense/biassave/RestoreV2:44*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
о
save/Assign_45Assigndense/bias/optimizersave/RestoreV2:45*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
░
save/Assign_46Assigndense/bias/optimizer_1save/RestoreV2:46*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
н
save/Assign_47Assigndense/kernelsave/RestoreV2:47*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
╖
save/Assign_48Assigndense/kernel/optimizersave/RestoreV2:48*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
╣
save/Assign_49Assigndense/kernel/optimizer_1save/RestoreV2:49*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
▐
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_41ecff55b1ce4283b33e693e3557529d/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
╧	
save_1/SaveV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
╪
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Ш

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv2d/biasconv2d/bias/optimizerconv2d/bias/optimizer_1conv2d/kernelconv2d/kernel/optimizerconv2d/kernel/optimizer_1conv2d_1/biasconv2d_1/bias/optimizerconv2d_1/bias/optimizer_1conv2d_1/kernelconv2d_1/kernel/optimizerconv2d_1/kernel/optimizer_1conv2d_2/biasconv2d_2/bias/optimizerconv2d_2/bias/optimizer_1conv2d_2/kernelconv2d_2/kernel/optimizerconv2d_2/kernel/optimizer_1conv2d_3/biasconv2d_3/bias/optimizerconv2d_3/bias/optimizer_1conv2d_3/kernelconv2d_3/kernel/optimizerconv2d_3/kernel/optimizer_1conv2d_4/biasconv2d_4/bias/optimizerconv2d_4/bias/optimizer_1conv2d_4/kernelconv2d_4/kernel/optimizerconv2d_4/kernel/optimizer_1conv2d_5/biasconv2d_5/bias/optimizerconv2d_5/bias/optimizer_1conv2d_5/kernelconv2d_5/kernel/optimizerconv2d_5/kernel/optimizer_1conv2d_6/biasconv2d_6/bias/optimizerconv2d_6/bias/optimizer_1conv2d_6/kernelconv2d_6/kernel/optimizerconv2d_6/kernel/optimizer_1
dense/biasdense/bias/optimizerdense/bias/optimizer_1dense/kerneldense/kernel/optimizerdense/kernel/optimizer_1"/device:CPU:0*@
dtypes6
422
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
╥	
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
█
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Я
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*▐
_output_shapes╦
╚::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
а
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
д
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
и
save_1/Assign_2Assignconv2d/biassave_1/RestoreV2:2*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
▓
save_1/Assign_3Assignconv2d/bias/optimizersave_1/RestoreV2:3*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
┤
save_1/Assign_4Assignconv2d/bias/optimizer_1save_1/RestoreV2:4*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
╕
save_1/Assign_5Assignconv2d/kernelsave_1/RestoreV2:5*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
┬
save_1/Assign_6Assignconv2d/kernel/optimizersave_1/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
─
save_1/Assign_7Assignconv2d/kernel/optimizer_1save_1/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
м
save_1/Assign_8Assignconv2d_1/biassave_1/RestoreV2:8*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
╢
save_1/Assign_9Assignconv2d_1/bias/optimizersave_1/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
║
save_1/Assign_10Assignconv2d_1/bias/optimizer_1save_1/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
╛
save_1/Assign_11Assignconv2d_1/kernelsave_1/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
╚
save_1/Assign_12Assignconv2d_1/kernel/optimizersave_1/RestoreV2:12*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╩
save_1/Assign_13Assignconv2d_1/kernel/optimizer_1save_1/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
о
save_1/Assign_14Assignconv2d_2/biassave_1/RestoreV2:14*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╕
save_1/Assign_15Assignconv2d_2/bias/optimizersave_1/RestoreV2:15*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
║
save_1/Assign_16Assignconv2d_2/bias/optimizer_1save_1/RestoreV2:16*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╛
save_1/Assign_17Assignconv2d_2/kernelsave_1/RestoreV2:17*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╚
save_1/Assign_18Assignconv2d_2/kernel/optimizersave_1/RestoreV2:18*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╩
save_1/Assign_19Assignconv2d_2/kernel/optimizer_1save_1/RestoreV2:19*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
о
save_1/Assign_20Assignconv2d_3/biassave_1/RestoreV2:20*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
╕
save_1/Assign_21Assignconv2d_3/bias/optimizersave_1/RestoreV2:21*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
║
save_1/Assign_22Assignconv2d_3/bias/optimizer_1save_1/RestoreV2:22*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
╛
save_1/Assign_23Assignconv2d_3/kernelsave_1/RestoreV2:23*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
╚
save_1/Assign_24Assignconv2d_3/kernel/optimizersave_1/RestoreV2:24*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
╩
save_1/Assign_25Assignconv2d_3/kernel/optimizer_1save_1/RestoreV2:25*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
о
save_1/Assign_26Assignconv2d_4/biassave_1/RestoreV2:26*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
╕
save_1/Assign_27Assignconv2d_4/bias/optimizersave_1/RestoreV2:27*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: *
use_locking(
║
save_1/Assign_28Assignconv2d_4/bias/optimizer_1save_1/RestoreV2:28*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
╛
save_1/Assign_29Assignconv2d_4/kernelsave_1/RestoreV2:29*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╚
save_1/Assign_30Assignconv2d_4/kernel/optimizersave_1/RestoreV2:30*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╩
save_1/Assign_31Assignconv2d_4/kernel/optimizer_1save_1/RestoreV2:31*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
о
save_1/Assign_32Assignconv2d_5/biassave_1/RestoreV2:32*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╕
save_1/Assign_33Assignconv2d_5/bias/optimizersave_1/RestoreV2:33*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
║
save_1/Assign_34Assignconv2d_5/bias/optimizer_1save_1/RestoreV2:34*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
╛
save_1/Assign_35Assignconv2d_5/kernelsave_1/RestoreV2:35*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
╚
save_1/Assign_36Assignconv2d_5/kernel/optimizersave_1/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
╩
save_1/Assign_37Assignconv2d_5/kernel/optimizer_1save_1/RestoreV2:37*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
о
save_1/Assign_38Assignconv2d_6/biassave_1/RestoreV2:38*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╕
save_1/Assign_39Assignconv2d_6/bias/optimizersave_1/RestoreV2:39*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
║
save_1/Assign_40Assignconv2d_6/bias/optimizer_1save_1/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
╛
save_1/Assign_41Assignconv2d_6/kernelsave_1/RestoreV2:41*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
╚
save_1/Assign_42Assignconv2d_6/kernel/optimizersave_1/RestoreV2:42*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
╩
save_1/Assign_43Assignconv2d_6/kernel/optimizer_1save_1/RestoreV2:43*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
и
save_1/Assign_44Assign
dense/biassave_1/RestoreV2:44*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
▓
save_1/Assign_45Assigndense/bias/optimizersave_1/RestoreV2:45*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
┤
save_1/Assign_46Assigndense/bias/optimizer_1save_1/RestoreV2:46*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
▒
save_1/Assign_47Assigndense/kernelsave_1/RestoreV2:47*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
╗
save_1/Assign_48Assigndense/kernel/optimizersave_1/RestoreV2:48*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
╜
save_1/Assign_49Assigndense/kernel/optimizer_1save_1/RestoreV2:49*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
╞
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

	optimizer"╠2
	variables╛2╗2
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
`
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
`
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
`
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:0
q
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:0
`
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:0
q
conv2d_6/kernel:0conv2d_6/kernel/Assignconv2d_6/kernel/read:02,conv2d_6/kernel/Initializer/random_uniform:0
`
conv2d_6/bias:0conv2d_6/bias/Assignconv2d_6/bias/read:02!conv2d_6/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
И
conv2d/kernel/optimizer:0conv2d/kernel/optimizer/Assignconv2d/kernel/optimizer/read:02+conv2d/kernel/optimizer/Initializer/zeros:0
Р
conv2d/kernel/optimizer_1:0 conv2d/kernel/optimizer_1/Assign conv2d/kernel/optimizer_1/read:02-conv2d/kernel/optimizer_1/Initializer/zeros:0
А
conv2d/bias/optimizer:0conv2d/bias/optimizer/Assignconv2d/bias/optimizer/read:02)conv2d/bias/optimizer/Initializer/zeros:0
И
conv2d/bias/optimizer_1:0conv2d/bias/optimizer_1/Assignconv2d/bias/optimizer_1/read:02+conv2d/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_1/kernel/optimizer:0 conv2d_1/kernel/optimizer/Assign conv2d_1/kernel/optimizer/read:02-conv2d_1/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_1/kernel/optimizer_1:0"conv2d_1/kernel/optimizer_1/Assign"conv2d_1/kernel/optimizer_1/read:02/conv2d_1/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_1/bias/optimizer:0conv2d_1/bias/optimizer/Assignconv2d_1/bias/optimizer/read:02+conv2d_1/bias/optimizer/Initializer/zeros:0
Р
conv2d_1/bias/optimizer_1:0 conv2d_1/bias/optimizer_1/Assign conv2d_1/bias/optimizer_1/read:02-conv2d_1/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_2/kernel/optimizer:0 conv2d_2/kernel/optimizer/Assign conv2d_2/kernel/optimizer/read:02-conv2d_2/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_2/kernel/optimizer_1:0"conv2d_2/kernel/optimizer_1/Assign"conv2d_2/kernel/optimizer_1/read:02/conv2d_2/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_2/bias/optimizer:0conv2d_2/bias/optimizer/Assignconv2d_2/bias/optimizer/read:02+conv2d_2/bias/optimizer/Initializer/zeros:0
Р
conv2d_2/bias/optimizer_1:0 conv2d_2/bias/optimizer_1/Assign conv2d_2/bias/optimizer_1/read:02-conv2d_2/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_3/kernel/optimizer:0 conv2d_3/kernel/optimizer/Assign conv2d_3/kernel/optimizer/read:02-conv2d_3/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_3/kernel/optimizer_1:0"conv2d_3/kernel/optimizer_1/Assign"conv2d_3/kernel/optimizer_1/read:02/conv2d_3/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_3/bias/optimizer:0conv2d_3/bias/optimizer/Assignconv2d_3/bias/optimizer/read:02+conv2d_3/bias/optimizer/Initializer/zeros:0
Р
conv2d_3/bias/optimizer_1:0 conv2d_3/bias/optimizer_1/Assign conv2d_3/bias/optimizer_1/read:02-conv2d_3/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_4/kernel/optimizer:0 conv2d_4/kernel/optimizer/Assign conv2d_4/kernel/optimizer/read:02-conv2d_4/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_4/kernel/optimizer_1:0"conv2d_4/kernel/optimizer_1/Assign"conv2d_4/kernel/optimizer_1/read:02/conv2d_4/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_4/bias/optimizer:0conv2d_4/bias/optimizer/Assignconv2d_4/bias/optimizer/read:02+conv2d_4/bias/optimizer/Initializer/zeros:0
Р
conv2d_4/bias/optimizer_1:0 conv2d_4/bias/optimizer_1/Assign conv2d_4/bias/optimizer_1/read:02-conv2d_4/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_5/kernel/optimizer:0 conv2d_5/kernel/optimizer/Assign conv2d_5/kernel/optimizer/read:02-conv2d_5/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_5/kernel/optimizer_1:0"conv2d_5/kernel/optimizer_1/Assign"conv2d_5/kernel/optimizer_1/read:02/conv2d_5/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_5/bias/optimizer:0conv2d_5/bias/optimizer/Assignconv2d_5/bias/optimizer/read:02+conv2d_5/bias/optimizer/Initializer/zeros:0
Р
conv2d_5/bias/optimizer_1:0 conv2d_5/bias/optimizer_1/Assign conv2d_5/bias/optimizer_1/read:02-conv2d_5/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_6/kernel/optimizer:0 conv2d_6/kernel/optimizer/Assign conv2d_6/kernel/optimizer/read:02-conv2d_6/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_6/kernel/optimizer_1:0"conv2d_6/kernel/optimizer_1/Assign"conv2d_6/kernel/optimizer_1/read:02/conv2d_6/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_6/bias/optimizer:0conv2d_6/bias/optimizer/Assignconv2d_6/bias/optimizer/read:02+conv2d_6/bias/optimizer/Initializer/zeros:0
Р
conv2d_6/bias/optimizer_1:0 conv2d_6/bias/optimizer_1/Assign conv2d_6/bias/optimizer_1/read:02-conv2d_6/bias/optimizer_1/Initializer/zeros:0
Д
dense/kernel/optimizer:0dense/kernel/optimizer/Assigndense/kernel/optimizer/read:02*dense/kernel/optimizer/Initializer/zeros:0
М
dense/kernel/optimizer_1:0dense/kernel/optimizer_1/Assigndense/kernel/optimizer_1/read:02,dense/kernel/optimizer_1/Initializer/zeros:0
|
dense/bias/optimizer:0dense/bias/optimizer/Assigndense/bias/optimizer/read:02(dense/bias/optimizer/Initializer/zeros:0
Д
dense/bias/optimizer_1:0dense/bias/optimizer_1/Assigndense/bias/optimizer_1/read:02*dense/bias/optimizer_1/Initializer/zeros:0"7
losses-
+
)sparse_softmax_cross_entropy_loss/value:0"Ы
trainable_variablesГА
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
`
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
`
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
`
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:0
q
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:0
`
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:0
q
conv2d_6/kernel:0conv2d_6/kernel/Assignconv2d_6/kernel/read:02,conv2d_6/kernel/Initializer/random_uniform:0
`
conv2d_6/bias:0conv2d_6/bias/Assignconv2d_6/bias/read:02!conv2d_6/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0*─
model║
=
x1:05
x1:0+                           
;
y:04
y:0+                           
=
x2:05
x2:0+                           0

features:0"

features:0         А/
prediction:0
prediction:0	         tensorflow/serving/predict╔ц
Ж(█'
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ы
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Р
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*	1.6.0-rc02v1.5.0-2207-g8aa14cd╖¤

Щ
x1Placeholder*
dtype0*A
_output_shapes/
-:+                           *6
shape-:+                           
Щ
x2Placeholder*6
shape-:+                           *
dtype0*A
_output_shapes/
-:+                           
Ш
yPlaceholder*
dtype0*A
_output_shapes/
-:+                           *6
shape-:+                           
J
ConstConst*
valueB
 *╖Q9*
dtype0*
_output_shapes
: 
U
lrPlaceholderWithDefaultConst*
dtype0*
_output_shapes
: *
shape: 
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *▀Xр╜* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *▀Xр=* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0* 
_class
loc:@conv2d/kernel*
seed2 
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
│
conv2d/kernel
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
Ч
-conv2d/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
И
#conv2d/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╨
conv2d/bias/Initializer/zerosFill-conv2d/bias/Initializer/zeros/shape_as_tensor#conv2d/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2d/bias*
_output_shapes
:
Ч
conv2d/bias
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ъ
conv2d/Conv2DConv2Dx1conv2d/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           *
	dilations

Э
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           
o
conv2d/ReluReluconv2d/BiasAdd*
T0*A
_output_shapes/
-:+                           
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *я[ё╜*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 *
dtype0*&
_output_shapes
: 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
╖
conv2d_1/kernel
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *"
_class
loc:@conv2d_1/kernel*
	container 
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
Ы
/conv2d_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
М
%conv2d_1/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
╪
conv2d_1/bias/Initializer/zerosFill/conv2d_1/bias/Initializer/zeros/shape_as_tensor%conv2d_1/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
Ы
conv2d_1/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape: 
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ў
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                            
г
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                            
s
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*A
_output_shapes/
-:+                            
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *   ╛*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
: @*

seed 
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
╖
conv2d_2/kernel
VariableV2*"
_class
loc:@conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
█
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Ж
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Ы
/conv2d_2/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:
М
%conv2d_2/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
╪
conv2d_2/bias/Initializer/zerosFill/conv2d_2/bias/Initializer/zeros/shape_as_tensor%conv2d_2/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
Ы
conv2d_2/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@
╛
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
∙
conv2d_2/Conv2DConv2Dconv2d_1/Reluconv2d_2/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           @
г
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           @
s
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*A
_output_shapes/
-:+                           @
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *▓Vє╜*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *▓Vє=*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Ї
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
╖
conv2d_3/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:
█
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
Ж
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
Ы
/conv2d_3/bias/Initializer/zeros/shape_as_tensorConst*
valueB:* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:
М
%conv2d_3/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
╪
conv2d_3/bias/Initializer/zerosFill/conv2d_3/bias/Initializer/zeros/shape_as_tensor%conv2d_3/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
Ы
conv2d_3/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:
╛
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
t
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ю
conv2d_3/Conv2DConv2Dx2conv2d_3/kernel/read*
paddingVALID*A
_output_shapes/
-:+                           *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
г
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           
s
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*A
_output_shapes/
-:+                           
╬
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*A
_output_shapes/
-:+                           
н
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *├╨Р╜*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *├╨Р=*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
┌
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
Ї
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
ц
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
╖
conv2d_4/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape: 
█
conv2d_4/kernel/AssignAssignconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
Ж
conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
Ы
/conv2d_4/bias/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:
М
%conv2d_4/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
╪
conv2d_4/bias/Initializer/zerosFill/conv2d_4/bias/Initializer/zeros/shape_as_tensor%conv2d_4/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
Ы
conv2d_4/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_4/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
╛
conv2d_4/bias/AssignAssignconv2d_4/biasconv2d_4/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
t
conv2d_4/bias/readIdentityconv2d_4/bias*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Б
conv2d_4/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_4/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                            *
	dilations

г
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                            
s
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*A
_output_shapes/
-:+                            
╨
max_pooling2d_1/MaxPoolMaxPoolconv2d_4/Relu*A
_output_shapes/
-:+                            *
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID
н
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк=*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_5/kernel*
seed2 *
dtype0*&
_output_shapes
: @
┌
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
Ї
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
ц
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
╖
conv2d_5/kernel
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container 
█
conv2d_5/kernel/AssignAssignconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ж
conv2d_5/kernel/readIdentityconv2d_5/kernel*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
Ы
/conv2d_5/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
М
%conv2d_5/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: 
╪
conv2d_5/bias/Initializer/zerosFill/conv2d_5/bias/Initializer/zeros/shape_as_tensor%conv2d_5/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
Ы
conv2d_5/bias
VariableV2* 
_class
loc:@conv2d_5/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
╛
conv2d_5/bias/AssignAssignconv2d_5/biasconv2d_5/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
conv2d_5/bias/readIdentityconv2d_5/bias*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Г
conv2d_5/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_5/kernel/read*
paddingVALID*A
_output_shapes/
-:+                           @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
г
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           @
s
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*A
_output_shapes/
-:+                           @
н
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   @   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╜*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═У=*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_6/kernel*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
┌
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
Ї
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
ц
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
╖
conv2d_6/kernel
VariableV2*"
_class
loc:@conv2d_6/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name 
█
conv2d_6/kernel/AssignAssignconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Ж
conv2d_6/kernel/readIdentityconv2d_6/kernel*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
Ы
/conv2d_6/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
М
%conv2d_6/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
╪
conv2d_6/bias/Initializer/zerosFill/conv2d_6/bias/Initializer/zeros/shape_as_tensor%conv2d_6/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
Ы
conv2d_6/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_6/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
╛
conv2d_6/bias/AssignAssignconv2d_6/biasconv2d_6/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
t
conv2d_6/bias/readIdentityconv2d_6/bias*
T0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
g
conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
∙
conv2d_6/Conv2DConv2Dconv2d_5/Reluconv2d_6/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           @*
	dilations

г
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           @
s
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*A
_output_shapes/
-:+                           @
Р
stackPackconv2d_2/Reluconv2d_6/Relu*
T0*

axis*
N*E
_output_shapes3
1:/                           @
_
features/shapeConst*
valueB"    А   *
dtype0*
_output_shapes
:
k
featuresReshapestackfeatures/shape*
T0*
Tshape0*(
_output_shapes
:         А
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"А      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *AW╛*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *AW>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ц
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
с
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
╙
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
г
dense/kernel
VariableV2*
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name *
_class
loc:@dense/kernel*
	container 
╚
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
Х
,dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Ж
"dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
╠
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
Х

dense/bias
VariableV2*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
▓
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes
:
Л
dense/MatMulMatMulfeaturesdense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
А
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
V
prediction/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Ж

predictionArgMaxdense/BiasAddprediction/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
^
Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
d
ReshapeReshapeyReshape/shape*
T0*
Tshape0*'
_output_shapes
:         
`
Reshape_1/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
t
	Reshape_1Reshapedense/BiasAddReshape_1/shape*
T0*
Tshape0*'
_output_shapes
:         
и
Fsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/SqueezeSqueezeReshape*
T0*#
_output_shapes
:         *
squeeze_dims

         
l
'sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╢
0sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeFsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Squeeze*
T0*
out_type0*
_output_shapes
:
¤
3sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogits	Reshape_1Fsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Squeeze*
T0*6
_output_shapes$
":         :         *
Tlabels0
З
Dsparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Е
Csparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
╢
Csparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:
Д
Bsparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Z
Rsparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
Н
%sparse_softmax_cross_entropy_loss/MulMul3sparse_softmax_cross_entropy_loss/xentropy/xentropy'sparse_softmax_cross_entropy_loss/ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:         
╚
)sparse_softmax_cross_entropy_loss/Const_1ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
╝
%sparse_softmax_cross_entropy_loss/SumSum%sparse_softmax_cross_entropy_loss/Mul)sparse_softmax_cross_entropy_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
╧
5sparse_softmax_cross_entropy_loss/num_present/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
╜
3sparse_softmax_cross_entropy_loss/num_present/EqualEqual'sparse_softmax_cross_entropy_loss/Const5sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
р
Hsparse_softmax_cross_entropy_loss/num_present/zeros_like/shape_as_tensorConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╪
>sparse_softmax_cross_entropy_loss/num_present/zeros_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
8sparse_softmax_cross_entropy_loss/num_present/zeros_likeFillHsparse_softmax_cross_entropy_loss/num_present/zeros_like/shape_as_tensor>sparse_softmax_cross_entropy_loss/num_present/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
╒
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╫
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ё
7sparse_softmax_cross_entropy_loss/num_present/ones_likeFill=sparse_softmax_cross_entropy_loss/num_present/ones_like/Shape=sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
З
4sparse_softmax_cross_entropy_loss/num_present/SelectSelect3sparse_softmax_cross_entropy_loss/num_present/Equal8sparse_softmax_cross_entropy_loss/num_present/zeros_like7sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
·
bsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
°
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
й
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ў
`sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
═
psparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
К
Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
▄
Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
│
Isparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:         
ї
?sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMul4sparse_softmax_cross_entropy_loss/num_present/SelectIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
╥
3sparse_softmax_cross_entropy_loss/num_present/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ш
-sparse_softmax_cross_entropy_loss/num_presentSum?sparse_softmax_cross_entropy_loss/num_present/broadcast_weights3sparse_softmax_cross_entropy_loss/num_present/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
┴
)sparse_softmax_cross_entropy_loss/Const_2ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╛
'sparse_softmax_cross_entropy_loss/Sum_1Sum%sparse_softmax_cross_entropy_loss/Sum)sparse_softmax_cross_entropy_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
┼
+sparse_softmax_cross_entropy_loss/Greater/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
▒
)sparse_softmax_cross_entropy_loss/GreaterGreater-sparse_softmax_cross_entropy_loss/num_present+sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
├
)sparse_softmax_cross_entropy_loss/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
л
'sparse_softmax_cross_entropy_loss/EqualEqual-sparse_softmax_cross_entropy_loss/num_present)sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
╔
1sparse_softmax_cross_entropy_loss/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╦
1sparse_softmax_cross_entropy_loss/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╠
+sparse_softmax_cross_entropy_loss/ones_likeFill1sparse_softmax_cross_entropy_loss/ones_like/Shape1sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
╪
(sparse_softmax_cross_entropy_loss/SelectSelect'sparse_softmax_cross_entropy_loss/Equal+sparse_softmax_cross_entropy_loss/ones_like-sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
д
%sparse_softmax_cross_entropy_loss/divRealDiv'sparse_softmax_cross_entropy_loss/Sum_1(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╘
<sparse_softmax_cross_entropy_loss/zeros_like/shape_as_tensorConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╠
2sparse_softmax_cross_entropy_loss/zeros_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
,sparse_softmax_cross_entropy_loss/zeros_likeFill<sparse_softmax_cross_entropy_loss/zeros_like/shape_as_tensor2sparse_softmax_cross_entropy_loss/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
╥
'sparse_softmax_cross_entropy_loss/valueSelect)sparse_softmax_cross_entropy_loss/Greater%sparse_softmax_cross_entropy_loss/div,sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Ф
Qgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/shape_as_tensorConst*
valueB *
dtype0*
_output_shapes
: 
М
Ggradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш
Agradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeFillQgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/shape_as_tensorGgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
ц
=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect)sparse_softmax_cross_entropy_loss/Greatergradients/FillAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
ш
?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select)sparse_softmax_cross_entropy_loss/GreaterAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likegradients/Fill*
T0*
_output_shapes
: 
╤
Ggradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp>^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select@^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1
╫
Ogradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectH^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
▌
Qgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1H^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 
}
:gradients/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ъ
Jgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
у
<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Й
8gradients/sparse_softmax_cross_entropy_loss/div_grad/SumSum<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivJgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ь
<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Й
8gradients/sparse_softmax_cross_entropy_loss/div_grad/NegNeg'sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
╬
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv8gradients/sparse_softmax_cross_entropy_loss/div_grad/Neg(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╘
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ё
8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulMulOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
Й
:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Sum8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulLgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Є
>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
═
Egradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
╤
Mgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
╫
Ogradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
З
Dgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Н
>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeMgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyDgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
И
Egradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
¤
;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeEgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 
Х
Rgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/shape_as_tensorConst*
valueB *
dtype0*
_output_shapes
: 
Н
Hgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
Bgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeFillRgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/shape_as_tensorHgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
з
>gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect'sparse_softmax_cross_entropy_loss/EqualOgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Bgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
й
@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select'sparse_softmax_cross_entropy_loss/EqualBgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeOgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
╘
Hgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp?^gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectA^gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
█
Pgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity>gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectI^gradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
с
Rgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1I^gradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
М
Bgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
√
<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshape;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileBgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Я
:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape%sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
√
9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/TileTile<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*#
_output_shapes
:         *

Tmultiples0
н
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ъ
Jgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╤
8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mulMul9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile'sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:         
Е
8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/SumSum8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mulJgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
∙
<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
▀
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1Mul3sparse_softmax_cross_entropy_loss/xentropy/xentropy9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
Л
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1Lgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Є
>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
═
Egradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
▐
Mgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:         
╫
Ogradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
Ф
Jgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
в
Dgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeRgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Jgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
┴
Bgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShape?sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
У
Agradients/sparse_softmax_cross_entropy_loss/num_present_grad/TileTileDgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeBgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
Ч
Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
▀
Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1ShapeIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
ш
dgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeVgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Х
Rgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMulAgradients/sparse_softmax_cross_entropy_loss/num_present_grad/TileIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
╙
Rgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumRgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/muldgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
║
Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeRgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
В
Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1Mul4sparse_softmax_cross_entropy_loss/num_present/SelectAgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:         
┘
Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1SumTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1fgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
═
Xgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1ReshapeTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
Ы
_gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpW^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeY^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
╣
ggradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityVgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape`^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*i
_class_
][loc:@gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
╠
igradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1IdentityXgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1`^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:         
и
^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ь
\gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumigradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
К
gradients/zeros_like	ZerosLike5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:         
Е
Rgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradient5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:         *┤
messageиеCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
Ь
Qgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
╗
Mgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsMgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyQgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
в
Fgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulMgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsRgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:         
k
gradients/Reshape_1_grad/ShapeShapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
╙
 gradients/Reshape_1_grad/ReshapeReshapeFgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulgradients/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Х
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
Г
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp!^gradients/Reshape_1_grad/Reshape)^gradients/dense/BiasAdd_grad/BiasAddGrad
·
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity gradients/Reshape_1_grad/Reshape.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Reshape_1_grad/Reshape*'
_output_shapes
:         
 
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
╧
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b(
┐
$gradients/dense/MatMul_grad/MatMul_1MatMulfeatures5gradients/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	А*
transpose_a(*
transpose_b( 
А
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
¤
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*(
_output_shapes
:         А
·
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	А
b
gradients/features_grad/ShapeShapestack*
T0*
out_type0*
_output_shapes
:
▌
gradients/features_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/features_grad/Shape*
T0*
Tshape0*E
_output_shapes3
1:/                           @
╫
gradients/stack_grad/unstackUnpackgradients/features_grad/Reshape*
T0*	
num*

axis*n
_output_shapes\
Z:+                           @:+                           @
L
%gradients/stack_grad/tuple/group_depsNoOp^gradients/stack_grad/unstack
№
-gradients/stack_grad/tuple/control_dependencyIdentitygradients/stack_grad/unstack&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack*A
_output_shapes/
-:+                           @
А
/gradients/stack_grad/tuple/control_dependency_1Identitygradients/stack_grad/unstack:1&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack*A
_output_shapes/
-:+                           @
╗
%gradients/conv2d_2/Relu_grad/ReluGradReluGrad-gradients/stack_grad/tuple/control_dependencyconv2d_2/Relu*
T0*A
_output_shapes/
-:+                           @
╜
%gradients/conv2d_6/Relu_grad/ReluGradReluGrad/gradients/stack_grad/tuple/control_dependency_1conv2d_6/Relu*
T0*A
_output_shapes/
-:+                           @
Э
+gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
О
0gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_2/Relu_grad/ReluGrad,^gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_2/Relu_grad/ReluGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_2/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           @
Л
:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Э
+gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_6/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
О
0gradients/conv2d_6/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_6/Relu_grad/ReluGrad,^gradients/conv2d_6/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_6/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_6/Relu_grad/ReluGrad1^gradients/conv2d_6/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_6/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           @
Л
:gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_6/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_6/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Ш
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNconv2d_1/Reluconv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/read8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    
┌
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_1/Relu$gradients/conv2d_2/Conv2D_grad/Const8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
в
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                            
е
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
Ш
%gradients/conv2d_6/Conv2D_grad/ShapeNShapeNconv2d_5/Reluconv2d_6/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_6/Conv2D_grad/ConstConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/kernel/read8gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    
┌
3gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_5/Relu$gradients/conv2d_6/Conv2D_grad/Const8gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:@@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
в
/gradients/conv2d_6/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_6/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           @
е
9gradients/conv2d_6/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@@
┼
%gradients/conv2d_1/Relu_grad/ReluGradReluGrad7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyconv2d_1/Relu*
T0*A
_output_shapes/
-:+                            
┼
%gradients/conv2d_5/Relu_grad/ReluGradReluGrad7gradients/conv2d_6/Conv2D_grad/tuple/control_dependencyconv2d_5/Relu*
T0*A
_output_shapes/
-:+                           @
Э
+gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
О
0gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_1/Relu_grad/ReluGrad,^gradients/conv2d_1/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_1/Relu_grad/ReluGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_1/Relu_grad/ReluGrad*A
_output_shapes/
-:+                            
Л
:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Э
+gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
О
0gradients/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_5/Relu_grad/ReluGrad,^gradients/conv2d_5/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_5/Relu_grad/ReluGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_5/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           @
Л
:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_5/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Ц
%gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/read8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
╪
3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu$gradients/conv2d_1/Conv2D_grad/Const8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
в
/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
е
9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
в
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_5/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_5/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/kernel/read8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations

ф
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool$gradients/conv2d_5/Conv2D_grad/Const8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
: @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
в
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                            
е
9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
┴
#gradients/conv2d/Relu_grad/ReluGradReluGrad7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyconv2d/Relu*
T0*A
_output_shapes/
-:+                           
┴
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_1/MaxPool7gradients/conv2d_5/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingVALID*A
_output_shapes/
-:+                            *
T0*
strides
*
data_formatNHWC
Щ
)gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
И
.gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp$^gradients/conv2d/Relu_grad/ReluGrad*^gradients/conv2d/BiasAdd_grad/BiasAddGrad
Ь
6gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity#gradients/conv2d/Relu_grad/ReluGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/conv2d/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           
Г
8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/conv2d/BiasAdd_grad/BiasAddGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
└
%gradients/conv2d_4/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*A
_output_shapes/
-:+                            
Й
#gradients/conv2d/Conv2D_grad/ShapeNShapeNx1conv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
{
"gradients/conv2d/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:
№
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/read6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations

╔
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterx1"gradients/conv2d/Conv2D_grad/Const6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:
Ь
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
┤
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
Э
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Э
+gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
О
0gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_4/Relu_grad/ReluGrad,^gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_4/Relu_grad/ReluGrad1^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_4/Relu_grad/ReluGrad*A
_output_shapes/
-:+                            
Л
:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_4/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
а
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_4/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_4/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/kernel/read8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*J
_output_shapes8
6:4                                    
т
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool$gradients/conv2d_4/Conv2D_grad/Const8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
: *
	dilations

в
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
е
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
╜
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPool7gradients/conv2d_4/Conv2D_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*A
_output_shapes/
-:+                           
╛
%gradients/conv2d_3/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*A
_output_shapes/
-:+                           
Э
+gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
О
0gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp&^gradients/conv2d_3/Relu_grad/ReluGrad,^gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
д
8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_3/Relu_grad/ReluGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_3/Relu_grad/ReluGrad*A
_output_shapes/
-:+                           
Л
:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_3/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Н
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNx2conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
}
$gradients/conv2d_3/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:
Д
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/kernel/read8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
paddingVALID*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
╧
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterx2$gradients/conv2d_3/Conv2D_grad/Const8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:
в
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
╝
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
е
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
~
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
П
beta1_power
VariableV2*
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
о
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
j
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
~
beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
П
beta2_power
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
о
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
j
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
┤
9conv2d/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
Ц
/conv2d/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
В
)conv2d/kernel/optimizer/Initializer/zerosFill9conv2d/kernel/optimizer/Initializer/zeros/shape_as_tensor/conv2d/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
╜
conv2d/kernel/optimizer
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
ш
conv2d/kernel/optimizer/AssignAssignconv2d/kernel/optimizer)conv2d/kernel/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Ф
conv2d/kernel/optimizer/readIdentityconv2d/kernel/optimizer*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
╢
;conv2d/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
Ш
1conv2d/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
И
+conv2d/kernel/optimizer_1/Initializer/zerosFill;conv2d/kernel/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
┐
conv2d/kernel/optimizer_1
VariableV2*
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
ю
 conv2d/kernel/optimizer_1/AssignAssignconv2d/kernel/optimizer_1+conv2d/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
Ш
conv2d/kernel/optimizer_1/readIdentityconv2d/kernel/optimizer_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
б
7conv2d/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
Т
-conv2d/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
ю
'conv2d/bias/optimizer/Initializer/zerosFill7conv2d/bias/optimizer/Initializer/zeros/shape_as_tensor-conv2d/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2d/bias*
_output_shapes
:
б
conv2d/bias/optimizer
VariableV2*
_class
loc:@conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
╘
conv2d/bias/optimizer/AssignAssignconv2d/bias/optimizer'conv2d/bias/optimizer/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
В
conv2d/bias/optimizer/readIdentityconv2d/bias/optimizer*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
г
9conv2d/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
Ф
/conv2d/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Ї
)conv2d/bias/optimizer_1/Initializer/zerosFill9conv2d/bias/optimizer_1/Initializer/zeros/shape_as_tensor/conv2d/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2d/bias*
_output_shapes
:
г
conv2d/bias/optimizer_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@conv2d/bias*
	container *
shape:
┌
conv2d/bias/optimizer_1/AssignAssignconv2d/bias/optimizer_1)conv2d/bias/optimizer_1/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Ж
conv2d/bias/optimizer_1/readIdentityconv2d/bias/optimizer_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
╕
;conv2d_1/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_1/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_1/kernel/optimizer/Initializer/zerosFill;conv2d_1/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_1/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
┴
conv2d_1/kernel/optimizer
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: 
Ё
 conv2d_1/kernel/optimizer/AssignAssignconv2d_1/kernel/optimizer+conv2d_1/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ъ
conv2d_1/kernel/optimizer/readIdentityconv2d_1/kernel/optimizer*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
║
=conv2d_1/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_1/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_1/kernel/optimizer_1/Initializer/zerosFill=conv2d_1/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_1/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
├
conv2d_1/kernel/optimizer_1
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *"
_class
loc:@conv2d_1/kernel*
	container 
Ў
"conv2d_1/kernel/optimizer_1/AssignAssignconv2d_1/kernel/optimizer_1-conv2d_1/kernel/optimizer_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ю
 conv2d_1/kernel/optimizer_1/readIdentityconv2d_1/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
е
9conv2d_1/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_1/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_1/bias/optimizer/Initializer/zerosFill9conv2d_1/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_1/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
е
conv2d_1/bias/optimizer
VariableV2* 
_class
loc:@conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
▄
conv2d_1/bias/optimizer/AssignAssignconv2d_1/bias/optimizer)conv2d_1/bias/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
И
conv2d_1/bias/optimizer/readIdentityconv2d_1/bias/optimizer*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
з
;conv2d_1/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_1/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
№
+conv2d_1/bias/optimizer_1/Initializer/zerosFill;conv2d_1/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_1/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
з
conv2d_1/bias/optimizer_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@conv2d_1/bias*
	container 
т
 conv2d_1/bias/optimizer_1/AssignAssignconv2d_1/bias/optimizer_1+conv2d_1/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
М
conv2d_1/bias/optimizer_1/readIdentityconv2d_1/bias/optimizer_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
╕
;conv2d_2/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_2/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_2/kernel/optimizer/Initializer/zerosFill;conv2d_2/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_2/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
┴
conv2d_2/kernel/optimizer
VariableV2*"
_class
loc:@conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
Ё
 conv2d_2/kernel/optimizer/AssignAssignconv2d_2/kernel/optimizer+conv2d_2/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Ъ
conv2d_2/kernel/optimizer/readIdentityconv2d_2/kernel/optimizer*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
║
=conv2d_2/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_2/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_2/kernel/optimizer_1/Initializer/zerosFill=conv2d_2/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_2/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
├
conv2d_2/kernel/optimizer_1
VariableV2*"
_class
loc:@conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
Ў
"conv2d_2/kernel/optimizer_1/AssignAssignconv2d_2/kernel/optimizer_1-conv2d_2/kernel/optimizer_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ю
 conv2d_2/kernel/optimizer_1/readIdentityconv2d_2/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
е
9conv2d_2/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_2/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_2/bias/optimizer/Initializer/zerosFill9conv2d_2/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_2/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
е
conv2d_2/bias/optimizer
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container 
▄
conv2d_2/bias/optimizer/AssignAssignconv2d_2/bias/optimizer)conv2d_2/bias/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
И
conv2d_2/bias/optimizer/readIdentityconv2d_2/bias/optimizer*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
з
;conv2d_2/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_2/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
№
+conv2d_2/bias/optimizer_1/Initializer/zerosFill;conv2d_2/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_2/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
з
conv2d_2/bias/optimizer_1
VariableV2*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
т
 conv2d_2/bias/optimizer_1/AssignAssignconv2d_2/bias/optimizer_1+conv2d_2/bias/optimizer_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
М
conv2d_2/bias/optimizer_1/readIdentityconv2d_2/bias/optimizer_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
╕
;conv2d_3/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_3/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_3/kernel/optimizer/Initializer/zerosFill;conv2d_3/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_3/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
┴
conv2d_3/kernel/optimizer
VariableV2*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
Ё
 conv2d_3/kernel/optimizer/AssignAssignconv2d_3/kernel/optimizer+conv2d_3/kernel/optimizer/Initializer/zeros*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Ъ
conv2d_3/kernel/optimizer/readIdentityconv2d_3/kernel/optimizer*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
║
=conv2d_3/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_3/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_3/kernel/optimizer_1/Initializer/zerosFill=conv2d_3/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_3/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
├
conv2d_3/kernel/optimizer_1
VariableV2*"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
Ў
"conv2d_3/kernel/optimizer_1/AssignAssignconv2d_3/kernel/optimizer_1-conv2d_3/kernel/optimizer_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Ю
 conv2d_3/kernel/optimizer_1/readIdentityconv2d_3/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
е
9conv2d_3/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_3/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_3/bias/optimizer/Initializer/zerosFill9conv2d_3/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_3/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
е
conv2d_3/bias/optimizer
VariableV2*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes
:
▄
conv2d_3/bias/optimizer/AssignAssignconv2d_3/bias/optimizer)conv2d_3/bias/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
И
conv2d_3/bias/optimizer/readIdentityconv2d_3/bias/optimizer*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
з
;conv2d_3/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_3/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
№
+conv2d_3/bias/optimizer_1/Initializer/zerosFill;conv2d_3/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_3/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
з
conv2d_3/bias/optimizer_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:
т
 conv2d_3/bias/optimizer_1/AssignAssignconv2d_3/bias/optimizer_1+conv2d_3/bias/optimizer_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
М
conv2d_3/bias/optimizer_1/readIdentityconv2d_3/bias/optimizer_1*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:
╕
;conv2d_4/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_4/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_4/kernel/optimizer/Initializer/zerosFill;conv2d_4/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_4/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
┴
conv2d_4/kernel/optimizer
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape: 
Ё
 conv2d_4/kernel/optimizer/AssignAssignconv2d_4/kernel/optimizer+conv2d_4/kernel/optimizer/Initializer/zeros*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ъ
conv2d_4/kernel/optimizer/readIdentityconv2d_4/kernel/optimizer*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
║
=conv2d_4/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_4/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_4/kernel/optimizer_1/Initializer/zerosFill=conv2d_4/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_4/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
├
conv2d_4/kernel/optimizer_1
VariableV2*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
Ў
"conv2d_4/kernel/optimizer_1/AssignAssignconv2d_4/kernel/optimizer_1-conv2d_4/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
Ю
 conv2d_4/kernel/optimizer_1/readIdentityconv2d_4/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
е
9conv2d_4/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_4/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_4/bias/optimizer/Initializer/zerosFill9conv2d_4/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_4/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
е
conv2d_4/bias/optimizer
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@conv2d_4/bias*
	container 
▄
conv2d_4/bias/optimizer/AssignAssignconv2d_4/bias/optimizer)conv2d_4/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
И
conv2d_4/bias/optimizer/readIdentityconv2d_4/bias/optimizer*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
з
;conv2d_4/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB: * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_4/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
№
+conv2d_4/bias/optimizer_1/Initializer/zerosFill;conv2d_4/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_4/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
з
conv2d_4/bias/optimizer_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@conv2d_4/bias*
	container 
т
 conv2d_4/bias/optimizer_1/AssignAssignconv2d_4/bias/optimizer_1+conv2d_4/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
М
conv2d_4/bias/optimizer_1/readIdentityconv2d_4/bias/optimizer_1*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
╕
;conv2d_5/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_5/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_5/kernel/optimizer/Initializer/zerosFill;conv2d_5/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_5/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
┴
conv2d_5/kernel/optimizer
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container 
Ё
 conv2d_5/kernel/optimizer/AssignAssignconv2d_5/kernel/optimizer+conv2d_5/kernel/optimizer/Initializer/zeros*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ъ
conv2d_5/kernel/optimizer/readIdentityconv2d_5/kernel/optimizer*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
║
=conv2d_5/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_5/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_5/kernel/optimizer_1/Initializer/zerosFill=conv2d_5/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_5/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
├
conv2d_5/kernel/optimizer_1
VariableV2*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @
Ў
"conv2d_5/kernel/optimizer_1/AssignAssignconv2d_5/kernel/optimizer_1-conv2d_5/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
Ю
 conv2d_5/kernel/optimizer_1/readIdentityconv2d_5/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
: @
е
9conv2d_5/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_5/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_5/bias/optimizer/Initializer/zerosFill9conv2d_5/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_5/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
е
conv2d_5/bias/optimizer
VariableV2* 
_class
loc:@conv2d_5/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
▄
conv2d_5/bias/optimizer/AssignAssignconv2d_5/bias/optimizer)conv2d_5/bias/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
И
conv2d_5/bias/optimizer/readIdentityconv2d_5/bias/optimizer*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
з
;conv2d_5/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_5/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: 
№
+conv2d_5/bias/optimizer_1/Initializer/zerosFill;conv2d_5/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_5/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
з
conv2d_5/bias/optimizer_1
VariableV2*
shared_name * 
_class
loc:@conv2d_5/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
т
 conv2d_5/bias/optimizer_1/AssignAssignconv2d_5/bias/optimizer_1+conv2d_5/bias/optimizer_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
М
conv2d_5/bias/optimizer_1/readIdentityconv2d_5/bias/optimizer_1*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:@
╕
;conv2d_6/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   @   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ъ
1conv2d_6/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
К
+conv2d_6/kernel/optimizer/Initializer/zerosFill;conv2d_6/kernel/optimizer/Initializer/zeros/shape_as_tensor1conv2d_6/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
┴
conv2d_6/kernel/optimizer
VariableV2*
shared_name *"
_class
loc:@conv2d_6/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
Ё
 conv2d_6/kernel/optimizer/AssignAssignconv2d_6/kernel/optimizer+conv2d_6/kernel/optimizer/Initializer/zeros*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Ъ
conv2d_6/kernel/optimizer/readIdentityconv2d_6/kernel/optimizer*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
║
=conv2d_6/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   @   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ь
3conv2d_6/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Р
-conv2d_6/kernel/optimizer_1/Initializer/zerosFill=conv2d_6/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3conv2d_6/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
├
conv2d_6/kernel/optimizer_1
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *"
_class
loc:@conv2d_6/kernel*
	container 
Ў
"conv2d_6/kernel/optimizer_1/AssignAssignconv2d_6/kernel/optimizer_1-conv2d_6/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
Ю
 conv2d_6/kernel/optimizer_1/readIdentityconv2d_6/kernel/optimizer_1*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:@@
е
9conv2d_6/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
Ц
/conv2d_6/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
Ў
)conv2d_6/bias/optimizer/Initializer/zerosFill9conv2d_6/bias/optimizer/Initializer/zeros/shape_as_tensor/conv2d_6/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
е
conv2d_6/bias/optimizer
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_6/bias*
	container *
shape:@
▄
conv2d_6/bias/optimizer/AssignAssignconv2d_6/bias/optimizer)conv2d_6/bias/optimizer/Initializer/zeros*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
И
conv2d_6/bias/optimizer/readIdentityconv2d_6/bias/optimizer*
T0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
з
;conv2d_6/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:@* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
Ш
1conv2d_6/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
№
+conv2d_6/bias/optimizer_1/Initializer/zerosFill;conv2d_6/bias/optimizer_1/Initializer/zeros/shape_as_tensor1conv2d_6/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
з
conv2d_6/bias/optimizer_1
VariableV2* 
_class
loc:@conv2d_6/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
т
 conv2d_6/bias/optimizer_1/AssignAssignconv2d_6/bias/optimizer_1+conv2d_6/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
М
conv2d_6/bias/optimizer_1/readIdentityconv2d_6/bias/optimizer_1*
T0* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@
к
8dense/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"А      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
Ф
.dense/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ў
(dense/kernel/optimizer/Initializer/zerosFill8dense/kernel/optimizer/Initializer/zeros/shape_as_tensor.dense/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	А
н
dense/kernel/optimizer
VariableV2*
_class
loc:@dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name 
▌
dense/kernel/optimizer/AssignAssigndense/kernel/optimizer(dense/kernel/optimizer/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
К
dense/kernel/optimizer/readIdentitydense/kernel/optimizer*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
м
:dense/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"А      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
Ц
0dense/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
¤
*dense/kernel/optimizer_1/Initializer/zerosFill:dense/kernel/optimizer_1/Initializer/zeros/shape_as_tensor0dense/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	А
п
dense/kernel/optimizer_1
VariableV2*
_class
loc:@dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name 
у
dense/kernel/optimizer_1/AssignAssigndense/kernel/optimizer_1*dense/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
О
dense/kernel/optimizer_1/readIdentitydense/kernel/optimizer_1*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
Я
6dense/bias/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Р
,dense/bias/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
ъ
&dense/bias/optimizer/Initializer/zerosFill6dense/bias/optimizer/Initializer/zeros/shape_as_tensor,dense/bias/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
Я
dense/bias/optimizer
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╨
dense/bias/optimizer/AssignAssigndense/bias/optimizer&dense/bias/optimizer/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:

dense/bias/optimizer/readIdentitydense/bias/optimizer*
T0*
_class
loc:@dense/bias*
_output_shapes
:
б
8dense/bias/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Т
.dense/bias/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
Ё
(dense/bias/optimizer_1/Initializer/zerosFill8dense/bias/optimizer_1/Initializer/zeros/shape_as_tensor.dense/bias/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
б
dense/bias/optimizer_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container *
shape:
╓
dense/bias/optimizer_1/AssignAssigndense/bias/optimizer_1(dense/bias/optimizer_1/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Г
dense/bias/optimizer_1/readIdentitydense/bias/optimizer_1*
T0*
_class
loc:@dense/bias*
_output_shapes
:
T
optimizer/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
T
optimizer/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
V
optimizer/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
И
(optimizer/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelconv2d/kernel/optimizerconv2d/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d/kernel*
use_nesterov( *&
_output_shapes
:
є
&optimizer/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasconv2d/bias/optimizerconv2d/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@conv2d/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
Ф
*optimizer/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernelconv2d_1/kernel/optimizerconv2d_1/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
 
(optimizer/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasconv2d_1/bias/optimizerconv2d_1/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( 
Ф
*optimizer/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernelconv2d_2/kernel/optimizerconv2d_2/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_2/kernel*
use_nesterov( *&
_output_shapes
: @*
use_locking( 
 
(optimizer/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasconv2d_2/bias/optimizerconv2d_2/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_2/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( 
Ф
*optimizer/update_conv2d_3/kernel/ApplyAdam	ApplyAdamconv2d_3/kernelconv2d_3/kernel/optimizerconv2d_3/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*
use_nesterov( *&
_output_shapes
:
 
(optimizer/update_conv2d_3/bias/ApplyAdam	ApplyAdamconv2d_3/biasconv2d_3/bias/optimizerconv2d_3/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_3/bias*
use_nesterov( *
_output_shapes
:
Ф
*optimizer/update_conv2d_4/kernel/ApplyAdam	ApplyAdamconv2d_4/kernelconv2d_4/kernel/optimizerconv2d_4/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_4/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
 
(optimizer/update_conv2d_4/bias/ApplyAdam	ApplyAdamconv2d_4/biasconv2d_4/bias/optimizerconv2d_4/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_4/bias*
use_nesterov( *
_output_shapes
: 
Ф
*optimizer/update_conv2d_5/kernel/ApplyAdam	ApplyAdamconv2d_5/kernelconv2d_5/kernel/optimizerconv2d_5/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_5/kernel*
use_nesterov( *&
_output_shapes
: @
 
(optimizer/update_conv2d_5/bias/ApplyAdam	ApplyAdamconv2d_5/biasconv2d_5/bias/optimizerconv2d_5/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_5/bias*
use_nesterov( *
_output_shapes
:@
Ф
*optimizer/update_conv2d_6/kernel/ApplyAdam	ApplyAdamconv2d_6/kernelconv2d_6/kernel/optimizerconv2d_6/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv2d_6/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_6/kernel*
use_nesterov( *&
_output_shapes
:@@
 
(optimizer/update_conv2d_6/bias/ApplyAdam	ApplyAdamconv2d_6/biasconv2d_6/bias/optimizerconv2d_6/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/conv2d_6/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_6/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( 
√
'optimizer/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/optimizerdense/kernel/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/kernel*
use_nesterov( *
_output_shapes
:	А*
use_locking( 
э
%optimizer/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/optimizerdense/bias/optimizer_1beta1_power/readbeta2_power/readlroptimizer/beta1optimizer/beta2optimizer/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes
:
о
optimizer/mulMulbeta1_power/readoptimizer/beta1)^optimizer/update_conv2d/kernel/ApplyAdam'^optimizer/update_conv2d/bias/ApplyAdam+^optimizer/update_conv2d_1/kernel/ApplyAdam)^optimizer/update_conv2d_1/bias/ApplyAdam+^optimizer/update_conv2d_2/kernel/ApplyAdam)^optimizer/update_conv2d_2/bias/ApplyAdam+^optimizer/update_conv2d_3/kernel/ApplyAdam)^optimizer/update_conv2d_3/bias/ApplyAdam+^optimizer/update_conv2d_4/kernel/ApplyAdam)^optimizer/update_conv2d_4/bias/ApplyAdam+^optimizer/update_conv2d_5/kernel/ApplyAdam)^optimizer/update_conv2d_5/bias/ApplyAdam+^optimizer/update_conv2d_6/kernel/ApplyAdam)^optimizer/update_conv2d_6/bias/ApplyAdam(^optimizer/update_dense/kernel/ApplyAdam&^optimizer/update_dense/bias/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
а
optimizer/AssignAssignbeta1_poweroptimizer/mul*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
░
optimizer/mul_1Mulbeta2_power/readoptimizer/beta2)^optimizer/update_conv2d/kernel/ApplyAdam'^optimizer/update_conv2d/bias/ApplyAdam+^optimizer/update_conv2d_1/kernel/ApplyAdam)^optimizer/update_conv2d_1/bias/ApplyAdam+^optimizer/update_conv2d_2/kernel/ApplyAdam)^optimizer/update_conv2d_2/bias/ApplyAdam+^optimizer/update_conv2d_3/kernel/ApplyAdam)^optimizer/update_conv2d_3/bias/ApplyAdam+^optimizer/update_conv2d_4/kernel/ApplyAdam)^optimizer/update_conv2d_4/bias/ApplyAdam+^optimizer/update_conv2d_5/kernel/ApplyAdam)^optimizer/update_conv2d_5/bias/ApplyAdam+^optimizer/update_conv2d_6/kernel/ApplyAdam)^optimizer/update_conv2d_6/bias/ApplyAdam(^optimizer/update_dense/kernel/ApplyAdam&^optimizer/update_dense/bias/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
д
optimizer/Assign_1Assignbeta2_poweroptimizer/mul_1*
use_locking( *
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
я
	optimizerNoOp)^optimizer/update_conv2d/kernel/ApplyAdam'^optimizer/update_conv2d/bias/ApplyAdam+^optimizer/update_conv2d_1/kernel/ApplyAdam)^optimizer/update_conv2d_1/bias/ApplyAdam+^optimizer/update_conv2d_2/kernel/ApplyAdam)^optimizer/update_conv2d_2/bias/ApplyAdam+^optimizer/update_conv2d_3/kernel/ApplyAdam)^optimizer/update_conv2d_3/bias/ApplyAdam+^optimizer/update_conv2d_4/kernel/ApplyAdam)^optimizer/update_conv2d_4/bias/ApplyAdam+^optimizer/update_conv2d_5/kernel/ApplyAdam)^optimizer/update_conv2d_5/bias/ApplyAdam+^optimizer/update_conv2d_6/kernel/ApplyAdam)^optimizer/update_conv2d_6/bias/ApplyAdam(^optimizer/update_dense/kernel/ApplyAdam&^optimizer/update_dense/bias/ApplyAdam^optimizer/Assign^optimizer/Assign_1
°
initNoOp^conv2d/kernel/Assign^conv2d/bias/Assign^conv2d_1/kernel/Assign^conv2d_1/bias/Assign^conv2d_2/kernel/Assign^conv2d_2/bias/Assign^conv2d_3/kernel/Assign^conv2d_3/bias/Assign^conv2d_4/kernel/Assign^conv2d_4/bias/Assign^conv2d_5/kernel/Assign^conv2d_5/bias/Assign^conv2d_6/kernel/Assign^conv2d_6/bias/Assign^dense/kernel/Assign^dense/bias/Assign^beta1_power/Assign^beta2_power/Assign^conv2d/kernel/optimizer/Assign!^conv2d/kernel/optimizer_1/Assign^conv2d/bias/optimizer/Assign^conv2d/bias/optimizer_1/Assign!^conv2d_1/kernel/optimizer/Assign#^conv2d_1/kernel/optimizer_1/Assign^conv2d_1/bias/optimizer/Assign!^conv2d_1/bias/optimizer_1/Assign!^conv2d_2/kernel/optimizer/Assign#^conv2d_2/kernel/optimizer_1/Assign^conv2d_2/bias/optimizer/Assign!^conv2d_2/bias/optimizer_1/Assign!^conv2d_3/kernel/optimizer/Assign#^conv2d_3/kernel/optimizer_1/Assign^conv2d_3/bias/optimizer/Assign!^conv2d_3/bias/optimizer_1/Assign!^conv2d_4/kernel/optimizer/Assign#^conv2d_4/kernel/optimizer_1/Assign^conv2d_4/bias/optimizer/Assign!^conv2d_4/bias/optimizer_1/Assign!^conv2d_5/kernel/optimizer/Assign#^conv2d_5/kernel/optimizer_1/Assign^conv2d_5/bias/optimizer/Assign!^conv2d_5/bias/optimizer_1/Assign!^conv2d_6/kernel/optimizer/Assign#^conv2d_6/kernel/optimizer_1/Assign^conv2d_6/bias/optimizer/Assign!^conv2d_6/bias/optimizer_1/Assign^dense/kernel/optimizer/Assign ^dense/kernel/optimizer_1/Assign^dense/bias/optimizer/Assign^dense/bias/optimizer_1/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
╛	
save/SaveV2/tensor_namesConst*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
╟
save/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
ў	
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv2d/biasconv2d/bias/optimizerconv2d/bias/optimizer_1conv2d/kernelconv2d/kernel/optimizerconv2d/kernel/optimizer_1conv2d_1/biasconv2d_1/bias/optimizerconv2d_1/bias/optimizer_1conv2d_1/kernelconv2d_1/kernel/optimizerconv2d_1/kernel/optimizer_1conv2d_2/biasconv2d_2/bias/optimizerconv2d_2/bias/optimizer_1conv2d_2/kernelconv2d_2/kernel/optimizerconv2d_2/kernel/optimizer_1conv2d_3/biasconv2d_3/bias/optimizerconv2d_3/bias/optimizer_1conv2d_3/kernelconv2d_3/kernel/optimizerconv2d_3/kernel/optimizer_1conv2d_4/biasconv2d_4/bias/optimizerconv2d_4/bias/optimizer_1conv2d_4/kernelconv2d_4/kernel/optimizerconv2d_4/kernel/optimizer_1conv2d_5/biasconv2d_5/bias/optimizerconv2d_5/bias/optimizer_1conv2d_5/kernelconv2d_5/kernel/optimizerconv2d_5/kernel/optimizer_1conv2d_6/biasconv2d_6/bias/optimizerconv2d_6/bias/optimizer_1conv2d_6/kernelconv2d_6/kernel/optimizerconv2d_6/kernel/optimizer_1
dense/biasdense/bias/optimizerdense/bias/optimizer_1dense/kerneldense/kernel/optimizerdense/kernel/optimizer_1*@
dtypes6
422
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
╨	
save/RestoreV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
┘
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Ч
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*@
dtypes6
422*▐
_output_shapes╦
╚::::::::::::::::::::::::::::::::::::::::::::::::::
Ь
save/AssignAssignbeta1_powersave/RestoreV2*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
а
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
д
save/Assign_2Assignconv2d/biassave/RestoreV2:2*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
о
save/Assign_3Assignconv2d/bias/optimizersave/RestoreV2:3*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
░
save/Assign_4Assignconv2d/bias/optimizer_1save/RestoreV2:4*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
┤
save/Assign_5Assignconv2d/kernelsave/RestoreV2:5*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
╛
save/Assign_6Assignconv2d/kernel/optimizersave/RestoreV2:6*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
└
save/Assign_7Assignconv2d/kernel/optimizer_1save/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
и
save/Assign_8Assignconv2d_1/biassave/RestoreV2:8*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
▓
save/Assign_9Assignconv2d_1/bias/optimizersave/RestoreV2:9*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╢
save/Assign_10Assignconv2d_1/bias/optimizer_1save/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
║
save/Assign_11Assignconv2d_1/kernelsave/RestoreV2:11*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
─
save/Assign_12Assignconv2d_1/kernel/optimizersave/RestoreV2:12*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╞
save/Assign_13Assignconv2d_1/kernel/optimizer_1save/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
к
save/Assign_14Assignconv2d_2/biassave/RestoreV2:14*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
┤
save/Assign_15Assignconv2d_2/bias/optimizersave/RestoreV2:15*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╢
save/Assign_16Assignconv2d_2/bias/optimizer_1save/RestoreV2:16*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
║
save/Assign_17Assignconv2d_2/kernelsave/RestoreV2:17*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
─
save/Assign_18Assignconv2d_2/kernel/optimizersave/RestoreV2:18*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
╞
save/Assign_19Assignconv2d_2/kernel/optimizer_1save/RestoreV2:19*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
к
save/Assign_20Assignconv2d_3/biassave/RestoreV2:20*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
┤
save/Assign_21Assignconv2d_3/bias/optimizersave/RestoreV2:21*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
╢
save/Assign_22Assignconv2d_3/bias/optimizer_1save/RestoreV2:22*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
║
save/Assign_23Assignconv2d_3/kernelsave/RestoreV2:23*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
─
save/Assign_24Assignconv2d_3/kernel/optimizersave/RestoreV2:24*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
╞
save/Assign_25Assignconv2d_3/kernel/optimizer_1save/RestoreV2:25*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
к
save/Assign_26Assignconv2d_4/biassave/RestoreV2:26*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
┤
save/Assign_27Assignconv2d_4/bias/optimizersave/RestoreV2:27*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╢
save/Assign_28Assignconv2d_4/bias/optimizer_1save/RestoreV2:28*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
║
save/Assign_29Assignconv2d_4/kernelsave/RestoreV2:29*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
─
save/Assign_30Assignconv2d_4/kernel/optimizersave/RestoreV2:30*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╞
save/Assign_31Assignconv2d_4/kernel/optimizer_1save/RestoreV2:31*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
к
save/Assign_32Assignconv2d_5/biassave/RestoreV2:32*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
┤
save/Assign_33Assignconv2d_5/bias/optimizersave/RestoreV2:33*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╢
save/Assign_34Assignconv2d_5/bias/optimizer_1save/RestoreV2:34*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
║
save/Assign_35Assignconv2d_5/kernelsave/RestoreV2:35*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
─
save/Assign_36Assignconv2d_5/kernel/optimizersave/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
╞
save/Assign_37Assignconv2d_5/kernel/optimizer_1save/RestoreV2:37*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
к
save/Assign_38Assignconv2d_6/biassave/RestoreV2:38*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
┤
save/Assign_39Assignconv2d_6/bias/optimizersave/RestoreV2:39*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
╢
save/Assign_40Assignconv2d_6/bias/optimizer_1save/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
║
save/Assign_41Assignconv2d_6/kernelsave/RestoreV2:41*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
─
save/Assign_42Assignconv2d_6/kernel/optimizersave/RestoreV2:42*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
╞
save/Assign_43Assignconv2d_6/kernel/optimizer_1save/RestoreV2:43*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
д
save/Assign_44Assign
dense/biassave/RestoreV2:44*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
о
save/Assign_45Assigndense/bias/optimizersave/RestoreV2:45*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
░
save/Assign_46Assigndense/bias/optimizer_1save/RestoreV2:46*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
н
save/Assign_47Assigndense/kernelsave/RestoreV2:47*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
╖
save/Assign_48Assigndense/kernel/optimizersave/RestoreV2:48*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
╣
save/Assign_49Assigndense/kernel/optimizer_1save/RestoreV2:49*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
▐
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_41ecff55b1ce4283b33e693e3557529d/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
╧	
save_1/SaveV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
╪
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Ш

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv2d/biasconv2d/bias/optimizerconv2d/bias/optimizer_1conv2d/kernelconv2d/kernel/optimizerconv2d/kernel/optimizer_1conv2d_1/biasconv2d_1/bias/optimizerconv2d_1/bias/optimizer_1conv2d_1/kernelconv2d_1/kernel/optimizerconv2d_1/kernel/optimizer_1conv2d_2/biasconv2d_2/bias/optimizerconv2d_2/bias/optimizer_1conv2d_2/kernelconv2d_2/kernel/optimizerconv2d_2/kernel/optimizer_1conv2d_3/biasconv2d_3/bias/optimizerconv2d_3/bias/optimizer_1conv2d_3/kernelconv2d_3/kernel/optimizerconv2d_3/kernel/optimizer_1conv2d_4/biasconv2d_4/bias/optimizerconv2d_4/bias/optimizer_1conv2d_4/kernelconv2d_4/kernel/optimizerconv2d_4/kernel/optimizer_1conv2d_5/biasconv2d_5/bias/optimizerconv2d_5/bias/optimizer_1conv2d_5/kernelconv2d_5/kernel/optimizerconv2d_5/kernel/optimizer_1conv2d_6/biasconv2d_6/bias/optimizerconv2d_6/bias/optimizer_1conv2d_6/kernelconv2d_6/kernel/optimizerconv2d_6/kernel/optimizer_1
dense/biasdense/bias/optimizerdense/bias/optimizer_1dense/kerneldense/kernel/optimizerdense/kernel/optimizer_1"/device:CPU:0*@
dtypes6
422
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
╥	
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
█
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Я
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*▐
_output_shapes╦
╚::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
а
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
д
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
и
save_1/Assign_2Assignconv2d/biassave_1/RestoreV2:2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
▓
save_1/Assign_3Assignconv2d/bias/optimizersave_1/RestoreV2:3*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
┤
save_1/Assign_4Assignconv2d/bias/optimizer_1save_1/RestoreV2:4*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
╕
save_1/Assign_5Assignconv2d/kernelsave_1/RestoreV2:5*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
┬
save_1/Assign_6Assignconv2d/kernel/optimizersave_1/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
─
save_1/Assign_7Assignconv2d/kernel/optimizer_1save_1/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
м
save_1/Assign_8Assignconv2d_1/biassave_1/RestoreV2:8*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╢
save_1/Assign_9Assignconv2d_1/bias/optimizersave_1/RestoreV2:9*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
║
save_1/Assign_10Assignconv2d_1/bias/optimizer_1save_1/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
╛
save_1/Assign_11Assignconv2d_1/kernelsave_1/RestoreV2:11*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╚
save_1/Assign_12Assignconv2d_1/kernel/optimizersave_1/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
╩
save_1/Assign_13Assignconv2d_1/kernel/optimizer_1save_1/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
о
save_1/Assign_14Assignconv2d_2/biassave_1/RestoreV2:14*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╕
save_1/Assign_15Assignconv2d_2/bias/optimizersave_1/RestoreV2:15*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
║
save_1/Assign_16Assignconv2d_2/bias/optimizer_1save_1/RestoreV2:16*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╛
save_1/Assign_17Assignconv2d_2/kernelsave_1/RestoreV2:17*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╚
save_1/Assign_18Assignconv2d_2/kernel/optimizersave_1/RestoreV2:18*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╩
save_1/Assign_19Assignconv2d_2/kernel/optimizer_1save_1/RestoreV2:19*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
о
save_1/Assign_20Assignconv2d_3/biassave_1/RestoreV2:20*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
╕
save_1/Assign_21Assignconv2d_3/bias/optimizersave_1/RestoreV2:21*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
║
save_1/Assign_22Assignconv2d_3/bias/optimizer_1save_1/RestoreV2:22*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
╛
save_1/Assign_23Assignconv2d_3/kernelsave_1/RestoreV2:23*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
╚
save_1/Assign_24Assignconv2d_3/kernel/optimizersave_1/RestoreV2:24*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
╩
save_1/Assign_25Assignconv2d_3/kernel/optimizer_1save_1/RestoreV2:25*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
о
save_1/Assign_26Assignconv2d_4/biassave_1/RestoreV2:26*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╕
save_1/Assign_27Assignconv2d_4/bias/optimizersave_1/RestoreV2:27*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
║
save_1/Assign_28Assignconv2d_4/bias/optimizer_1save_1/RestoreV2:28*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
╛
save_1/Assign_29Assignconv2d_4/kernelsave_1/RestoreV2:29*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╚
save_1/Assign_30Assignconv2d_4/kernel/optimizersave_1/RestoreV2:30*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╩
save_1/Assign_31Assignconv2d_4/kernel/optimizer_1save_1/RestoreV2:31*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
о
save_1/Assign_32Assignconv2d_5/biassave_1/RestoreV2:32*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╕
save_1/Assign_33Assignconv2d_5/bias/optimizersave_1/RestoreV2:33*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
║
save_1/Assign_34Assignconv2d_5/bias/optimizer_1save_1/RestoreV2:34*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
╛
save_1/Assign_35Assignconv2d_5/kernelsave_1/RestoreV2:35*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╚
save_1/Assign_36Assignconv2d_5/kernel/optimizersave_1/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
╩
save_1/Assign_37Assignconv2d_5/kernel/optimizer_1save_1/RestoreV2:37*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
о
save_1/Assign_38Assignconv2d_6/biassave_1/RestoreV2:38*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
╕
save_1/Assign_39Assignconv2d_6/bias/optimizersave_1/RestoreV2:39*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
║
save_1/Assign_40Assignconv2d_6/bias/optimizer_1save_1/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
╛
save_1/Assign_41Assignconv2d_6/kernelsave_1/RestoreV2:41*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
╚
save_1/Assign_42Assignconv2d_6/kernel/optimizersave_1/RestoreV2:42*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
╩
save_1/Assign_43Assignconv2d_6/kernel/optimizer_1save_1/RestoreV2:43*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
и
save_1/Assign_44Assign
dense/biassave_1/RestoreV2:44*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
▓
save_1/Assign_45Assigndense/bias/optimizersave_1/RestoreV2:45*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
┤
save_1/Assign_46Assigndense/bias/optimizer_1save_1/RestoreV2:46*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
▒
save_1/Assign_47Assigndense/kernelsave_1/RestoreV2:47*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
╗
save_1/Assign_48Assigndense/kernel/optimizersave_1/RestoreV2:48*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
╜
save_1/Assign_49Assigndense/kernel/optimizer_1save_1/RestoreV2:49*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
╞
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49
1
save_1/restore_allNoOp^save_1/restore_shard
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_958955172e0d4c95ad64faef5807d4b9/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
╧	
save_2/SaveV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
╪
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Ш

save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv2d/biasconv2d/bias/optimizerconv2d/bias/optimizer_1conv2d/kernelconv2d/kernel/optimizerconv2d/kernel/optimizer_1conv2d_1/biasconv2d_1/bias/optimizerconv2d_1/bias/optimizer_1conv2d_1/kernelconv2d_1/kernel/optimizerconv2d_1/kernel/optimizer_1conv2d_2/biasconv2d_2/bias/optimizerconv2d_2/bias/optimizer_1conv2d_2/kernelconv2d_2/kernel/optimizerconv2d_2/kernel/optimizer_1conv2d_3/biasconv2d_3/bias/optimizerconv2d_3/bias/optimizer_1conv2d_3/kernelconv2d_3/kernel/optimizerconv2d_3/kernel/optimizer_1conv2d_4/biasconv2d_4/bias/optimizerconv2d_4/bias/optimizer_1conv2d_4/kernelconv2d_4/kernel/optimizerconv2d_4/kernel/optimizer_1conv2d_5/biasconv2d_5/bias/optimizerconv2d_5/bias/optimizer_1conv2d_5/kernelconv2d_5/kernel/optimizerconv2d_5/kernel/optimizer_1conv2d_6/biasconv2d_6/bias/optimizerconv2d_6/bias/optimizer_1conv2d_6/kernelconv2d_6/kernel/optimizerconv2d_6/kernel/optimizer_1
dense/biasdense/bias/optimizerdense/bias/optimizer_1dense/kerneldense/kernel/optimizerdense/kernel/optimizer_1"/device:CPU:0*@
dtypes6
422
и
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
▓
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(
С
save_2/IdentityIdentitysave_2/Const^save_2/control_dependency^save_2/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
╥	
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*ё
valueчBф2Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/optimizerBconv2d/bias/optimizer_1Bconv2d/kernelBconv2d/kernel/optimizerBconv2d/kernel/optimizer_1Bconv2d_1/biasBconv2d_1/bias/optimizerBconv2d_1/bias/optimizer_1Bconv2d_1/kernelBconv2d_1/kernel/optimizerBconv2d_1/kernel/optimizer_1Bconv2d_2/biasBconv2d_2/bias/optimizerBconv2d_2/bias/optimizer_1Bconv2d_2/kernelBconv2d_2/kernel/optimizerBconv2d_2/kernel/optimizer_1Bconv2d_3/biasBconv2d_3/bias/optimizerBconv2d_3/bias/optimizer_1Bconv2d_3/kernelBconv2d_3/kernel/optimizerBconv2d_3/kernel/optimizer_1Bconv2d_4/biasBconv2d_4/bias/optimizerBconv2d_4/bias/optimizer_1Bconv2d_4/kernelBconv2d_4/kernel/optimizerBconv2d_4/kernel/optimizer_1Bconv2d_5/biasBconv2d_5/bias/optimizerBconv2d_5/bias/optimizer_1Bconv2d_5/kernelBconv2d_5/kernel/optimizerBconv2d_5/kernel/optimizer_1Bconv2d_6/biasBconv2d_6/bias/optimizerBconv2d_6/bias/optimizer_1Bconv2d_6/kernelBconv2d_6/kernel/optimizerBconv2d_6/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1*
dtype0*
_output_shapes
:2
█
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Я
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*▐
_output_shapes╦
╚::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
а
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
д
save_2/Assign_1Assignbeta2_powersave_2/RestoreV2:1*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
и
save_2/Assign_2Assignconv2d/biassave_2/RestoreV2:2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
▓
save_2/Assign_3Assignconv2d/bias/optimizersave_2/RestoreV2:3*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:
┤
save_2/Assign_4Assignconv2d/bias/optimizer_1save_2/RestoreV2:4*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
╕
save_2/Assign_5Assignconv2d/kernelsave_2/RestoreV2:5*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
┬
save_2/Assign_6Assignconv2d/kernel/optimizersave_2/RestoreV2:6*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
─
save_2/Assign_7Assignconv2d/kernel/optimizer_1save_2/RestoreV2:7*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
м
save_2/Assign_8Assignconv2d_1/biassave_2/RestoreV2:8*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
╢
save_2/Assign_9Assignconv2d_1/bias/optimizersave_2/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
║
save_2/Assign_10Assignconv2d_1/bias/optimizer_1save_2/RestoreV2:10*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╛
save_2/Assign_11Assignconv2d_1/kernelsave_2/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
╚
save_2/Assign_12Assignconv2d_1/kernel/optimizersave_2/RestoreV2:12*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╩
save_2/Assign_13Assignconv2d_1/kernel/optimizer_1save_2/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
о
save_2/Assign_14Assignconv2d_2/biassave_2/RestoreV2:14*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╕
save_2/Assign_15Assignconv2d_2/bias/optimizersave_2/RestoreV2:15*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
║
save_2/Assign_16Assignconv2d_2/bias/optimizer_1save_2/RestoreV2:16*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╛
save_2/Assign_17Assignconv2d_2/kernelsave_2/RestoreV2:17*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
╚
save_2/Assign_18Assignconv2d_2/kernel/optimizersave_2/RestoreV2:18*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
╩
save_2/Assign_19Assignconv2d_2/kernel/optimizer_1save_2/RestoreV2:19*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
о
save_2/Assign_20Assignconv2d_3/biassave_2/RestoreV2:20*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
╕
save_2/Assign_21Assignconv2d_3/bias/optimizersave_2/RestoreV2:21*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:*
use_locking(
║
save_2/Assign_22Assignconv2d_3/bias/optimizer_1save_2/RestoreV2:22*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:
╛
save_2/Assign_23Assignconv2d_3/kernelsave_2/RestoreV2:23*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
╚
save_2/Assign_24Assignconv2d_3/kernel/optimizersave_2/RestoreV2:24*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:
╩
save_2/Assign_25Assignconv2d_3/kernel/optimizer_1save_2/RestoreV2:25*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
о
save_2/Assign_26Assignconv2d_4/biassave_2/RestoreV2:26*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
╕
save_2/Assign_27Assignconv2d_4/bias/optimizersave_2/RestoreV2:27*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: 
║
save_2/Assign_28Assignconv2d_4/bias/optimizer_1save_2/RestoreV2:28*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╛
save_2/Assign_29Assignconv2d_4/kernelsave_2/RestoreV2:29*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
╚
save_2/Assign_30Assignconv2d_4/kernel/optimizersave_2/RestoreV2:30*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
╩
save_2/Assign_31Assignconv2d_4/kernel/optimizer_1save_2/RestoreV2:31*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
: 
о
save_2/Assign_32Assignconv2d_5/biassave_2/RestoreV2:32*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╕
save_2/Assign_33Assignconv2d_5/bias/optimizersave_2/RestoreV2:33*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@
║
save_2/Assign_34Assignconv2d_5/bias/optimizer_1save_2/RestoreV2:34*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╛
save_2/Assign_35Assignconv2d_5/kernelsave_2/RestoreV2:35*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
╚
save_2/Assign_36Assignconv2d_5/kernel/optimizersave_2/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
╩
save_2/Assign_37Assignconv2d_5/kernel/optimizer_1save_2/RestoreV2:37*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*&
_output_shapes
: @
о
save_2/Assign_38Assignconv2d_6/biassave_2/RestoreV2:38*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
╕
save_2/Assign_39Assignconv2d_6/bias/optimizersave_2/RestoreV2:39*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
║
save_2/Assign_40Assignconv2d_6/bias/optimizer_1save_2/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes
:@
╛
save_2/Assign_41Assignconv2d_6/kernelsave_2/RestoreV2:41*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
╚
save_2/Assign_42Assignconv2d_6/kernel/optimizersave_2/RestoreV2:42*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@
╩
save_2/Assign_43Assignconv2d_6/kernel/optimizer_1save_2/RestoreV2:43*
T0*"
_class
loc:@conv2d_6/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
и
save_2/Assign_44Assign
dense/biassave_2/RestoreV2:44*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
▓
save_2/Assign_45Assigndense/bias/optimizersave_2/RestoreV2:45*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
┤
save_2/Assign_46Assigndense/bias/optimizer_1save_2/RestoreV2:46*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
▒
save_2/Assign_47Assigndense/kernelsave_2/RestoreV2:47*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
╗
save_2/Assign_48Assigndense/kernel/optimizersave_2/RestoreV2:48*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
╜
save_2/Assign_49Assigndense/kernel/optimizer_1save_2/RestoreV2:49*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
╞
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_30^save_2/Assign_31^save_2/Assign_32^save_2/Assign_33^save_2/Assign_34^save_2/Assign_35^save_2/Assign_36^save_2/Assign_37^save_2/Assign_38^save_2/Assign_39^save_2/Assign_40^save_2/Assign_41^save_2/Assign_42^save_2/Assign_43^save_2/Assign_44^save_2/Assign_45^save_2/Assign_46^save_2/Assign_47^save_2/Assign_48^save_2/Assign_49
1
save_2/restore_allNoOp^save_2/restore_shard"B
save_2/Const:0save_2/Identity:0save_2/restore_all (5 @F8"7
losses-
+
)sparse_softmax_cross_entropy_loss/value:0"Ы
trainable_variablesГА
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
`
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
`
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
`
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:0
q
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:0
`
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:0
q
conv2d_6/kernel:0conv2d_6/kernel/Assignconv2d_6/kernel/read:02,conv2d_6/kernel/Initializer/random_uniform:0
`
conv2d_6/bias:0conv2d_6/bias/Assignconv2d_6/bias/read:02!conv2d_6/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0"
train_op

	optimizer"╠2
	variables╛2╗2
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
`
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
`
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
`
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:0
q
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:0
`
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:0
q
conv2d_6/kernel:0conv2d_6/kernel/Assignconv2d_6/kernel/read:02,conv2d_6/kernel/Initializer/random_uniform:0
`
conv2d_6/bias:0conv2d_6/bias/Assignconv2d_6/bias/read:02!conv2d_6/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
И
conv2d/kernel/optimizer:0conv2d/kernel/optimizer/Assignconv2d/kernel/optimizer/read:02+conv2d/kernel/optimizer/Initializer/zeros:0
Р
conv2d/kernel/optimizer_1:0 conv2d/kernel/optimizer_1/Assign conv2d/kernel/optimizer_1/read:02-conv2d/kernel/optimizer_1/Initializer/zeros:0
А
conv2d/bias/optimizer:0conv2d/bias/optimizer/Assignconv2d/bias/optimizer/read:02)conv2d/bias/optimizer/Initializer/zeros:0
И
conv2d/bias/optimizer_1:0conv2d/bias/optimizer_1/Assignconv2d/bias/optimizer_1/read:02+conv2d/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_1/kernel/optimizer:0 conv2d_1/kernel/optimizer/Assign conv2d_1/kernel/optimizer/read:02-conv2d_1/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_1/kernel/optimizer_1:0"conv2d_1/kernel/optimizer_1/Assign"conv2d_1/kernel/optimizer_1/read:02/conv2d_1/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_1/bias/optimizer:0conv2d_1/bias/optimizer/Assignconv2d_1/bias/optimizer/read:02+conv2d_1/bias/optimizer/Initializer/zeros:0
Р
conv2d_1/bias/optimizer_1:0 conv2d_1/bias/optimizer_1/Assign conv2d_1/bias/optimizer_1/read:02-conv2d_1/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_2/kernel/optimizer:0 conv2d_2/kernel/optimizer/Assign conv2d_2/kernel/optimizer/read:02-conv2d_2/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_2/kernel/optimizer_1:0"conv2d_2/kernel/optimizer_1/Assign"conv2d_2/kernel/optimizer_1/read:02/conv2d_2/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_2/bias/optimizer:0conv2d_2/bias/optimizer/Assignconv2d_2/bias/optimizer/read:02+conv2d_2/bias/optimizer/Initializer/zeros:0
Р
conv2d_2/bias/optimizer_1:0 conv2d_2/bias/optimizer_1/Assign conv2d_2/bias/optimizer_1/read:02-conv2d_2/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_3/kernel/optimizer:0 conv2d_3/kernel/optimizer/Assign conv2d_3/kernel/optimizer/read:02-conv2d_3/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_3/kernel/optimizer_1:0"conv2d_3/kernel/optimizer_1/Assign"conv2d_3/kernel/optimizer_1/read:02/conv2d_3/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_3/bias/optimizer:0conv2d_3/bias/optimizer/Assignconv2d_3/bias/optimizer/read:02+conv2d_3/bias/optimizer/Initializer/zeros:0
Р
conv2d_3/bias/optimizer_1:0 conv2d_3/bias/optimizer_1/Assign conv2d_3/bias/optimizer_1/read:02-conv2d_3/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_4/kernel/optimizer:0 conv2d_4/kernel/optimizer/Assign conv2d_4/kernel/optimizer/read:02-conv2d_4/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_4/kernel/optimizer_1:0"conv2d_4/kernel/optimizer_1/Assign"conv2d_4/kernel/optimizer_1/read:02/conv2d_4/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_4/bias/optimizer:0conv2d_4/bias/optimizer/Assignconv2d_4/bias/optimizer/read:02+conv2d_4/bias/optimizer/Initializer/zeros:0
Р
conv2d_4/bias/optimizer_1:0 conv2d_4/bias/optimizer_1/Assign conv2d_4/bias/optimizer_1/read:02-conv2d_4/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_5/kernel/optimizer:0 conv2d_5/kernel/optimizer/Assign conv2d_5/kernel/optimizer/read:02-conv2d_5/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_5/kernel/optimizer_1:0"conv2d_5/kernel/optimizer_1/Assign"conv2d_5/kernel/optimizer_1/read:02/conv2d_5/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_5/bias/optimizer:0conv2d_5/bias/optimizer/Assignconv2d_5/bias/optimizer/read:02+conv2d_5/bias/optimizer/Initializer/zeros:0
Р
conv2d_5/bias/optimizer_1:0 conv2d_5/bias/optimizer_1/Assign conv2d_5/bias/optimizer_1/read:02-conv2d_5/bias/optimizer_1/Initializer/zeros:0
Р
conv2d_6/kernel/optimizer:0 conv2d_6/kernel/optimizer/Assign conv2d_6/kernel/optimizer/read:02-conv2d_6/kernel/optimizer/Initializer/zeros:0
Ш
conv2d_6/kernel/optimizer_1:0"conv2d_6/kernel/optimizer_1/Assign"conv2d_6/kernel/optimizer_1/read:02/conv2d_6/kernel/optimizer_1/Initializer/zeros:0
И
conv2d_6/bias/optimizer:0conv2d_6/bias/optimizer/Assignconv2d_6/bias/optimizer/read:02+conv2d_6/bias/optimizer/Initializer/zeros:0
Р
conv2d_6/bias/optimizer_1:0 conv2d_6/bias/optimizer_1/Assign conv2d_6/bias/optimizer_1/read:02-conv2d_6/bias/optimizer_1/Initializer/zeros:0
Д
dense/kernel/optimizer:0dense/kernel/optimizer/Assigndense/kernel/optimizer/read:02*dense/kernel/optimizer/Initializer/zeros:0
М
dense/kernel/optimizer_1:0dense/kernel/optimizer_1/Assigndense/kernel/optimizer_1/read:02,dense/kernel/optimizer_1/Initializer/zeros:0
|
dense/bias/optimizer:0dense/bias/optimizer/Assigndense/bias/optimizer/read:02(dense/bias/optimizer/Initializer/zeros:0
Д
dense/bias/optimizer_1:0dense/bias/optimizer_1/Assigndense/bias/optimizer_1/read:02*dense/bias/optimizer_1/Initializer/zeros:0