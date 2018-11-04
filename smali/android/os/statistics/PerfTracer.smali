.class public Landroid/os/statistics/PerfTracer;
.super Ljava/lang/Object;
.source "PerfTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfTracer$SingleTraceFields;,
        Landroid/os/statistics/PerfTracer$SingleTracePoint;
    }
.end annotation


# static fields
.field private static final DEBUGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "PerfTracer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginTracePoint(Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    const-wide/16 v0, 0x0

    .line 177
    .local v0, "measureBeginTime":J
    invoke-static {p0}, Landroid/os/statistics/PerfTracer;->nativeBeginTracePoint(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 185
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;I)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "thresholdInMillis"    # I

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 189
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;J)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J

    .prologue
    .line 194
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 193
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;JI)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J
    .param p3, "thresholdInMillis"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 197
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J
    .param p3, "objectValue"    # Ljava/lang/Object;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 209
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J
    .param p3, "objectValue"    # Ljava/lang/Object;
    .param p4, "thresholdInMillis"    # I

    .prologue
    .line 214
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    const-wide/16 v0, 0x0

    .line 223
    .local v0, "measureBeginTime":J
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/statistics/PerfTracer;->nativeEndTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 213
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "objectValue"    # Ljava/lang/Object;

    .prologue
    .line 202
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 201
    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "objectValue"    # Ljava/lang/Object;
    .param p2, "thresholdInMillis"    # I

    .prologue
    .line 206
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 205
    return-void
.end method

.method private static native nativeBeginTracePoint(Ljava/lang/String;)V
.end method

.method private static native nativeEndTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V
.end method
