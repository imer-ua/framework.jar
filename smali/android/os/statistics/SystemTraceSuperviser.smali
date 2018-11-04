.class public Landroid/os/statistics/SystemTraceSuperviser;
.super Ljava/lang/Object;
.source "SystemTraceSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;,
        Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
    }
.end annotation


# static fields
.field private static final DEBUGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemTraceSuperviser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncBeginSupervisedTrace(JLjava/lang/String;I)V
    .locals 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 251
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    const-wide/16 v0, 0x0

    .line 260
    .local v0, "measureBeginTime":J
    invoke-static {p0, p1, p2, p3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncBeginTrace(JLjava/lang/String;I)V

    .line 250
    return-void
.end method

.method public static asyncBeginTrace(JLjava/lang/String;I)V
    .locals 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 215
    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    const-wide/16 v0, 0x0

    .line 224
    .local v0, "measureBeginTime":J
    invoke-static {p0, p1, p2, p3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncBeginTrace(JLjava/lang/String;I)V

    .line 214
    return-void
.end method

.method public static asyncEndSupervisedTrace(JLjava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 269
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    const-wide/16 v0, 0x0

    .line 278
    .local v0, "measureBeginTime":J
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncEndTrace(JLjava/lang/String;ILjava/lang/Object;)V

    .line 268
    return-void
.end method

.method public static asyncEndTrace(JLjava/lang/String;I)V
    .locals 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 233
    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    const-wide/16 v0, 0x0

    .line 242
    .local v0, "measureBeginTime":J
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncEndTrace(JLjava/lang/String;ILjava/lang/Object;)V

    .line 232
    return-void
.end method

.method public static beginSupervisedTrace(JLjava/lang/String;)V
    .locals 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    const-wide/16 v0, 0x0

    .line 188
    .local v0, "measureBeginTime":J
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/os/statistics/SystemTraceSuperviser;->nativeBeginTrace(JLjava/lang/String;)V

    .line 178
    return-void
.end method

.method public static beginTrace(JLjava/lang/String;)V
    .locals 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    const-wide/16 v0, 0x0

    .line 152
    .local v0, "measureBeginTime":J
    invoke-static {p0, p1, p2}, Landroid/os/statistics/SystemTraceSuperviser;->nativeBeginTrace(JLjava/lang/String;)V

    .line 142
    return-void
.end method

.method public static endSupervisedTrace(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "measureBeginTime":J
    invoke-static {p0, p1, p2, p3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeEndTrace(JLjava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public static endTrace(J)V
    .locals 4
    .param p0, "traceTag"    # J

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    const-wide/16 v0, 0x0

    .line 170
    .local v0, "measureBeginTime":J
    invoke-static {p0, p1, v3, v3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeEndTrace(JLjava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method private static isAllowSystemTraceSupervision()Z
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInHeavyMode()Z

    move-result v0

    return v0
.end method

.method private static native nativeAsyncBeginTrace(JLjava/lang/String;I)V
.end method

.method private static native nativeAsyncEndTrace(JLjava/lang/String;ILjava/lang/Object;)V
.end method

.method private static native nativeBeginTrace(JLjava/lang/String;)V
.end method

.method private static native nativeEndTrace(JLjava/lang/String;Ljava/lang/Object;)V
.end method
