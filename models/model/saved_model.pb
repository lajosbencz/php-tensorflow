ţö
ęĂ
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

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
W
InTopKV2
predictions
targets"T
k"T
	precision
"
Ttype0:
2	
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename

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
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.02v1.8.0-0-g93bc2e2072Ż˝
p
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
R
Placeholder_1Placeholder*
shape:*
dtype0*
_output_shapes
:
o
hidden1/truncated_normal/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
b
hidden1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
hidden1/truncated_normal/stddevConst*
valueB
 *%I=*
dtype0*
_output_shapes
: 
Ź
(hidden1/truncated_normal/TruncatedNormalTruncatedNormalhidden1/truncated_normal/shape*
dtype0*
seed2 * 
_output_shapes
:
*

seed *
T0

hidden1/truncated_normal/mulMul(hidden1/truncated_normal/TruncatedNormalhidden1/truncated_normal/stddev*
T0* 
_output_shapes
:


hidden1/truncated_normalAddhidden1/truncated_normal/mulhidden1/truncated_normal/mean* 
_output_shapes
:
*
T0

hidden1/weights
VariableV2*
	container * 
_output_shapes
:
*
shape:
*
shared_name *
dtype0
Ă
hidden1/weights/AssignAssignhidden1/weightshidden1/truncated_normal*
T0*"
_class
loc:@hidden1/weights*
validate_shape(* 
_output_shapes
:
*
use_locking(

hidden1/weights/readIdentityhidden1/weights*
T0*"
_class
loc:@hidden1/weights* 
_output_shapes
:

\
hidden1/zerosConst*
_output_shapes	
:*
valueB*    *
dtype0
|
hidden1/biases
VariableV2*
dtype0*
	container *
_output_shapes	
:*
shape:*
shared_name 
°
hidden1/biases/AssignAssignhidden1/biaseshidden1/zeros*
use_locking(*
T0*!
_class
loc:@hidden1/biases*
validate_shape(*
_output_shapes	
:
x
hidden1/biases/readIdentityhidden1/biases*
T0*!
_class
loc:@hidden1/biases*
_output_shapes	
:

hidden1/MatMulMatMulPlaceholderhidden1/weights/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 
j
hidden1/addAddhidden1/MatMulhidden1/biases/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
T
hidden1/ReluReluhidden1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
hidden2/truncated_normal/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
b
hidden2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
hidden2/truncated_normal/stddevConst*
valueB
 *óľ=*
dtype0*
_output_shapes
: 
Ť
(hidden2/truncated_normal/TruncatedNormalTruncatedNormalhidden2/truncated_normal/shape*
dtype0*
seed2 *
_output_shapes
:	 *

seed *
T0

hidden2/truncated_normal/mulMul(hidden2/truncated_normal/TruncatedNormalhidden2/truncated_normal/stddev*
_output_shapes
:	 *
T0

hidden2/truncated_normalAddhidden2/truncated_normal/mulhidden2/truncated_normal/mean*
_output_shapes
:	 *
T0

hidden2/weights
VariableV2*
dtype0*
	container *
_output_shapes
:	 *
shape:	 *
shared_name 
Â
hidden2/weights/AssignAssignhidden2/weightshidden2/truncated_normal*
_output_shapes
:	 *
use_locking(*
T0*"
_class
loc:@hidden2/weights*
validate_shape(

hidden2/weights/readIdentityhidden2/weights*
T0*"
_class
loc:@hidden2/weights*
_output_shapes
:	 
Z
hidden2/zerosConst*
_output_shapes
: *
valueB *    *
dtype0
z
hidden2/biases
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
Ż
hidden2/biases/AssignAssignhidden2/biaseshidden2/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@hidden2/biases
w
hidden2/biases/readIdentityhidden2/biases*
_output_shapes
: *
T0*!
_class
loc:@hidden2/biases

hidden2/MatMulMatMulhidden1/Reluhidden2/weights/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
i
hidden2/addAddhidden2/MatMulhidden2/biases/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
hidden2/ReluReluhidden2/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
v
%softmax_linear/truncated_normal/shapeConst*
valueB"    
   *
dtype0*
_output_shapes
:
i
$softmax_linear/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&softmax_linear/truncated_normal/stddevConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
¸
/softmax_linear/truncated_normal/TruncatedNormalTruncatedNormal%softmax_linear/truncated_normal/shape*
dtype0*
seed2 *
_output_shapes

: 
*

seed *
T0
Ź
#softmax_linear/truncated_normal/mulMul/softmax_linear/truncated_normal/TruncatedNormal&softmax_linear/truncated_normal/stddev*
T0*
_output_shapes

: 


softmax_linear/truncated_normalAdd#softmax_linear/truncated_normal/mul$softmax_linear/truncated_normal/mean*
_output_shapes

: 
*
T0

softmax_linear/weights
VariableV2*
dtype0*
	container *
_output_shapes

: 
*
shape
: 
*
shared_name 
Ý
softmax_linear/weights/AssignAssignsoftmax_linear/weightssoftmax_linear/truncated_normal*
_output_shapes

: 
*
use_locking(*
T0*)
_class
loc:@softmax_linear/weights*
validate_shape(

softmax_linear/weights/readIdentitysoftmax_linear/weights*
T0*)
_class
loc:@softmax_linear/weights*
_output_shapes

: 

a
softmax_linear/zerosConst*
valueB
*    *
dtype0*
_output_shapes
:


softmax_linear/biases
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:
*
shape:

Ë
softmax_linear/biases/AssignAssignsoftmax_linear/biasessoftmax_linear/zeros*
use_locking(*
T0*(
_class
loc:@softmax_linear/biases*
validate_shape(*
_output_shapes
:


softmax_linear/biases/readIdentitysoftmax_linear/biases*
T0*(
_class
loc:@softmax_linear/biases*
_output_shapes
:

˘
softmax_linear/MatMulMatMulhidden2/Relusoftmax_linear/weights/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_b( *
T0
~
softmax_linear/addAddsoftmax_linear/MatMulsoftmax_linear/biases/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
P
ToInt64CastPlaceholder_1*

SrcT0*

DstT0	*
_output_shapes
:

Csparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/RankConst*
value	B :*
dtype0*
_output_shapes
: 
w
Esparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Rank_1RankToInt64*
T0	*
_output_shapes
: 
ö
Bsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/subSubCsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/RankEsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Rank_1*
T0*
_output_shapes
: 

Fsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Equal/xConst*
_output_shapes
: *
value	B : *
dtype0
ú
Dsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/EqualEqualFsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Equal/xBsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/sub*
T0*
_output_shapes
: 

Jsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/SwitchSwitchDsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/EqualDsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Equal*
T0
*
_output_shapes
: : 
Ç
Lsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_tIdentityLsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Switch:1*
_output_shapes
: *
T0

Ĺ
Lsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_fIdentityJsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Switch*
T0
*
_output_shapes
: 
ž
Ksparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_idIdentityDsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/Equal*
T0
*
_output_shapes
: 
ď
Ksparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/SqueezeSqueezeTsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Squeeze/Switch:1*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0	*
_output_shapes
:
ő
Rsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Squeeze/SwitchSwitchToInt64Ksparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id*
T0	*
_class
loc:@ToInt64*
_output_shapes

::
ď
Lsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Switch_1SwitchToInt64Ksparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id*
_output_shapes

::*
T0	*
_class
loc:@ToInt64

Isparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/MergeMergeLsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Switch_1Ksparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Squeeze*
T0	*
N*
_output_shapes
:: 
l
'sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
&sparse_softmax_cross_entropy_loss/RankConst*
value	B : *
dtype0*
_output_shapes
: 

(sparse_softmax_cross_entropy_loss/Rank_1RankIsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Merge*
T0	*
_output_shapes
: 

%sparse_softmax_cross_entropy_loss/subSub&sparse_softmax_cross_entropy_loss/Rank(sparse_softmax_cross_entropy_loss/Rank_1*
T0*
_output_shapes
: 
Â
0sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeIsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Merge*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	*
out_type0

3sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitssoftmax_linear/addIsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Merge*
T0*
Tlabels0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙


Dsparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Csparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
ś
Csparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Bsparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Z
Rsparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp

%sparse_softmax_cross_entropy_loss/MulMul3sparse_softmax_cross_entropy_loss/xentropy/xentropy'sparse_softmax_cross_entropy_loss/ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Č
)sparse_softmax_cross_entropy_loss/Const_1ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ź
%sparse_softmax_cross_entropy_loss/SumSum%sparse_softmax_cross_entropy_loss/Mul)sparse_softmax_cross_entropy_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Ď
5sparse_softmax_cross_entropy_loss/num_present/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
˝
3sparse_softmax_cross_entropy_loss/num_present/EqualEqual'sparse_softmax_cross_entropy_loss/Const5sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Ň
8sparse_softmax_cross_entropy_loss/num_present/zeros_likeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ő
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
×
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
đ
7sparse_softmax_cross_entropy_loss/num_present/ones_likeFill=sparse_softmax_cross_entropy_loss/num_present/ones_like/Shape=sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
_output_shapes
: *
T0*

index_type0

4sparse_softmax_cross_entropy_loss/num_present/SelectSelect3sparse_softmax_cross_entropy_loss/num_present/Equal8sparse_softmax_cross_entropy_loss/num_present/zeros_like7sparse_softmax_cross_entropy_loss/num_present/ones_like*
_output_shapes
: *
T0
ú
bsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ř
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
Š
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
out_type0*
_output_shapes
:*
T0
÷
`sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
value	B :*
dtype0
Í
psparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success

Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
Ü
Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ł
Isparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
?sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMul4sparse_softmax_cross_entropy_loss/num_present/SelectIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ň
3sparse_softmax_cross_entropy_loss/num_present/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
č
-sparse_softmax_cross_entropy_loss/num_presentSum?sparse_softmax_cross_entropy_loss/num_present/broadcast_weights3sparse_softmax_cross_entropy_loss/num_present/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Á
)sparse_softmax_cross_entropy_loss/Const_2ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ž
'sparse_softmax_cross_entropy_loss/Sum_1Sum%sparse_softmax_cross_entropy_loss/Sum)sparse_softmax_cross_entropy_loss/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Ĺ
+sparse_softmax_cross_entropy_loss/Greater/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ą
)sparse_softmax_cross_entropy_loss/GreaterGreater-sparse_softmax_cross_entropy_loss/num_present+sparse_softmax_cross_entropy_loss/Greater/y*
_output_shapes
: *
T0
Ă
)sparse_softmax_cross_entropy_loss/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ť
'sparse_softmax_cross_entropy_loss/EqualEqual-sparse_softmax_cross_entropy_loss/num_present)sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
É
1sparse_softmax_cross_entropy_loss/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ë
1sparse_softmax_cross_entropy_loss/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ě
+sparse_softmax_cross_entropy_loss/ones_likeFill1sparse_softmax_cross_entropy_loss/ones_like/Shape1sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Ř
(sparse_softmax_cross_entropy_loss/SelectSelect'sparse_softmax_cross_entropy_loss/Equal+sparse_softmax_cross_entropy_loss/ones_like-sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
¤
%sparse_softmax_cross_entropy_loss/divRealDiv'sparse_softmax_cross_entropy_loss/Sum_1(sparse_softmax_cross_entropy_loss/Select*
_output_shapes
: *
T0
Ć
,sparse_softmax_cross_entropy_loss/zeros_likeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
Ň
'sparse_softmax_cross_entropy_loss/valueSelect)sparse_softmax_cross_entropy_loss/Greater%sparse_softmax_cross_entropy_loss/div,sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
j
lossScalarSummary	loss/tags'sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
[
global_step/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
o
global_step
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
Ž
global_step/AssignAssignglobal_stepglobal_step/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
j
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step*
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
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

Agradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
_output_shapes
: *
valueB
 *    *
dtype0
ć
=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect)sparse_softmax_cross_entropy_loss/Greatergradients/FillAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
č
?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select)sparse_softmax_cross_entropy_loss/GreaterAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likegradients/Fill*
T0*
_output_shapes
: 
Ń
Ggradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp>^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select@^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1
×
Ogradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectH^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
Ý
Qgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1H^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
_output_shapes
: *
T0*R
_classH
FDloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1
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

Jgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ă
<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

8gradients/sparse_softmax_cross_entropy_loss/div_grad/SumSum<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivJgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ě
<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

8gradients/sparse_softmax_cross_entropy_loss/div_grad/NegNeg'sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
Î
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv8gradients/sparse_softmax_cross_entropy_loss/div_grad/Neg(sparse_softmax_cross_entropy_loss/Select*
_output_shapes
: *
T0
Ô
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ń
8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulMulOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
_output_shapes
: *
T0

:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Sum8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulLgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ň
>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Í
Egradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Ń
Mgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
_output_shapes
: *
T0*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape
×
Ogradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 

Dgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeMgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyDgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

<gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ô
;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape<gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 

Bgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
>gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect'sparse_softmax_cross_entropy_loss/EqualOgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Bgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
Š
@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select'sparse_softmax_cross_entropy_loss/EqualBgradients/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeOgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
_output_shapes
: *
T0
Ô
Hgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp?^gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectA^gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
Ű
Pgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity>gradients/sparse_softmax_cross_entropy_loss/Select_grad/SelectI^gradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
á
Rgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1I^gradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*S
_classI
GEloc:@gradients/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: *
T0

Bgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ű
<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshape;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileBgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape%sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
ű
9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/TileTile<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
_output_shapes
:*
T0*
out_type0

<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0

Jgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ń
8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/MulMul9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile'sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/SumSum8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/MulJgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ů
<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1Mul3sparse_softmax_cross_entropy_loss/xentropy/xentropy9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1Lgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ň
>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Í
Egradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
Ţ
Mgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
×
Ogradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 

Jgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
˘
Dgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeRgradients/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Jgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Á
Bgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShape?sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
out_type0*
_output_shapes
:*
T0

Agradients/sparse_softmax_cross_entropy_loss/num_present_grad/TileTileDgradients/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeBgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
ß
Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1ShapeIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
_output_shapes
:*
T0*
out_type0
č
dgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeVgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

Rgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/MulMulAgradients/sparse_softmax_cross_entropy_loss/num_present_grad/TileIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
Rgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumRgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Muldgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ş
Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeRgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
_output_shapes
: *
T0*
Tshape0

Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Mul_1Mul4sparse_softmax_cross_entropy_loss/num_present/SelectAgradients/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Tgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1SumTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Mul_1fgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Í
Xgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1ReshapeTgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Vgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

_gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpW^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeY^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
š
ggradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityVgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape`^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
_output_shapes
: *
T0*i
_class_
][loc:@gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape
Ě
igradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1IdentityXgradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1`^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ě
\gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumigradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1^gradients/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

gradients/zeros_like	ZerosLike5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Rgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradient5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Qgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
Mgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsMgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyQgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
˘
Fgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulMgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsRgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

|
'gradients/softmax_linear/add_grad/ShapeShapesoftmax_linear/MatMul*
T0*
out_type0*
_output_shapes
:
s
)gradients/softmax_linear/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
á
7gradients/softmax_linear/add_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/softmax_linear/add_grad/Shape)gradients/softmax_linear/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
í
%gradients/softmax_linear/add_grad/SumSumFgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul7gradients/softmax_linear/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ä
)gradients/softmax_linear/add_grad/ReshapeReshape%gradients/softmax_linear/add_grad/Sum'gradients/softmax_linear/add_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
ń
'gradients/softmax_linear/add_grad/Sum_1SumFgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul9gradients/softmax_linear/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
˝
+gradients/softmax_linear/add_grad/Reshape_1Reshape'gradients/softmax_linear/add_grad/Sum_1)gradients/softmax_linear/add_grad/Shape_1*
_output_shapes
:
*
T0*
Tshape0

2gradients/softmax_linear/add_grad/tuple/group_depsNoOp*^gradients/softmax_linear/add_grad/Reshape,^gradients/softmax_linear/add_grad/Reshape_1

:gradients/softmax_linear/add_grad/tuple/control_dependencyIdentity)gradients/softmax_linear/add_grad/Reshape3^gradients/softmax_linear/add_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*<
_class2
0.loc:@gradients/softmax_linear/add_grad/Reshape

<gradients/softmax_linear/add_grad/tuple/control_dependency_1Identity+gradients/softmax_linear/add_grad/Reshape_13^gradients/softmax_linear/add_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/softmax_linear/add_grad/Reshape_1*
_output_shapes
:

ć
+gradients/softmax_linear/MatMul_grad/MatMulMatMul:gradients/softmax_linear/add_grad/tuple/control_dependencysoftmax_linear/weights/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b(
Đ
-gradients/softmax_linear/MatMul_grad/MatMul_1MatMulhidden2/Relu:gradients/softmax_linear/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: 
*
transpose_b( 

5gradients/softmax_linear/MatMul_grad/tuple/group_depsNoOp,^gradients/softmax_linear/MatMul_grad/MatMul.^gradients/softmax_linear/MatMul_grad/MatMul_1
 
=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyIdentity+gradients/softmax_linear/MatMul_grad/MatMul6^gradients/softmax_linear/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/softmax_linear/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1Identity-gradients/softmax_linear/MatMul_grad/MatMul_16^gradients/softmax_linear/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/softmax_linear/MatMul_grad/MatMul_1*
_output_shapes

: 

Ż
$gradients/hidden2/Relu_grad/ReluGradReluGrad=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyhidden2/Relu*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
n
 gradients/hidden2/add_grad/ShapeShapehidden2/MatMul*
T0*
out_type0*
_output_shapes
:
l
"gradients/hidden2/add_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
Ě
0gradients/hidden2/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/hidden2/add_grad/Shape"gradients/hidden2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˝
gradients/hidden2/add_grad/SumSum$gradients/hidden2/Relu_grad/ReluGrad0gradients/hidden2/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ż
"gradients/hidden2/add_grad/ReshapeReshapegradients/hidden2/add_grad/Sum gradients/hidden2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Á
 gradients/hidden2/add_grad/Sum_1Sum$gradients/hidden2/Relu_grad/ReluGrad2gradients/hidden2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¨
$gradients/hidden2/add_grad/Reshape_1Reshape gradients/hidden2/add_grad/Sum_1"gradients/hidden2/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0

+gradients/hidden2/add_grad/tuple/group_depsNoOp#^gradients/hidden2/add_grad/Reshape%^gradients/hidden2/add_grad/Reshape_1
ú
3gradients/hidden2/add_grad/tuple/control_dependencyIdentity"gradients/hidden2/add_grad/Reshape,^gradients/hidden2/add_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/hidden2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ó
5gradients/hidden2/add_grad/tuple/control_dependency_1Identity$gradients/hidden2/add_grad/Reshape_1,^gradients/hidden2/add_grad/tuple/group_deps*
_output_shapes
: *
T0*7
_class-
+)loc:@gradients/hidden2/add_grad/Reshape_1
Ň
$gradients/hidden2/MatMul_grad/MatMulMatMul3gradients/hidden2/add_grad/tuple/control_dependencyhidden2/weights/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
Ă
&gradients/hidden2/MatMul_grad/MatMul_1MatMulhidden1/Relu3gradients/hidden2/add_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	 *
transpose_b( *
T0

.gradients/hidden2/MatMul_grad/tuple/group_depsNoOp%^gradients/hidden2/MatMul_grad/MatMul'^gradients/hidden2/MatMul_grad/MatMul_1

6gradients/hidden2/MatMul_grad/tuple/control_dependencyIdentity$gradients/hidden2/MatMul_grad/MatMul/^gradients/hidden2/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

8gradients/hidden2/MatMul_grad/tuple/control_dependency_1Identity&gradients/hidden2/MatMul_grad/MatMul_1/^gradients/hidden2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	 
Š
$gradients/hidden1/Relu_grad/ReluGradReluGrad6gradients/hidden2/MatMul_grad/tuple/control_dependencyhidden1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
 gradients/hidden1/add_grad/ShapeShapehidden1/MatMul*
T0*
out_type0*
_output_shapes
:
m
"gradients/hidden1/add_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
Ě
0gradients/hidden1/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/hidden1/add_grad/Shape"gradients/hidden1/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
˝
gradients/hidden1/add_grad/SumSum$gradients/hidden1/Relu_grad/ReluGrad0gradients/hidden1/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
°
"gradients/hidden1/add_grad/ReshapeReshapegradients/hidden1/add_grad/Sum gradients/hidden1/add_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Á
 gradients/hidden1/add_grad/Sum_1Sum$gradients/hidden1/Relu_grad/ReluGrad2gradients/hidden1/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Š
$gradients/hidden1/add_grad/Reshape_1Reshape gradients/hidden1/add_grad/Sum_1"gradients/hidden1/add_grad/Shape_1*
Tshape0*
_output_shapes	
:*
T0

+gradients/hidden1/add_grad/tuple/group_depsNoOp#^gradients/hidden1/add_grad/Reshape%^gradients/hidden1/add_grad/Reshape_1
ű
3gradients/hidden1/add_grad/tuple/control_dependencyIdentity"gradients/hidden1/add_grad/Reshape,^gradients/hidden1/add_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/hidden1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
5gradients/hidden1/add_grad/tuple/control_dependency_1Identity$gradients/hidden1/add_grad/Reshape_1,^gradients/hidden1/add_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/hidden1/add_grad/Reshape_1*
_output_shapes	
:
Ň
$gradients/hidden1/MatMul_grad/MatMulMatMul3gradients/hidden1/add_grad/tuple/control_dependencyhidden1/weights/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
Ă
&gradients/hidden1/MatMul_grad/MatMul_1MatMulPlaceholder3gradients/hidden1/add_grad/tuple/control_dependency*
T0*
transpose_a(* 
_output_shapes
:
*
transpose_b( 

.gradients/hidden1/MatMul_grad/tuple/group_depsNoOp%^gradients/hidden1/MatMul_grad/MatMul'^gradients/hidden1/MatMul_grad/MatMul_1

6gradients/hidden1/MatMul_grad/tuple/control_dependencyIdentity$gradients/hidden1/MatMul_grad/MatMul/^gradients/hidden1/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

8gradients/hidden1/MatMul_grad/tuple/control_dependency_1Identity&gradients/hidden1/MatMul_grad/MatMul_1/^gradients/hidden1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*9
_class/
-+loc:@gradients/hidden1/MatMul_grad/MatMul_1
b
GradientDescent/learning_rateConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 

;GradientDescent/update_hidden1/weights/ApplyGradientDescentApplyGradientDescenthidden1/weightsGradientDescent/learning_rate8gradients/hidden1/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
*
use_locking( *
T0*"
_class
loc:@hidden1/weights

:GradientDescent/update_hidden1/biases/ApplyGradientDescentApplyGradientDescenthidden1/biasesGradientDescent/learning_rate5gradients/hidden1/add_grad/tuple/control_dependency_1*
T0*!
_class
loc:@hidden1/biases*
_output_shapes	
:*
use_locking( 

;GradientDescent/update_hidden2/weights/ApplyGradientDescentApplyGradientDescenthidden2/weightsGradientDescent/learning_rate8gradients/hidden2/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	 *
use_locking( *
T0*"
_class
loc:@hidden2/weights

:GradientDescent/update_hidden2/biases/ApplyGradientDescentApplyGradientDescenthidden2/biasesGradientDescent/learning_rate5gradients/hidden2/add_grad/tuple/control_dependency_1*!
_class
loc:@hidden2/biases*
_output_shapes
: *
use_locking( *
T0
š
BGradientDescent/update_softmax_linear/weights/ApplyGradientDescentApplyGradientDescentsoftmax_linear/weightsGradientDescent/learning_rate?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@softmax_linear/weights*
_output_shapes

: 

Ż
AGradientDescent/update_softmax_linear/biases/ApplyGradientDescentApplyGradientDescentsoftmax_linear/biasesGradientDescent/learning_rate<gradients/softmax_linear/add_grad/tuple/control_dependency_1*
T0*(
_class
loc:@softmax_linear/biases*
_output_shapes
:
*
use_locking( 

GradientDescent/updateNoOp;^GradientDescent/update_hidden1/biases/ApplyGradientDescent<^GradientDescent/update_hidden1/weights/ApplyGradientDescent;^GradientDescent/update_hidden2/biases/ApplyGradientDescent<^GradientDescent/update_hidden2/weights/ApplyGradientDescentB^GradientDescent/update_softmax_linear/biases/ApplyGradientDescentC^GradientDescent/update_softmax_linear/weights/ApplyGradientDescent

GradientDescent/valueConst^GradientDescent/update*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@global_step

GradientDescent	AssignAddglobal_stepGradientDescent/value*
use_locking( *
T0*
_class
loc:@global_step*
_output_shapes
: 
U
in_top_k/InTopKV2/kConst*
value	B :*
dtype0*
_output_shapes
: 

in_top_k/InTopKV2InTopKV2softmax_linear/addPlaceholder_1in_top_k/InTopKV2/k*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
CastCastin_top_k/InTopKV2*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
U
SumSumCastConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
I
Merge/MergeSummaryMergeSummaryloss*
N*
_output_shapes
: 
Â
initNoOp^global_step/Assign^hidden1/biases/Assign^hidden1/weights/Assign^hidden2/biases/Assign^hidden2/weights/Assign^softmax_linear/biases/Assign^softmax_linear/weights/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ŕ
save/SaveV2/tensor_namesConst*
valueBBglobal_stepBhidden1/biasesBhidden1/weightsBhidden2/biasesBhidden2/weightsBsoftmax_linear/biasesBsoftmax_linear/weights*
dtype0*
_output_shapes
:
q
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*!
valueBB B B B B B B 
î
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_stephidden1/biaseshidden1/weightshidden2/biaseshidden2/weightssoftmax_linear/biasessoftmax_linear/weights*
dtypes
	2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
ă
save/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBglobal_stepBhidden1/biasesBhidden1/weightsBhidden2/biasesBhidden2/weightsBsoftmax_linear/biasesBsoftmax_linear/weights*
dtype0
t
save/RestoreV2/shape_and_slicesConst*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
Ž
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
	2*0
_output_shapes
:::::::

save/AssignAssignglobal_stepsave/RestoreV2*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ť
save/Assign_1Assignhidden1/biasessave/RestoreV2:1*
use_locking(*
T0*!
_class
loc:@hidden1/biases*
validate_shape(*
_output_shapes	
:
˛
save/Assign_2Assignhidden1/weightssave/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@hidden1/weights*
validate_shape(* 
_output_shapes
:

Ş
save/Assign_3Assignhidden2/biasessave/RestoreV2:3*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@hidden2/biases*
validate_shape(
ą
save/Assign_4Assignhidden2/weightssave/RestoreV2:4*
T0*"
_class
loc:@hidden2/weights*
validate_shape(*
_output_shapes
:	 *
use_locking(
¸
save/Assign_5Assignsoftmax_linear/biasessave/RestoreV2:5*
use_locking(*
T0*(
_class
loc:@softmax_linear/biases*
validate_shape(*
_output_shapes
:

ž
save/Assign_6Assignsoftmax_linear/weightssave/RestoreV2:6*
_output_shapes

: 
*
use_locking(*
T0*)
_class
loc:@softmax_linear/weights*
validate_shape(

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_5775ae43e6f24a32853049033ebd6df5/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
â
save_1/SaveV2/tensor_namesConst*
valueBBglobal_stepBhidden1/biasesBhidden1/weightsBhidden2/biasesBhidden2/weightsBsoftmax_linear/biasesBsoftmax_linear/weights*
dtype0*
_output_shapes
:
s
save_1/SaveV2/shape_and_slicesConst*!
valueBB B B B B B B *
dtype0*
_output_shapes
:

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_stephidden1/biaseshidden1/weightshidden2/biaseshidden2/weightssoftmax_linear/biasessoftmax_linear/weights*
dtypes
	2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
ĺ
save_1/RestoreV2/tensor_namesConst*
valueBBglobal_stepBhidden1/biasesBhidden1/weightsBhidden2/biasesBhidden2/weightsBsoftmax_linear/biasesBsoftmax_linear/weights*
dtype0*
_output_shapes
:
v
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*!
valueBB B B B B B B 
ś
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
	2*0
_output_shapes
:::::::
 
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
Ż
save_1/Assign_1Assignhidden1/biasessave_1/RestoreV2:1*!
_class
loc:@hidden1/biases*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ś
save_1/Assign_2Assignhidden1/weightssave_1/RestoreV2:2* 
_output_shapes
:
*
use_locking(*
T0*"
_class
loc:@hidden1/weights*
validate_shape(
Ž
save_1/Assign_3Assignhidden2/biasessave_1/RestoreV2:3*
T0*!
_class
loc:@hidden2/biases*
validate_shape(*
_output_shapes
: *
use_locking(
ľ
save_1/Assign_4Assignhidden2/weightssave_1/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@hidden2/weights*
validate_shape(*
_output_shapes
:	 
ź
save_1/Assign_5Assignsoftmax_linear/biasessave_1/RestoreV2:5*
T0*(
_class
loc:@softmax_linear/biases*
validate_shape(*
_output_shapes
:
*
use_locking(
Â
save_1/Assign_6Assignsoftmax_linear/weightssave_1/RestoreV2:6*)
_class
loc:@softmax_linear/weights*
validate_shape(*
_output_shapes

: 
*
use_locking(*
T0

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ť
	variables­Ş
_
hidden1/weights:0hidden1/weights/Assignhidden1/weights/read:02hidden1/truncated_normal:0
Q
hidden1/biases:0hidden1/biases/Assignhidden1/biases/read:02hidden1/zeros:0
_
hidden2/weights:0hidden2/weights/Assignhidden2/weights/read:02hidden2/truncated_normal:0
Q
hidden2/biases:0hidden2/biases/Assignhidden2/biases/read:02hidden2/zeros:0
{
softmax_linear/weights:0softmax_linear/weights/Assignsoftmax_linear/weights/read:02!softmax_linear/truncated_normal:0
m
softmax_linear/biases:0softmax_linear/biases/Assignsoftmax_linear/biases/read:02softmax_linear/zeros:0
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0"7
losses-
+
)sparse_softmax_cross_entropy_loss/value:0"
train_op

GradientDescent"á
cond_contextĐÍ
é
Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/cond_textMsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_t:0 *ö
	ToInt64:0
Tsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Squeeze/Switch:1
Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Squeeze:0
Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0
Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_t:0 
Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_t:0Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_t:0
Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0a
	ToInt64:0Tsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Squeeze/Switch:1
Ţ
Osparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/cond_text_1Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_f:0*ë
	ToInt64:0
Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Switch_1:0
Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Switch_1:1
Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0
Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_f:0
Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0Msparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/pred_id:0 
Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_f:0Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/switch_f:0[
	ToInt64:0Nsparse_softmax_cross_entropy_loss/remove_squeezable_dimensions/cond/Switch_1:0"
	summaries


loss:0"ď
trainable_variables×Ô
_
hidden1/weights:0hidden1/weights/Assignhidden1/weights/read:02hidden1/truncated_normal:0
Q
hidden1/biases:0hidden1/biases/Assignhidden1/biases/read:02hidden1/zeros:0
_
hidden2/weights:0hidden2/weights/Assignhidden2/weights/read:02hidden2/truncated_normal:0
Q
hidden2/biases:0hidden2/biases/Assignhidden2/biases/read:02hidden2/zeros:0
{
softmax_linear/weights:0softmax_linear/weights/Assignsoftmax_linear/weights/read:02!softmax_linear/truncated_normal:0
m
softmax_linear/biases:0softmax_linear/biases/Assignsoftmax_linear/biases/read:02softmax_linear/zeros:0*
serving_default}
+
in%
Placeholder:0˙˙˙˙˙˙˙˙˙2
out+
softmax_linear/add:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict