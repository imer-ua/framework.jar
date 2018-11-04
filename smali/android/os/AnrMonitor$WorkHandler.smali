.class final Landroid/os/AnrMonitor$WorkHandler;
.super Landroid/os/Handler;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkHandler"
.end annotation


# static fields
.field static final MONITOR_EXECUTION_TIMEOUT_MSG:I = 0x1

.field static final REPORT_RECORDS:I = 0x2


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 688
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 694
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 696
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 697
    .local v1, "data":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/AnrMonitor;->-wrap0()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/os/AnrMonitor;->isSystemServer()Z

    move-result v8

    if-nez v8, :cond_0

    .line 698
    const-string/jumbo v8, "monitor_msg"

    const-string/jumbo v9, "no monitor message"

    invoke-virtual {v1, v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "monitorMsg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 701
    .local v4, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "dump_service"

    const-string/jumbo v9, "activity"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 704
    .local v0, "args":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 705
    .local v5, "opt1":Lorg/json/JSONObject;
    const-string/jumbo v8, "opt"

    const-string/jumbo v9, "dump-app-trace"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 707
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 708
    .local v6, "opt2":Lorg/json/JSONObject;
    const-string/jumbo v8, "opt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 709
    invoke-static {}, Landroid/os/AnrMonitor;->currentProcessName()Ljava/lang/String;

    move-result-object v10

    .line 708
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 709
    const-string/jumbo v10, ","

    .line 708
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 710
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v10

    .line 708
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 710
    const-string/jumbo v10, ","

    .line 708
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 711
    const-string/jumbo v10, "Event Time : "

    .line 708
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v10

    .line 708
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 711
    const-string/jumbo v10, "\n"

    .line 708
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 713
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 714
    const-string/jumbo v8, "args"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v8

    .line 716
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    .line 715
    invoke-virtual {v8, v10, v9}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 717
    .end local v0    # "args":Lorg/json/JSONArray;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "opt1":Lorg/json/JSONObject;
    .end local v6    # "opt2":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 718
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 724
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "monitorMsg":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 725
    .local v7, "reportContent":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Landroid/os/AnrMonitor;->-wrap0()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 726
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v8

    .line 727
    const/4 v9, 0x3

    .line 726
    invoke-virtual {v8, v9, v7}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 729
    .end local v7    # "reportContent":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 730
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "AnrMonitor"

    const-string/jumbo v9, "report record error."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
