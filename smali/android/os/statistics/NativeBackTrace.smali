.class Landroid/os/statistics/NativeBackTrace;
.super Ljava/lang/Object;
.source "NativeBackTrace.java"


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    .line 10
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeResolve(J)[Ljava/lang/String;
.end method

.method private static native nativeUpdateBacktraceMap()I
.end method

.method public static resolve(Landroid/os/statistics/NativeBackTrace;)[Ljava/lang/String;
    .locals 1
    .param p0, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/os/statistics/NativeBackTrace;->resolve()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateBacktraceMap()I
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->nativeUpdateBacktraceMap()I

    move-result v0

    .line 49
    .local v0, "vmLibSize":I
    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 22
    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/statistics/NativeBackTrace;->nativeDispose(J)V

    .line 23
    iput-wide v2, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    .line 20
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/os/statistics/NativeBackTrace;->dispose()V

    .line 17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    return-void
.end method

.method public resolve()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0

    .line 31
    :cond_0
    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/statistics/NativeBackTrace;->nativeResolve(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
