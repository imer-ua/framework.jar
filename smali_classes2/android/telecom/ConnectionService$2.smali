.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 287
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 289
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;)V

    goto :goto_0

    .line 296
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_0

    .line 299
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 302
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 303
    .local v3, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 304
    .local v4, "id":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 305
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v6, 0x1

    .line 306
    .local v6, "isIncoming":Z
    :goto_1
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v7, 0x1

    .line 307
    .local v7, "isUnknown":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    const-string/jumbo v1, "Enqueueing pre-init request %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v2, v18

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v18

    new-instance v1, Landroid/telecom/ConnectionService$2$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_3
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 305
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "isIncoming":Z
    goto :goto_1

    .line 306
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isUnknown":Z
    goto :goto_2

    .line 321
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static/range {v2 .. v7}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 328
    .end local v3    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :catchall_0
    move-exception v1

    .line 329
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 328
    throw v1

    .line 334
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 342
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 343
    .local v10, "callId":Ljava/lang/String;
    iget v0, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v17, v0

    .line 344
    .local v17, "videoState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move/from16 v0, v17

    invoke-static {v1, v10, v0}, Landroid/telecom/ConnectionService;->-wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 345
    .end local v10    # "callId":Ljava/lang/String;
    .end local v17    # "videoState":I
    :catchall_1
    move-exception v1

    .line 346
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 345
    throw v1

    .line 351
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 356
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v18, v0

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/telecom/ConnectionService;->-wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 358
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 357
    :catchall_2
    move-exception v1

    .line 358
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 357
    throw v1

    .line 363
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap26(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 377
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 378
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/CallAudioState;

    .line 379
    .local v9, "audioState":Landroid/telecom/CallAudioState;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v2, Landroid/telecom/CallAudioState;

    invoke-direct {v2, v9}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v1, v10, v2}, Landroid/telecom/ConnectionService;->-wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 381
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 380
    .end local v9    # "audioState":Landroid/telecom/CallAudioState;
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_3
    move-exception v1

    .line 381
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 380
    throw v1

    .line 386
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v2, v1, v0}, Landroid/telecom/ConnectionService;->-wrap16(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 389
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 394
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 395
    .local v11, "callId1":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 396
    .local v12, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v11, v12}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 398
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 397
    .end local v11    # "callId1":Ljava/lang/String;
    .end local v12    # "callId2":Ljava/lang/String;
    :catchall_4
    move-exception v1

    .line 398
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 397
    throw v1

    .line 403
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap23(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 408
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 409
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v15, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 410
    .local v15, "participant":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v10, v15}, Landroid/telecom/ConnectionService;->-wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 412
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 411
    .end local v10    # "callId":Ljava/lang/String;
    .end local v15    # "participant":Ljava/lang/String;
    :catchall_5
    move-exception v1

    .line 412
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 411
    throw v1

    .line 417
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 425
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 426
    .restart local v10    # "callId":Ljava/lang/String;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/16 v16, 0x1

    .line 427
    .local v16, "proceed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move/from16 v0, v16

    invoke-static {v1, v10, v0}, Landroid/telecom/ConnectionService;->-wrap15(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 429
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 426
    .end local v16    # "proceed":Z
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "proceed":Z
    goto :goto_4

    .line 428
    .end local v10    # "callId":Ljava/lang/String;
    .end local v16    # "proceed":Z
    :catchall_6
    move-exception v1

    .line 429
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 428
    throw v1

    .line 434
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 440
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 441
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v13, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 442
    .local v13, "event":Ljava/lang/String;
    iget-object v14, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v14, Landroid/os/Bundle;

    .line 443
    .local v14, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v10, v13, v14}, Landroid/telecom/ConnectionService;->-wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 445
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 444
    .end local v10    # "callId":Ljava/lang/String;
    .end local v13    # "event":Ljava/lang/String;
    .end local v14    # "extras":Landroid/os/Bundle;
    :catchall_7
    move-exception v1

    .line 445
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 444
    throw v1

    .line 450
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 452
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 453
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v14, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v14, Landroid/os/Bundle;

    .line 454
    .restart local v14    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v10, v14}, Landroid/telecom/ConnectionService;->-wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 456
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 455
    .end local v10    # "callId":Ljava/lang/String;
    .end local v14    # "extras":Landroid/os/Bundle;
    :catchall_8
    move-exception v1

    .line 456
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 455
    throw v1

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_15
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_13
        :pswitch_14
        :pswitch_8
        :pswitch_a
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method
