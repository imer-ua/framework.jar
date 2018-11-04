.class public Landroid/os/statistics/PerfEventFactory;
.super Ljava/lang/Object;
.source "PerfEventFactory.java"


# static fields
.field private static final MACRO_EVENT_TYPE_INDEX_OFFSET:I = -0xfff3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPerfEvent(I)Landroid/os/statistics/PerfEvent;
    .locals 3
    .param p0, "eventType"    # I

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    const/high16 v2, 0x10000

    if-ge p0, v2, :cond_0

    move v0, p0

    .line 39
    .local v0, "eventTypeIndex":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 98
    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    :goto_1
    :pswitch_0
    return-object v1

    .line 38
    .end local v0    # "eventTypeIndex":I
    .restart local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    :cond_0
    const v2, -0xfff3

    add-int v0, p0, v2

    goto :goto_0

    .line 41
    .restart local v0    # "eventTypeIndex":I
    :pswitch_1
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;-><init>()V

    .line 42
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 44
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_2
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;-><init>()V

    .line 45
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 47
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_3
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;-><init>()V

    .line 48
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 50
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_4
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;-><init>()V

    .line 51
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 53
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_5
    new-instance v1, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;-><init>()V

    .line 54
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 56
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_6
    new-instance v1, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;-><init>()V

    .line 57
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 59
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_7
    new-instance v1, Landroid/os/statistics/PerfTracer$SingleTracePoint;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/PerfTracer$SingleTracePoint;-><init>()V

    .line 60
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 62
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_8
    new-instance v1, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;-><init>()V

    .line 63
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 65
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_9
    new-instance v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;-><init>()V

    .line 66
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 68
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_a
    new-instance v1, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;-><init>()V

    .line 69
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 71
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_b
    new-instance v1, Landroid/os/statistics/SingleJniMethod;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/SingleJniMethod;-><init>()V

    .line 72
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 74
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_c
    new-instance v1, Landroid/os/statistics/LooperOnce;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/LooperOnce;-><init>()V

    .line 75
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 77
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_d
    new-instance v1, Landroid/os/statistics/LooperCheckPoint;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    .line 78
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 81
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_e
    new-instance v1, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    .line 82
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 84
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_f
    new-instance v1, Landroid/os/statistics/SingleJankRecord;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/SingleJankRecord;-><init>()V

    .line 85
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 87
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_10
    new-instance v1, Landroid/os/statistics/BinderSuperviser$BinderStarvation;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/BinderSuperviser$BinderStarvation;-><init>()V

    .line 88
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 90
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_11
    new-instance v1, Landroid/os/statistics/E2EScenarioOnce;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/E2EScenarioOnce;-><init>()V

    .line 91
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 93
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    :pswitch_12
    new-instance v1, Landroid/os/statistics/MemorySlowpath;

    .end local v1    # "perfEvent":Landroid/os/statistics/PerfEvent;
    invoke-direct {v1}, Landroid/os/statistics/MemorySlowpath;-><init>()V

    .line 94
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static createPerfEvent(IJLandroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)Landroid/os/statistics/PerfEvent;
    .locals 7
    .param p0, "eventType"    # I
    .param p1, "eventSeq"    # J
    .param p3, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p4, "javaBackTrace"    # Ljava/lang/Object;
    .param p5, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v1

    .line 29
    .local v1, "perfEvent":Landroid/os/statistics/PerfEvent;
    if-eqz v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 30
    invoke-virtual/range {v1 .. v6}, Landroid/os/statistics/PerfEvent;->fillIn(JLandroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V

    .line 32
    :cond_0
    return-object v1
.end method
