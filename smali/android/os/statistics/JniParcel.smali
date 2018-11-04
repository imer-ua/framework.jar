.class final Landroid/os/statistics/JniParcel;
.super Ljava/lang/Object;
.source "JniParcel.java"


# instance fields
.field private final numbers:[J

.field private numbersCount:I

.field private final objects:[Ljava/lang/Object;

.field private objectsCount:I

.field private readPosOfNumbers:I

.field private readPosOfObjects:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "numbersCapacity"    # I
    .param p2, "objectsCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    .line 19
    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 20
    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 21
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    .line 22
    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 23
    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 17
    return-void
.end method

.method private writeLong1(J)V
    .locals 3
    .param p1, "value1"    # J

    .prologue
    .line 71
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 72
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 74
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 70
    :cond_0
    return-void
.end method

.method private writeLong2(JJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J

    .prologue
    .line 80
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 81
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 83
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 84
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 79
    :cond_0
    return-void
.end method

.method private writeLong3(JJJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J

    .prologue
    .line 90
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 91
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 93
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 94
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 95
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 89
    :cond_0
    return-void
.end method

.method private writeLong4(JJJJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J

    .prologue
    .line 103
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 104
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 106
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 107
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 108
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 109
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 102
    :cond_0
    return-void
.end method

.method private writeLong5(JJJJJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J

    .prologue
    .line 117
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 118
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 120
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 121
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 122
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 123
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    .line 124
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 116
    :cond_0
    return-void
.end method

.method private writeLong6(JJJJJJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J

    .prologue
    .line 132
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 133
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 135
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 136
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 137
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 138
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    .line 139
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    .line 140
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 131
    :cond_0
    return-void
.end method

.method private writeLong7(JJJJJJJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J

    .prologue
    .line 149
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 150
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 152
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 153
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 154
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 155
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    .line 156
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    .line 157
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x6

    aput-wide p13, v1, v2

    .line 158
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 148
    :cond_0
    return-void
.end method

.method private writeLong8(JJJJJJJJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J
    .param p15, "value8"    # J

    .prologue
    .line 167
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 168
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 170
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 171
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 172
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 173
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    .line 174
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    .line 175
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x6

    aput-wide p13, v1, v2

    .line 176
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x7

    aput-wide p15, v1, v2

    .line 177
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 166
    :cond_0
    return-void
.end method

.method private writeLong9(JJJJJJJJJ)V
    .locals 3
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J
    .param p15, "value8"    # J
    .param p17, "value9"    # J

    .prologue
    .line 186
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 187
    .local v0, "localNumbersCount":I
    add-int/lit8 v1, v0, 0x9

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 189
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 190
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 191
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 192
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    .line 193
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    .line 194
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x6

    aput-wide p13, v1, v2

    .line 195
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x7

    aput-wide p15, v1, v2

    .line 196
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x8

    aput-wide p17, v1, v2

    .line 197
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 185
    :cond_0
    return-void
.end method

.method private writeObject1(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;

    .prologue
    .line 203
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 204
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 205
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 206
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 202
    :cond_0
    return-void
.end method

.method private writeObject2(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 212
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 213
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 215
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 216
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 211
    :cond_0
    return-void
.end method

.method private writeObject3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;

    .prologue
    .line 222
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 223
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 224
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 225
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 226
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 227
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 221
    :cond_0
    return-void
.end method

.method private writeObject4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;

    .prologue
    .line 235
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 236
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 237
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 238
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 239
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 240
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 241
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 234
    :cond_0
    return-void
.end method

.method private writeObject5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;

    .prologue
    .line 249
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 250
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 252
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 253
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 254
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 255
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 256
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 248
    :cond_0
    return-void
.end method

.method private writeObject6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;

    .prologue
    .line 264
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 265
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 266
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 267
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 268
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 269
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 270
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 271
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 272
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 263
    :cond_0
    return-void
.end method

.method private writeObject7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;
    .param p7, "object7"    # Ljava/lang/Object;

    .prologue
    .line 281
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 282
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 284
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 285
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 286
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 287
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 288
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 289
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    .line 290
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 280
    :cond_0
    return-void
.end method

.method private writeObject8(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;
    .param p7, "object7"    # Ljava/lang/Object;
    .param p8, "object8"    # Ljava/lang/Object;

    .prologue
    .line 299
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 300
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 301
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 302
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 303
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 304
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 305
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 306
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 307
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    .line 308
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    .line 309
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 298
    :cond_0
    return-void
.end method

.method private writeObject9(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;
    .param p7, "object7"    # Ljava/lang/Object;
    .param p8, "object8"    # Ljava/lang/Object;
    .param p9, "object9"    # Ljava/lang/Object;

    .prologue
    .line 318
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 319
    .local v0, "localObjectsCount":I
    add-int/lit8 v1, v0, 0x9

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 320
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 321
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 322
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 323
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 324
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 325
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 326
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    .line 327
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    .line 328
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x8

    aput-object p9, v1, v2

    .line 329
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public final readLong()J
    .locals 4

    .prologue
    .line 39
    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 40
    .local v0, "localReadPosOfNumbers":I
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    if-ge v0, v1, :cond_0

    .line 41
    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 42
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 44
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 50
    .local v0, "localReadPosOfObjects":I
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    if-ge v0, v1, :cond_0

    .line 51
    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 52
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 54
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final readString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 60
    .local v0, "localReadPosOfObjects":I
    iget v2, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    if-ge v0, v2, :cond_1

    .line 61
    iget v2, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 62
    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 65
    :cond_1
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public final reset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27
    iput v2, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 28
    iput v2, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 30
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 31
    .local v1, "localObjectsCount":I
    iput v2, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 32
    iput v2, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 34
    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
