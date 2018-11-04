.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2913
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2914
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2915
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2913
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_0

    .line 2921
    const-string/jumbo v24, "MediaPlayer"

    const-string/jumbo v25, "mediaplayer went away with unhandled events"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    return-void

    .line 2924
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 3099
    const-string/jumbo v24, "MediaPlayer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown message type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    return-void

    .line 2927
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v15

    .line 2937
    .local v15, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v15, :cond_1

    .line 2938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 2939
    :cond_1
    return-void

    .line 2928
    .end local v15    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :catch_0
    move-exception v8

    .line 2933
    .local v8, "e":Ljava/lang/RuntimeException;
    const/16 v24, 0x64

    const/16 v25, 0x1

    const/16 v26, -0x3f2

    const/16 v27, 0x0

    .line 2932
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2934
    .local v10, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2943
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "msg2":Landroid/os/Message;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v12

    .line 2944
    .local v12, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v12, :cond_2

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2947
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    .line 2948
    return-void

    .line 2952
    .end local v12    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v23

    .line 2953
    .local v23, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_3

    .line 2954
    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .line 2919
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_3
    :goto_1
    :sswitch_3
    return-void

    .line 2962
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v23

    .line 2963
    .restart local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_3

    .line 2964
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/16 v24, 0x1

    :goto_2
    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    goto :goto_1

    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    .line 2970
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v11

    .line 2971
    .local v11, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v11, :cond_5

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v11, v0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 2973
    :cond_5
    return-void

    .line 2976
    .end local v11    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v16

    .line 2977
    .local v16, "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    if-eqz v16, :cond_6

    .line 2978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 2984
    .end local v16    # "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    :cond_6
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v23

    .line 2985
    .restart local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_7

    .line 2986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 2989
    :cond_7
    return-void

    .line 2992
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v20

    .line 2993
    .local v20, "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    if-eqz v20, :cond_8

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    .line 2994
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 2997
    :cond_8
    return-void

    .line 3000
    .end local v20    # "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    :sswitch_9
    const-string/jumbo v24, "MediaPlayer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    const/4 v9, 0x0

    .line 3002
    .local v9, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v13

    .line 3003
    .local v13, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-eqz v13, :cond_9

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v13, v0, v1, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v9

    .line 3007
    .end local v9    # "error_was_handled":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v12

    .line 3008
    .restart local v12    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v12, :cond_a

    if-eqz v9, :cond_b

    .line 3012
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    .line 3013
    return-void

    .line 3009
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_3

    .line 3016
    .end local v12    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .end local v13    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_1

    .line 3046
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v14

    .line 3047
    .local v14, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v14, :cond_d

    .line 3048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v14, v0, v1, v2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 3051
    :cond_d
    return-void

    .line 3018
    .end local v14    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :sswitch_b
    const-string/jumbo v24, "MediaPlayer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Info ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3022
    :sswitch_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3031
    :goto_5
    :sswitch_d
    const/16 v24, 0x322

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v24

    if-eqz v24, :cond_c

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_4

    .line 3023
    :catch_1
    move-exception v8

    .line 3025
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    const/16 v24, 0x64

    const/16 v25, 0x1

    const/16 v26, -0x3f2

    const/16 v27, 0x0

    .line 3024
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 3026
    .restart local v10    # "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 3039
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "msg2":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v23

    .line 3040
    .restart local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_c

    .line 3041
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x2bd

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    const/16 v24, 0x1

    :goto_6
    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_4

    :cond_e
    const/16 v24, 0x0

    goto :goto_6

    .line 3053
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v19

    .line 3054
    .local v19, "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    if-nez v19, :cond_f

    .line 3055
    return-void

    .line 3056
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-nez v24, :cond_11

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 3066
    :cond_10
    :goto_7
    return-void

    .line 3059
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 3060
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Parcel;

    .line 3061
    .local v21, "parcel":Landroid/os/Parcel;
    new-instance v22, Landroid/media/TimedText;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3062
    .local v22, "text":Landroid/media/TimedText;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    .line 3063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_7

    .line 3069
    .end local v19    # "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    .end local v21    # "parcel":Landroid/os/Parcel;
    .end local v22    # "text":Landroid/media/TimedText;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v17

    .line 3070
    .local v17, "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    if-nez v17, :cond_12

    .line 3071
    return-void

    .line 3073
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 3074
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Parcel;

    .line 3075
    .restart local v21    # "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/SubtitleData;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3076
    .local v6, "data":Landroid/media/SubtitleData;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v6}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 3079
    .end local v6    # "data":Landroid/media/SubtitleData;
    .end local v21    # "parcel":Landroid/os/Parcel;
    :cond_13
    return-void

    .line 3083
    .end local v17    # "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v18

    .line 3084
    .local v18, "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    if-nez v18, :cond_14

    .line 3085
    return-void

    .line 3087
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 3088
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Parcel;

    .line 3089
    .restart local v21    # "parcel":Landroid/os/Parcel;
    invoke-static/range {v21 .. v21}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v7

    .line 3090
    .local v7, "data":Landroid/media/TimedMetaData;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    .line 3091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v7}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 3093
    .end local v7    # "data":Landroid/media/TimedMetaData;
    .end local v21    # "parcel":Landroid/os/Parcel;
    :cond_15
    return-void

    .line 2924
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
    .end sparse-switch

    .line 3016
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
