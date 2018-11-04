.class Landroid/os/statistics/JavaBackTrace;
.super Ljava/lang/Object;
.source "JavaBackTrace.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeResolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private static native nativeResolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;
.end method

.method public static resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
    .locals 1
    .param p0, "javaBackTrace"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    return-object v0

    .line 11
    :cond_0
    invoke-static {p0}, Landroid/os/statistics/JavaBackTrace;->nativeResolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public static resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 1
    .param p0, "javaBackTrace"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 17
    if-nez p0, :cond_0

    .line 18
    return-object v0

    .line 20
    :cond_0
    invoke-static {p0}, Landroid/os/statistics/JavaBackTrace;->nativeResolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
