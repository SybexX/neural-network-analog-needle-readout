��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *4

debug_name&$batch_normalization/moving_variance/*
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *0

debug_name" batch_normalization/moving_mean/*
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
�
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
�

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
�
conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape: * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: *
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
�
conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *)

debug_namebatch_normalization/beta/*
dtype0*
shape:*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
�
conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
�
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
�
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape
:@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0
�
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:	�@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�@*
dtype0
�
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
�
conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: **

debug_namebatch_normalization/gamma/*
dtype0*
shape:**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
�
dense_2/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_2/bias_1/*
dtype0*
shape:*
shared_namedense_2/bias_1
m
"dense_2/bias_1/Read/ReadVariableOpReadVariableOpdense_2/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpdense_2/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
dense_2/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_2/kernel_1/*
dtype0*
shape
:@*!
shared_namedense_2/kernel_1
u
$dense_2/kernel_1/Read/ReadVariableOpReadVariableOpdense_2/kernel_1*
_output_shapes

:@*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpdense_2/kernel_1*
_class
loc:@Variable_1*
_output_shapes

:@*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@*
dtype0
�
dense_1/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_1/bias_1/*
dtype0*
shape:@*
shared_namedense_1/bias_1
m
"dense_1/bias_1/Read/ReadVariableOpReadVariableOpdense_1/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpdense_1/bias_1*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
dense_1/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_1/kernel_1/*
dtype0*
shape:	�@*!
shared_namedense_1/kernel_1
v
$dense_1/kernel_1/Read/ReadVariableOpReadVariableOpdense_1/kernel_1*
_output_shapes
:	�@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpdense_1/kernel_1*
_class
loc:@Variable_3*
_output_shapes
:	�@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:	�@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
j
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	�@*
dtype0
�
dense/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense/bias_1/*
dtype0*
shape:�*
shared_namedense/bias_1
j
 dense/bias_1/Read/ReadVariableOpReadVariableOpdense/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpdense/bias_1*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
dense/kernel_1VarHandleOp*
_output_shapes
: *

debug_namedense/kernel_1/*
dtype0*
shape:
��*
shared_namedense/kernel_1
s
"dense/kernel_1/Read/ReadVariableOpReadVariableOpdense/kernel_1* 
_output_shapes
:
��*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpdense/kernel_1*
_class
loc:@Variable_5* 
_output_shapes
:
��*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:
��*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
k
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5* 
_output_shapes
:
��*
dtype0
�
conv2d_2/bias_1VarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/bias_1/*
dtype0*
shape: * 
shared_nameconv2d_2/bias_1
o
#conv2d_2/bias_1/Read/ReadVariableOpReadVariableOpconv2d_2/bias_1*
_output_shapes
: *
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpconv2d_2/bias_1*
_class
loc:@Variable_6*
_output_shapes
: *
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape: *
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
: *
dtype0
�
conv2d_2/kernel_1VarHandleOp*
_output_shapes
: *"

debug_nameconv2d_2/kernel_1/*
dtype0*
shape: *"
shared_nameconv2d_2/kernel_1

%conv2d_2/kernel_1/Read/ReadVariableOpReadVariableOpconv2d_2/kernel_1*&
_output_shapes
: *
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpconv2d_2/kernel_1*
_class
loc:@Variable_7*&
_output_shapes
: *
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape: *
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
q
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*&
_output_shapes
: *
dtype0
�
conv2d_1/bias_1VarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/bias_1/*
dtype0*
shape:* 
shared_nameconv2d_1/bias_1
o
#conv2d_1/bias_1/Read/ReadVariableOpReadVariableOpconv2d_1/bias_1*
_output_shapes
:*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpconv2d_1/bias_1*
_class
loc:@Variable_8*
_output_shapes
:*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:*
dtype0
�
conv2d_1/kernel_1VarHandleOp*
_output_shapes
: *"

debug_nameconv2d_1/kernel_1/*
dtype0*
shape: *"
shared_nameconv2d_1/kernel_1

%conv2d_1/kernel_1/Read/ReadVariableOpReadVariableOpconv2d_1/kernel_1*&
_output_shapes
: *
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpconv2d_1/kernel_1*
_class
loc:@Variable_9*&
_output_shapes
: *
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape: *
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
q
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*&
_output_shapes
: *
dtype0
�
conv2d/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias_1/*
dtype0*
shape: *
shared_nameconv2d/bias_1
k
!conv2d/bias_1/Read/ReadVariableOpReadVariableOpconv2d/bias_1*
_output_shapes
: *
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpconv2d/bias_1*
_class
loc:@Variable_10*
_output_shapes
: *
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: *
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0
�
conv2d/kernel_1VarHandleOp*
_output_shapes
: * 

debug_nameconv2d/kernel_1/*
dtype0*
shape: * 
shared_nameconv2d/kernel_1
{
#conv2d/kernel_1/Read/ReadVariableOpReadVariableOpconv2d/kernel_1*&
_output_shapes
: *
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpconv2d/kernel_1*
_class
loc:@Variable_11*&
_output_shapes
: *
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape: *
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
s
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*&
_output_shapes
: *
dtype0
�
%batch_normalization/moving_variance_1VarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization/moving_variance_1/*
dtype0*
shape:*6
shared_name'%batch_normalization/moving_variance_1
�
9batch_normalization/moving_variance_1/Read/ReadVariableOpReadVariableOp%batch_normalization/moving_variance_1*
_output_shapes
:*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp%batch_normalization/moving_variance_1*
_class
loc:@Variable_12*
_output_shapes
:*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:*
dtype0
�
!batch_normalization/moving_mean_1VarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization/moving_mean_1/*
dtype0*
shape:*2
shared_name#!batch_normalization/moving_mean_1
�
5batch_normalization/moving_mean_1/Read/ReadVariableOpReadVariableOp!batch_normalization/moving_mean_1*
_output_shapes
:*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp!batch_normalization/moving_mean_1*
_class
loc:@Variable_13*
_output_shapes
:*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:*
dtype0
�
batch_normalization/beta_1VarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization/beta_1/*
dtype0*
shape:*+
shared_namebatch_normalization/beta_1
�
.batch_normalization/beta_1/Read/ReadVariableOpReadVariableOpbatch_normalization/beta_1*
_output_shapes
:*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpbatch_normalization/beta_1*
_class
loc:@Variable_14*
_output_shapes
:*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:*
dtype0
�
batch_normalization/gamma_1VarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization/gamma_1/*
dtype0*
shape:*,
shared_namebatch_normalization/gamma_1
�
/batch_normalization/gamma_1/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma_1*
_output_shapes
:*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpbatch_normalization/gamma_1*
_class
loc:@Variable_15*
_output_shapes
:*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape:*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
g
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
:*
dtype0
�
serve_keras_tensorPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserve_keras_tensor!batch_normalization/moving_mean_1%batch_normalization/moving_variance_1batch_normalization/gamma_1batch_normalization/beta_1conv2d/kernel_1conv2d/bias_1conv2d_1/kernel_1conv2d_1/bias_1conv2d_2/kernel_1conv2d_2/bias_1dense/kernel_1dense/bias_1dense_1/kernel_1dense_1/bias_1dense_2/kernel_1dense_2/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___799724
�
serving_default_keras_tensorPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_keras_tensor!batch_normalization/moving_mean_1%batch_normalization/moving_variance_1batch_normalization/gamma_1batch_normalization/beta_1conv2d/kernel_1conv2d/bias_1conv2d_1/kernel_1conv2d_1/bias_1conv2d_2/kernel_1conv2d_2/bias_1dense/kernel_1dense/bias_1dense_1/kernel_1dense_1/bias_1dense_2/kernel_1dense_2/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___799761

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
z
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15*
j
0
	1
2
3
4
5
6
7
8
9
10
11
12
13*


0
1*
z
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13
&14
'15*
* 

(trace_0* 
"
	)serve
*serving_default* 
KE
VARIABLE_VALUEVariable_15&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_14&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_13&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_12&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_11&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_10&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_9&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_8&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_5'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_4'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEbatch_normalization/gamma_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv2d_1/bias_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense/kernel_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_1/kernel_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_2/kernel_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_2/bias_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv2d/kernel_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbatch_normalization/beta_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d/bias_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv2d_1/kernel_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_2/kernel_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEconv2d_2/bias_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEdense/bias_1,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_1/bias_1,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE!batch_normalization/moving_mean_1,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE%batch_normalization/moving_variance_1,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variablebatch_normalization/gamma_1conv2d_1/bias_1dense/kernel_1dense_1/kernel_1dense_2/kernel_1dense_2/bias_1conv2d/kernel_1batch_normalization/beta_1conv2d/bias_1conv2d_1/kernel_1conv2d_2/kernel_1conv2d_2/bias_1dense/bias_1dense_1/bias_1!batch_normalization/moving_mean_1%batch_normalization/moving_variance_1Const*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *(
f#R!
__inference__traced_save_800041
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variablebatch_normalization/gamma_1conv2d_1/bias_1dense/kernel_1dense_1/kernel_1dense_2/kernel_1dense_2/bias_1conv2d/kernel_1batch_normalization/beta_1conv2d/bias_1conv2d_1/kernel_1conv2d_2/kernel_1conv2d_2/bias_1dense/bias_1dense_1/bias_1!batch_normalization/moving_mean_1%batch_normalization/moving_variance_1*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference__traced_restore_800146��
��
�
__inference__traced_save_800041
file_prefix0
"read_disablecopyonread_variable_15:2
$read_1_disablecopyonread_variable_14:2
$read_2_disablecopyonread_variable_13:2
$read_3_disablecopyonread_variable_12:>
$read_4_disablecopyonread_variable_11: 2
$read_5_disablecopyonread_variable_10: =
#read_6_disablecopyonread_variable_9: 1
#read_7_disablecopyonread_variable_8:=
#read_8_disablecopyonread_variable_7: 1
#read_9_disablecopyonread_variable_6: 8
$read_10_disablecopyonread_variable_5:
��3
$read_11_disablecopyonread_variable_4:	�7
$read_12_disablecopyonread_variable_3:	�@2
$read_13_disablecopyonread_variable_2:@6
$read_14_disablecopyonread_variable_1:@0
"read_15_disablecopyonread_variable:C
5read_16_disablecopyonread_batch_normalization_gamma_1:7
)read_17_disablecopyonread_conv2d_1_bias_1:<
(read_18_disablecopyonread_dense_kernel_1:
��=
*read_19_disablecopyonread_dense_1_kernel_1:	�@<
*read_20_disablecopyonread_dense_2_kernel_1:@6
(read_21_disablecopyonread_dense_2_bias_1:C
)read_22_disablecopyonread_conv2d_kernel_1: B
4read_23_disablecopyonread_batch_normalization_beta_1:5
'read_24_disablecopyonread_conv2d_bias_1: E
+read_25_disablecopyonread_conv2d_1_kernel_1: E
+read_26_disablecopyonread_conv2d_2_kernel_1: 7
)read_27_disablecopyonread_conv2d_2_bias_1: 5
&read_28_disablecopyonread_dense_bias_1:	�6
(read_29_disablecopyonread_dense_1_bias_1:@I
;read_30_disablecopyonread_batch_normalization_moving_mean_1:M
?read_31_disablecopyonread_batch_normalization_moving_variance_1:
savev2_const
identity_65��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_15*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_15^Read/DisableCopyOnRead*
_output_shapes
:*
dtype0V
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_14*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_14^Read_1/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_13*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_13^Read_2/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_12*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_12^Read_3/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_11*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_11^Read_4/DisableCopyOnRead*&
_output_shapes
: *
dtype0f

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*&
_output_shapes
: k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_10*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_10^Read_5/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_9*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_9^Read_6/DisableCopyOnRead*&
_output_shapes
: *
dtype0g
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_8*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_8^Read_7/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_7*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_7^Read_8/DisableCopyOnRead*&
_output_shapes
: *
dtype0g
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
: h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_6*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_6^Read_9/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_10/DisableCopyOnReadDisableCopyOnRead$read_10_disablecopyonread_variable_5*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp$read_10_disablecopyonread_variable_5^Read_10/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��j
Read_11/DisableCopyOnReadDisableCopyOnRead$read_11_disablecopyonread_variable_4*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp$read_11_disablecopyonread_variable_4^Read_11/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_12/DisableCopyOnReadDisableCopyOnRead$read_12_disablecopyonread_variable_3*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp$read_12_disablecopyonread_variable_3^Read_12/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@j
Read_13/DisableCopyOnReadDisableCopyOnRead$read_13_disablecopyonread_variable_2*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp$read_13_disablecopyonread_variable_2^Read_13/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_14/DisableCopyOnReadDisableCopyOnRead$read_14_disablecopyonread_variable_1*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp$read_14_disablecopyonread_variable_1^Read_14/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@h
Read_15/DisableCopyOnReadDisableCopyOnRead"read_15_disablecopyonread_variable*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp"read_15_disablecopyonread_variable^Read_15/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_16/DisableCopyOnReadDisableCopyOnRead5read_16_disablecopyonread_batch_normalization_gamma_1*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp5read_16_disablecopyonread_batch_normalization_gamma_1^Read_16/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:o
Read_17/DisableCopyOnReadDisableCopyOnRead)read_17_disablecopyonread_conv2d_1_bias_1*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp)read_17_disablecopyonread_conv2d_1_bias_1^Read_17/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:n
Read_18/DisableCopyOnReadDisableCopyOnRead(read_18_disablecopyonread_dense_kernel_1*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp(read_18_disablecopyonread_dense_kernel_1^Read_18/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��p
Read_19/DisableCopyOnReadDisableCopyOnRead*read_19_disablecopyonread_dense_1_kernel_1*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp*read_19_disablecopyonread_dense_1_kernel_1^Read_19/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@p
Read_20/DisableCopyOnReadDisableCopyOnRead*read_20_disablecopyonread_dense_2_kernel_1*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp*read_20_disablecopyonread_dense_2_kernel_1^Read_20/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@n
Read_21/DisableCopyOnReadDisableCopyOnRead(read_21_disablecopyonread_dense_2_bias_1*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp(read_21_disablecopyonread_dense_2_bias_1^Read_21/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:o
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_conv2d_kernel_1*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_conv2d_kernel_1^Read_22/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_23/DisableCopyOnReadDisableCopyOnRead4read_23_disablecopyonread_batch_normalization_beta_1*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp4read_23_disablecopyonread_batch_normalization_beta_1^Read_23/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:m
Read_24/DisableCopyOnReadDisableCopyOnRead'read_24_disablecopyonread_conv2d_bias_1*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp'read_24_disablecopyonread_conv2d_bias_1^Read_24/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: q
Read_25/DisableCopyOnReadDisableCopyOnRead+read_25_disablecopyonread_conv2d_1_kernel_1*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp+read_25_disablecopyonread_conv2d_1_kernel_1^Read_25/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*&
_output_shapes
: q
Read_26/DisableCopyOnReadDisableCopyOnRead+read_26_disablecopyonread_conv2d_2_kernel_1*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp+read_26_disablecopyonread_conv2d_2_kernel_1^Read_26/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
: o
Read_27/DisableCopyOnReadDisableCopyOnRead)read_27_disablecopyonread_conv2d_2_bias_1*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp)read_27_disablecopyonread_conv2d_2_bias_1^Read_27/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: l
Read_28/DisableCopyOnReadDisableCopyOnRead&read_28_disablecopyonread_dense_bias_1*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp&read_28_disablecopyonread_dense_bias_1^Read_28/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:�n
Read_29/DisableCopyOnReadDisableCopyOnRead(read_29_disablecopyonread_dense_1_bias_1*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp(read_29_disablecopyonread_dense_1_bias_1^Read_29/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_30/DisableCopyOnReadDisableCopyOnRead;read_30_disablecopyonread_batch_normalization_moving_mean_1*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp;read_30_disablecopyonread_batch_normalization_moving_mean_1^Read_30/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead?read_31_disablecopyonread_batch_normalization_moving_variance_1*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp?read_31_disablecopyonread_batch_normalization_moving_variance_1^Read_31/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 */
dtypes%
#2!�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_64Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_65IdentityIdentity_64:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_65Identity_65:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=!9

_output_shapes
: 

_user_specified_nameConst:E A
?
_user_specified_name'%batch_normalization/moving_variance_1:A=
;
_user_specified_name#!batch_normalization/moving_mean_1:.*
(
_user_specified_namedense_1/bias_1:,(
&
_user_specified_namedense/bias_1:/+
)
_user_specified_nameconv2d_2/bias_1:1-
+
_user_specified_nameconv2d_2/kernel_1:1-
+
_user_specified_nameconv2d_1/kernel_1:-)
'
_user_specified_nameconv2d/bias_1::6
4
_user_specified_namebatch_normalization/beta_1:/+
)
_user_specified_nameconv2d/kernel_1:.*
(
_user_specified_namedense_2/bias_1:0,
*
_user_specified_namedense_2/kernel_1:0,
*
_user_specified_namedense_1/kernel_1:.*
(
_user_specified_namedense/kernel_1:/+
)
_user_specified_nameconv2d_1/bias_1:;7
5
_user_specified_namebatch_normalization/gamma_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*
&
$
_user_specified_name
Variable_6:*	&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
-__inference_signature_wrapper___call___799761
keras_tensor
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:#
	unknown_7: 
	unknown_8: 
	unknown_9:
��

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallkeras_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___799686o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name799757:&"
 
_user_specified_name799755:&"
 
_user_specified_name799753:&"
 
_user_specified_name799751:&"
 
_user_specified_name799749:&"
 
_user_specified_name799747:&
"
 
_user_specified_name799745:&	"
 
_user_specified_name799743:&"
 
_user_specified_name799741:&"
 
_user_specified_name799739:&"
 
_user_specified_name799737:&"
 
_user_specified_name799735:&"
 
_user_specified_name799733:&"
 
_user_specified_name799731:&"
 
_user_specified_name799729:&"
 
_user_specified_name799727:] Y
/
_output_shapes
:���������  
&
_user_specified_namekeras_tensor
Ӑ
�
"__inference__traced_restore_800146
file_prefix*
assignvariableop_variable_15:,
assignvariableop_1_variable_14:,
assignvariableop_2_variable_13:,
assignvariableop_3_variable_12:8
assignvariableop_4_variable_11: ,
assignvariableop_5_variable_10: 7
assignvariableop_6_variable_9: +
assignvariableop_7_variable_8:7
assignvariableop_8_variable_7: +
assignvariableop_9_variable_6: 2
assignvariableop_10_variable_5:
��-
assignvariableop_11_variable_4:	�1
assignvariableop_12_variable_3:	�@,
assignvariableop_13_variable_2:@0
assignvariableop_14_variable_1:@*
assignvariableop_15_variable:=
/assignvariableop_16_batch_normalization_gamma_1:1
#assignvariableop_17_conv2d_1_bias_1:6
"assignvariableop_18_dense_kernel_1:
��7
$assignvariableop_19_dense_1_kernel_1:	�@6
$assignvariableop_20_dense_2_kernel_1:@0
"assignvariableop_21_dense_2_bias_1:=
#assignvariableop_22_conv2d_kernel_1: <
.assignvariableop_23_batch_normalization_beta_1:/
!assignvariableop_24_conv2d_bias_1: ?
%assignvariableop_25_conv2d_1_kernel_1: ?
%assignvariableop_26_conv2d_2_kernel_1: 1
#assignvariableop_27_conv2d_2_bias_1: /
 assignvariableop_28_dense_bias_1:	�0
"assignvariableop_29_dense_1_bias_1:@C
5assignvariableop_30_batch_normalization_moving_mean_1:G
9assignvariableop_31_batch_normalization_moving_variance_1:
identity_33��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::*/
dtypes%
#2![
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_15Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_14Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_13Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_12Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_11Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_10Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_9Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_8Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_7Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_6Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_5Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_4Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_3Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_2Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_gamma_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv2d_1_bias_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_kernel_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp$assignvariableop_19_dense_1_kernel_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp$assignvariableop_20_dense_2_kernel_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_2_bias_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp#assignvariableop_22_conv2d_kernel_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp.assignvariableop_23_batch_normalization_beta_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp!assignvariableop_24_conv2d_bias_1Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp%assignvariableop_25_conv2d_1_kernel_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_conv2d_2_kernel_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv2d_2_bias_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp assignvariableop_28_dense_bias_1Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp"assignvariableop_29_dense_1_bias_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp5assignvariableop_30_batch_normalization_moving_mean_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp9assignvariableop_31_batch_normalization_moving_variance_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_33IdentityIdentity_32:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_33Identity_33:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:E A
?
_user_specified_name'%batch_normalization/moving_variance_1:A=
;
_user_specified_name#!batch_normalization/moving_mean_1:.*
(
_user_specified_namedense_1/bias_1:,(
&
_user_specified_namedense/bias_1:/+
)
_user_specified_nameconv2d_2/bias_1:1-
+
_user_specified_nameconv2d_2/kernel_1:1-
+
_user_specified_nameconv2d_1/kernel_1:-)
'
_user_specified_nameconv2d/bias_1::6
4
_user_specified_namebatch_normalization/beta_1:/+
)
_user_specified_nameconv2d/kernel_1:.*
(
_user_specified_namedense_2/bias_1:0,
*
_user_specified_namedense_2/kernel_1:0,
*
_user_specified_namedense_1/kernel_1:.*
(
_user_specified_namedense/kernel_1:/+
)
_user_specified_nameconv2d_1/bias_1:;7
5
_user_specified_namebatch_normalization/gamma_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*
&
$
_user_specified_name
Variable_6:*	&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�w
�
__inference___call___799686
keras_tensorM
?functional_1_batch_normalization_1_cast_readvariableop_resource:O
Afunctional_1_batch_normalization_1_cast_1_readvariableop_resource:O
Afunctional_1_batch_normalization_1_cast_2_readvariableop_resource:O
Afunctional_1_batch_normalization_1_cast_3_readvariableop_resource:S
9functional_1_conv2d_1_convolution_readvariableop_resource: C
5functional_1_conv2d_1_reshape_readvariableop_resource: U
;functional_1_conv2d_1_2_convolution_readvariableop_resource: E
7functional_1_conv2d_1_2_reshape_readvariableop_resource:U
;functional_1_conv2d_2_1_convolution_readvariableop_resource: E
7functional_1_conv2d_2_1_reshape_readvariableop_resource: E
1functional_1_dense_1_cast_readvariableop_resource:
��C
4functional_1_dense_1_biasadd_readvariableop_resource:	�F
3functional_1_dense_1_2_cast_readvariableop_resource:	�@D
6functional_1_dense_1_2_biasadd_readvariableop_resource:@E
3functional_1_dense_2_1_cast_readvariableop_resource:@D
6functional_1_dense_2_1_biasadd_readvariableop_resource:
identity��6functional_1/batch_normalization_1/Cast/ReadVariableOp�8functional_1/batch_normalization_1/Cast_1/ReadVariableOp�8functional_1/batch_normalization_1/Cast_2/ReadVariableOp�8functional_1/batch_normalization_1/Cast_3/ReadVariableOp�,functional_1/conv2d_1/Reshape/ReadVariableOp�0functional_1/conv2d_1/convolution/ReadVariableOp�.functional_1/conv2d_1_2/Reshape/ReadVariableOp�2functional_1/conv2d_1_2/convolution/ReadVariableOp�.functional_1/conv2d_2_1/Reshape/ReadVariableOp�2functional_1/conv2d_2_1/convolution/ReadVariableOp�+functional_1/dense_1/BiasAdd/ReadVariableOp�(functional_1/dense_1/Cast/ReadVariableOp�-functional_1/dense_1_2/BiasAdd/ReadVariableOp�*functional_1/dense_1_2/Cast/ReadVariableOp�-functional_1/dense_2_1/BiasAdd/ReadVariableOp�*functional_1/dense_2_1/Cast/ReadVariableOp�
6functional_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOp?functional_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
8functional_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
8functional_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
8functional_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0w
2functional_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
0functional_1/batch_normalization_1/batchnorm/addAddV2@functional_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0;functional_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
2functional_1/batch_normalization_1/batchnorm/RsqrtRsqrt4functional_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:�
0functional_1/batch_normalization_1/batchnorm/mulMul6functional_1/batch_normalization_1/batchnorm/Rsqrt:y:0@functional_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:�
2functional_1/batch_normalization_1/batchnorm/mul_1Mulkeras_tensor4functional_1/batch_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������  �
2functional_1/batch_normalization_1/batchnorm/mul_2Mul>functional_1/batch_normalization_1/Cast/ReadVariableOp:value:04functional_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:�
0functional_1/batch_normalization_1/batchnorm/subSub@functional_1/batch_normalization_1/Cast_3/ReadVariableOp:value:06functional_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
2functional_1/batch_normalization_1/batchnorm/add_1AddV26functional_1/batch_normalization_1/batchnorm/mul_1:z:04functional_1/batch_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������  �
0functional_1/conv2d_1/convolution/ReadVariableOpReadVariableOp9functional_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
!functional_1/conv2d_1/convolutionConv2D6functional_1/batch_normalization_1/batchnorm/add_1:z:08functional_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
,functional_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp5functional_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0|
#functional_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
functional_1/conv2d_1/ReshapeReshape4functional_1/conv2d_1/Reshape/ReadVariableOp:value:0,functional_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: u
functional_1/conv2d_1/SqueezeSqueeze&functional_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
: �
functional_1/conv2d_1/BiasAddBiasAdd*functional_1/conv2d_1/convolution:output:0&functional_1/conv2d_1/Squeeze:output:0*
T0*/
_output_shapes
:���������   �
functional_1/conv2d_1/ReluRelu&functional_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
&functional_1/max_pooling2d_1/MaxPool2dMaxPool(functional_1/conv2d_1/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
2functional_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
#functional_1/conv2d_1_2/convolutionConv2D/functional_1/max_pooling2d_1/MaxPool2d:output:0:functional_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.functional_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype0~
%functional_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
functional_1/conv2d_1_2/ReshapeReshape6functional_1/conv2d_1_2/Reshape/ReadVariableOp:value:0.functional_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:y
functional_1/conv2d_1_2/SqueezeSqueeze(functional_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
:�
functional_1/conv2d_1_2/BiasAddBiasAdd,functional_1/conv2d_1_2/convolution:output:0(functional_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:����������
functional_1/conv2d_1_2/ReluRelu(functional_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:����������
(functional_1/max_pooling2d_1_2/MaxPool2dMaxPool*functional_1/conv2d_1_2/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
2functional_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_2_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
#functional_1/conv2d_2_1/convolutionConv2D1functional_1/max_pooling2d_1_2/MaxPool2d:output:0:functional_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
.functional_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%functional_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
functional_1/conv2d_2_1/ReshapeReshape6functional_1/conv2d_2_1/Reshape/ReadVariableOp:value:0.functional_1/conv2d_2_1/Reshape/shape:output:0*
T0*&
_output_shapes
: y
functional_1/conv2d_2_1/SqueezeSqueeze(functional_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes
: �
functional_1/conv2d_2_1/BiasAddBiasAdd,functional_1/conv2d_2_1/convolution:output:0(functional_1/conv2d_2_1/Squeeze:output:0*
T0*/
_output_shapes
:��������� �
functional_1/conv2d_2_1/ReluRelu(functional_1/conv2d_2_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
(functional_1/max_pooling2d_2_1/MaxPool2dMaxPool*functional_1/conv2d_2_1/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
u
$functional_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
functional_1/flatten_1/ReshapeReshape1functional_1/max_pooling2d_2_1/MaxPool2d:output:0-functional_1/flatten_1/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/dense_1/Cast/ReadVariableOpReadVariableOp1functional_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_1/MatMulMatMul'functional_1/flatten_1/Reshape:output:00functional_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+functional_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4functional_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_1/BiasAddBiasAdd%functional_1/dense_1/MatMul:product:03functional_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
functional_1/dense_1/ReluRelu%functional_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3functional_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
functional_1/dense_1_2/MatMulMatMul'functional_1/dense_1/Relu:activations:02functional_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
-functional_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_1/dense_1_2/BiasAddBiasAdd'functional_1/dense_1_2/MatMul:product:05functional_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
functional_1/dense_1_2/ReluRelu'functional_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
*functional_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
functional_1/dense_2_1/MatMulMatMul)functional_1/dense_1_2/Relu:activations:02functional_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-functional_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_1/dense_2_1/BiasAddBiasAdd'functional_1/dense_2_1/MatMul:product:05functional_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'functional_1/dense_2_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^functional_1/batch_normalization_1/Cast/ReadVariableOp9^functional_1/batch_normalization_1/Cast_1/ReadVariableOp9^functional_1/batch_normalization_1/Cast_2/ReadVariableOp9^functional_1/batch_normalization_1/Cast_3/ReadVariableOp-^functional_1/conv2d_1/Reshape/ReadVariableOp1^functional_1/conv2d_1/convolution/ReadVariableOp/^functional_1/conv2d_1_2/Reshape/ReadVariableOp3^functional_1/conv2d_1_2/convolution/ReadVariableOp/^functional_1/conv2d_2_1/Reshape/ReadVariableOp3^functional_1/conv2d_2_1/convolution/ReadVariableOp,^functional_1/dense_1/BiasAdd/ReadVariableOp)^functional_1/dense_1/Cast/ReadVariableOp.^functional_1/dense_1_2/BiasAdd/ReadVariableOp+^functional_1/dense_1_2/Cast/ReadVariableOp.^functional_1/dense_2_1/BiasAdd/ReadVariableOp+^functional_1/dense_2_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2p
6functional_1/batch_normalization_1/Cast/ReadVariableOp6functional_1/batch_normalization_1/Cast/ReadVariableOp2t
8functional_1/batch_normalization_1/Cast_1/ReadVariableOp8functional_1/batch_normalization_1/Cast_1/ReadVariableOp2t
8functional_1/batch_normalization_1/Cast_2/ReadVariableOp8functional_1/batch_normalization_1/Cast_2/ReadVariableOp2t
8functional_1/batch_normalization_1/Cast_3/ReadVariableOp8functional_1/batch_normalization_1/Cast_3/ReadVariableOp2\
,functional_1/conv2d_1/Reshape/ReadVariableOp,functional_1/conv2d_1/Reshape/ReadVariableOp2d
0functional_1/conv2d_1/convolution/ReadVariableOp0functional_1/conv2d_1/convolution/ReadVariableOp2`
.functional_1/conv2d_1_2/Reshape/ReadVariableOp.functional_1/conv2d_1_2/Reshape/ReadVariableOp2h
2functional_1/conv2d_1_2/convolution/ReadVariableOp2functional_1/conv2d_1_2/convolution/ReadVariableOp2`
.functional_1/conv2d_2_1/Reshape/ReadVariableOp.functional_1/conv2d_2_1/Reshape/ReadVariableOp2h
2functional_1/conv2d_2_1/convolution/ReadVariableOp2functional_1/conv2d_2_1/convolution/ReadVariableOp2Z
+functional_1/dense_1/BiasAdd/ReadVariableOp+functional_1/dense_1/BiasAdd/ReadVariableOp2T
(functional_1/dense_1/Cast/ReadVariableOp(functional_1/dense_1/Cast/ReadVariableOp2^
-functional_1/dense_1_2/BiasAdd/ReadVariableOp-functional_1/dense_1_2/BiasAdd/ReadVariableOp2X
*functional_1/dense_1_2/Cast/ReadVariableOp*functional_1/dense_1_2/Cast/ReadVariableOp2^
-functional_1/dense_2_1/BiasAdd/ReadVariableOp-functional_1/dense_2_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_2_1/Cast/ReadVariableOp*functional_1/dense_2_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
/
_output_shapes
:���������  
&
_user_specified_namekeras_tensor
�
�
-__inference_signature_wrapper___call___799724
keras_tensor
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:#
	unknown_7: 
	unknown_8: 
	unknown_9:
��

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallkeras_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___799686o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name799720:&"
 
_user_specified_name799718:&"
 
_user_specified_name799716:&"
 
_user_specified_name799714:&"
 
_user_specified_name799712:&"
 
_user_specified_name799710:&
"
 
_user_specified_name799708:&	"
 
_user_specified_name799706:&"
 
_user_specified_name799704:&"
 
_user_specified_name799702:&"
 
_user_specified_name799700:&"
 
_user_specified_name799698:&"
 
_user_specified_name799696:&"
 
_user_specified_name799694:&"
 
_user_specified_name799692:&"
 
_user_specified_name799690:] Y
/
_output_shapes
:���������  
&
_user_specified_namekeras_tensor"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
C
keras_tensor3
serve_keras_tensor:0���������  <
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
M
keras_tensor=
serving_default_keras_tensor:0���������  >
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
�
0
	1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13
&14
'15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
(trace_02�
__inference___call___799686�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *3�0
.�+
keras_tensor���������  z(trace_0
7
	)serve
*serving_default"
signature_map
):'(2batch_normalization/gamma
(:&(2batch_normalization/beta
-:+(2batch_normalization/moving_mean
1:/(2#batch_normalization/moving_variance
):' (2conv2d/kernel
: (2conv2d/bias
+:) (2conv2d_1/kernel
:(2conv2d_1/bias
+:) (2conv2d_2/kernel
: (2conv2d_2/bias
": 
��(2dense/kernel
:�(2
dense/bias
#:!	�@(2dense_1/kernel
:@(2dense_1/bias
": @(2dense_2/kernel
:(2dense_2/bias
):'(2batch_normalization/gamma
:(2conv2d_1/bias
": 
��(2dense/kernel
#:!	�@(2dense_1/kernel
": @(2dense_2/kernel
:(2dense_2/bias
):' (2conv2d/kernel
(:&(2batch_normalization/beta
: (2conv2d/bias
+:) (2conv2d_1/kernel
+:) (2conv2d_2/kernel
: (2conv2d_2/bias
:�(2
dense/bias
:@(2dense_1/bias
-:+(2batch_normalization/moving_mean
1:/(2#batch_normalization/moving_variance
�B�
__inference___call___799686keras_tensor"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___799724keras_tensor"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 !

kwonlyargs�
jkeras_tensor
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___799761keras_tensor"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 !

kwonlyargs�
jkeras_tensor
kwonlydefaults
 
annotations� *
 �
__inference___call___799686t
	=�:
3�0
.�+
keras_tensor���������  
� "!�
unknown����������
-__inference_signature_wrapper___call___799724�
	M�J
� 
C�@
>
keras_tensor.�+
keras_tensor���������  "3�0
.
output_0"�
output_0����������
-__inference_signature_wrapper___call___799761�
	M�J
� 
C�@
>
keras_tensor.�+
keras_tensor���������  "3�0
.
output_0"�
output_0���������