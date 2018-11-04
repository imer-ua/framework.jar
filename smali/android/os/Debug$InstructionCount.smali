.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NUM_INSTR:I


# instance fields
.field private mCounts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1904
    sget v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    add-int/lit8 v0, v0, 0x1

    .line 1903
    sput v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    .line 1902
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    sget v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    .line 1908
    return-void
.end method


# virtual methods
.method public collect()Z
    .locals 2

    .prologue
    .line 1934
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    .line 1935
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    const/4 v1, 0x1

    return v1

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    return v1
.end method

.method public globalMethodInvocations()I
    .locals 3

    .prologue
    .line 1961
    const/4 v0, 0x0

    .line 1963
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_1

    .line 1964
    invoke-static {v1}, Ldalvik/bytecode/OpcodeInfo;->isInvoke(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1965
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1963
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1969
    :cond_1
    return v0
.end method

.method public globalTotal()I
    .locals 3

    .prologue
    .line 1947
    const/4 v0, 0x0

    .line 1949
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_0

    .line 1950
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1949
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1953
    :cond_0
    return v0
.end method

.method public resetAndStart()Z
    .locals 2

    .prologue
    .line 1920
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    .line 1921
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    const/4 v1, 0x1

    return v1

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    return v1
.end method
